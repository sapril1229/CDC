
/*-------------------------------------------------------------------------------------------------
 Organization:         :
 Program Name          :
 FPGA Name             :
 Design Name           :
 File Name             : cdc-noip_tb.sv
 MTS1                  : steve april
 MTS2                  :
 Target Platform       :
 Target Device         : XQZU29DR-FFRF1760-2I RFSOC (example only)
 Language-1            : SystemVerilog
 Language-2            :
 Tool versions         : Xilinx Vivado 2020.2 for synth and simulation
 Development Host      : Windows 10 Professional 64-bit

---------------------------------------------------------------------------------------------------
Description:
This test bench serves as the data and clock generator for CDC examples.

Currently there is only one data packet being sent over and over again to test the integrity of the
CDC data.  This test bench can be expanded to:
  1.  Read in random packets
  2.  Inject errors to test the dut.

  In this example, the clocks are at slightly different frequencies.

-------------------------------------------------------------------------------------------------*/
module cdc_noip_tb;
//
timeunit      1ns;  // #1 = 1 ns
timeprecision 1ps;  // #001 = 1 ps

//-------------------------------------------------------------------------------------------------
//Parameters

  localparam realtime CLK_SPEED_A=0.600;
  localparam realtime CLK_SPEED_B=0.500;
//
  localparam shortint WIDTH=8;         // 8 bit wide data
  localparam shortint DEPTH=16;        // 16 word depth
  localparam shortint PRELOAD=2;       // preload fifo

//
  localparam shortint NUM_PACKETS=1;   // Send this many packets per cycle
  localparam shortint NUM_CYCLES=200;  // Cycle this many times
  localparam shortint IPG=10;          // number of clock cycles between packets
  localparam shortint FRAME_BYTES=42;  // number of bytes in an IPv4 arp request
  localparam shortint CDC_BUFFER=4;    // Depth of CDC buffer in words

// general parameters
  localparam real clock=CLK_SPEED_A*10;
  localparam shortint PKT_TERM=43;
  localparam shortint IP_SEL=0;        // Select 1 for ip fifo, 0 for non-ip fifo

//-------------------------------------------------------------------------------------------------
// Signals
  bit                clk_a; // 200 MHz independent clock
  bit                clk_b; // 200 MHz  independent clock
  int                i=0,j=0;
  int                syncd_input_packet;
  logic [15:0]       sim_test=0, tbseq=0;
  logic              rst=1; // reset, active high
  logic              data_valid_a=0,data_valid_b;
  logic [7:0]        ack_count=0;
  logic [WIDTH-1:0]  data_a=0;
  logic [WIDTH-1:0]  data_b;
  logic [15:0]       cycle_count=0,ipg_cnt=0;
  logic [3:0]        packet_cnt=0;
  logic              send_packets=0,packets_sent;
  logic [47:0]       one_cr='0, one_cra=0;

//-------------------------------------------------------------------------------------------------
// Array declarations
  logic [7:0] test_pkt [1:FRAME_BYTES]='{default:0};  // packed array

//-------------------------------------------------------------------------------------------------
// various clock out duration macros for simulation

`define CLK (clock);
`define CLK5 (5*clock);
`define CLK10 (10*clock);
`define CLK20 (20*clock);
`define CLK50 (50*clock);
`define CLK100 (100*clock);
`define CLK200 (200*clock);
`define CLK500 (500*clock);
`define CLK1000 (1000*clock);

//-------------------------------------------------------------------------------------------------
// Instantiate device under test

cdc_noip
#(
  .WIDTH(WIDTH)
 ,.DEPTH(DEPTH)
 ,.PRELOAD(PRELOAD)
 ,.IP_SEL(IP_SEL)
)
dut
(
  .rst (rst)
// ingress signals
 ,.clk_a (clk_a)
 ,.data_valid_a (data_valid_a)
 ,.data_a (data_a)

// egress signals
 ,.clk_b (clk_b)
 ,.data_valid_b (data_valid_b)
 ,.data_b (data_b)
);

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

initial
begin
#`CLK
  sim_test=000000;   // Check clock alignment
  rst=1;
#`CLK
  sim_test=000010;
#`CLK
  sim_test=000020;
#`CLK20
  sim_test=000030;
  rst=0;
#100ns;               // async reset
  sim_test=000040;
  rst=1;
#`CLK20
#20ns
  sim_test=000050;
  rst=0;
#`CLK20
  sim_test=000060;
  syncd_input_packet=$fopen("../../../../../verify/output/syncd_inpt_pkt.hex","w");
#`CLK20
  sim_test=000070;
  $display ("(000030)***** Drive rst low to deassert");
  rst<=0;
#`CLK10
    sim_test=000080;
    $display ("(000080)***** Open test vector file and save to array");
      $readmemh("../../../../../verify/test_vectors/test_data1.hex", test_pkt);
      for (i=1; i<=FRAME_BYTES; i++)
        begin
          $display("\t test_pkt[ %0d] = %h",i,test_pkt[i]);
        end
#`CLK
    sim_test=000090;
    $display ("(000090)***** %d bytes written to memory", FRAME_BYTES);
#`CLK10
    sim_test=000100;
    $display ("(000100)***** Send packets into the DUT");
      send_packets=1;
        wait (packets_sent);
          $display ("(000110)***** Number of packets sent per cycle: %d", NUM_PACKETS);
          $display ("(000120)***** Number of cycles:                 %d", NUM_CYCLES);
          $display ("(000130)***** Number of total packets:          %d", NUM_CYCLES*NUM_PACKETS);
 #`CLK
      send_packets=0;

#`CLK1000

  sim_test=999999;
  $display ("(999999)*****Simulation done");
  $display ("******** PLEASE WAIT WHILE ERRORS ARE CHECKED  *******");
  $display ("******** THIS CAN TAKE SEVERAL SECONDS *******");
  $fclose(syncd_input_packet);
  $stop;
end

//-------------------------------------------------------------------------------------------------
// Packet Generator FSM

enum
{
   PKT_IDLE_S
  ,PKT_SEND_STAT_S
  ,PKT_SEND_PAYLOAD_S
  ,PKT_IPG_S
}  pkt_state;
//
always_ff @(posedge clk_a or posedge rst)
  begin
    if(rst)
      begin
        tbseq<=0;
        cycle_count<=0;
        data_valid_a<=0;
        data_a<=0;
        ipg_cnt<=0;
        j<=0;
        packet_cnt<=0;
        packets_sent<=0;
        pkt_state<=PKT_IDLE_S;
      end else
//
  unique case (pkt_state)
    PKT_IDLE_S          : if (!packets_sent&&send_packets)
                            begin
                              tbseq<=1000;
                              data_valid_a<=1;
                              data_a<=test_pkt[1];
                              j=j+1;
                              pkt_state<=PKT_SEND_PAYLOAD_S;
                            end else
                            begin
                              tbseq<=1010;
                              cycle_count<=0;
                              data_valid_a<=0;
                              j<=0;
                              pkt_state<=PKT_IDLE_S;
                            end
//
    PKT_SEND_PAYLOAD_S  : if (data_valid_a)
                            begin
                            if (packet_cnt<NUM_PACKETS)
                              begin
                              if(j<=FRAME_BYTES-1)
                                begin
                                  tbseq<=1100;
                                  data_a<=test_pkt[j+1];
                                  j<=j+1;
                                  pkt_state<=PKT_SEND_PAYLOAD_S;
                                end else
                                begin
                                  tbseq<=1110;
                                  data_valid_a<=0;
                                  j<=0;
                                  $display ("(||||||)***** packet,cycle:%d,%d", packet_cnt+1, cycle_count+1);
                                  pkt_state<=PKT_SEND_STAT_S;
                                end
                              end else
                              begin
                                tbseq<=1120;
                                cycle_count<=cycle_count+1;
                                data_a<=test_pkt[j+1];
                                j<=j+1;
                                packet_cnt<=0;
                                pkt_state<=PKT_SEND_PAYLOAD_S;
                              end
                            end else
                            begin
                              tbseq<=1160;
                              pkt_state<=PKT_SEND_PAYLOAD_S;
                            end
//
    PKT_SEND_STAT_S     : if (cycle_count>=NUM_CYCLES-1)
                            begin
                              tbseq<=1200;
                              packets_sent<=1;
                              pkt_state<=PKT_IDLE_S;
                            end else
                            begin
                              tbseq<=1210;
                              pkt_state<=PKT_IPG_S;
                            end
//
    PKT_IPG_S           : if (ipg_cnt==IPG)
                            begin
                              tbseq<=2000;
                              ipg_cnt<=0;
                              packet_cnt<=packet_cnt+1;
                              pkt_state<=PKT_IDLE_S;
                            end else
                            begin
                              tbseq<=2100;
                              ipg_cnt<=ipg_cnt+1;
                              pkt_state<=PKT_IPG_S;
                            end
//
   default              : begin
                            tbseq<=9999;
                            data_valid_a<=0;
                            pkt_state<=PKT_IDLE_S;
                          end

  endcase // pkt_state
end

//-------------------------------------------------------------------------------------------------
// Check the synchronized rx data over a long period of time to check for corrupted data

  always_ff @(posedge clk_b or posedge rst)
    begin
    if (rst)
      begin
        one_cr<=0;
      end else
      if(data_valid_b)
        begin
        if (one_cr<PKT_TERM-2)
          begin
            $fwrite(syncd_input_packet,"%h",data_b);
            one_cr<=one_cr+1;
          end else
          begin
             $fwrite(syncd_input_packet,"%h\n",data_b);
            one_cr<=0;
          end
        end
    end

//-------------------------------------------------------------------------------------------------
// Clock Generation
 initial
    begin
    #1.2ns;
    $display ("***** 200 MHz clock A started");
     forever
       begin
         #CLK_SPEED_A clk_a=1'b0;
         #CLK_SPEED_A clk_a=1'b0;
         #CLK_SPEED_A clk_a=1'b0;
         #CLK_SPEED_A clk_a=1'b0;
         #CLK_SPEED_A clk_a=1'b0;
         #CLK_SPEED_A clk_a=1'b0;
         #CLK_SPEED_A clk_a=1'b0;
         #CLK_SPEED_A clk_a=1'b1;
         #CLK_SPEED_A clk_a=1'b1;
         #CLK_SPEED_A clk_a=1'b1;
       end
    end

 initial
    begin
    #1ns;
      $display ("***** 200 MHz clock B started");
     forever
       begin
         #CLK_SPEED_B clk_b=1'b0;
         #CLK_SPEED_B clk_b=1'b0;
         #CLK_SPEED_B clk_b=1'b0;
         #CLK_SPEED_B clk_b=1'b0;
         #CLK_SPEED_B clk_b=1'b1;
         #CLK_SPEED_B clk_b=1'b1;
         #CLK_SPEED_B clk_b=1'b1;
         #CLK_SPEED_B clk_b=1'b1;
         #CLK_SPEED_B clk_b=1'b1;
         #CLK_SPEED_B clk_b=1'b1;
       end
    end

//-------------------------------------------------------------------------------------------------
// Glue logic

//
endmodule : cdc_noip_tb