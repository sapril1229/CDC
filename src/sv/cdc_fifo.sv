/*-------------------------------------------------------------------------------------------------
 Organization:         :
 Program Name          :
 FPGA Name             :
 Design Name           :
 File Name             : cdc_fifo.sv
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

This is a cdc fifo implemented in firmware (no IP)

-------------------------------------------------------------------------------------------------*/
module cdc_fifo
#(
  parameter shortint WIDTH=8
 ,parameter shortint DEPTH=16
 ,parameter shortint PRELOAD=2    // Number of words to preload
)
(
  input  logic              rst          // asynchronous active high reset
// ingress signals
 ,input  logic              clk_a
 ,input  logic              clk_b
 ,input  logic              valid_a
 ,input  logic [WIDTH-1:0]  data_a
// egress signals
 ,output logic              valid_b
 ,output logic [WIDTH-1:0]  data_b
 ,output logic              full
 ,output logic              empty
 ,output logic              underflow
);

//-------------------------------------------------------------------------------------------------
// array declarations
  logic [7:0] cdc_buffer[0:DEPTH-1];    // unpacked array for fifo buffer

//-------------------------------------------------------------------------------------------------
// signals
  logic         valid_ad,rst_b0,rst_b1;
  logic [3:0]   valid_ar;
  logic [7:0]   bc,bc_gray,bc_gray_r0,bc_gray_r1;
  logic [7:0]   bi,f2c;
  logic [15:0]  f1seq,f2seq;

//-------------------------------------------------------------------------------------------------
/* FSM 1:  This is the ingress side of the FIFO. the buffer counter bc, is converted to gray code
           to be used on the other side of the clock boundary.  This FSM will overwrite memory
           locations so it's the responsibility of the egress side to read it out before it is
           overwritten.  The egress side must also employ the proper inter-packet gap, if needed
           to prevent over flow in the case where clka>clkb
*/
enum
{
  F1_IDLE_S
 ,F1_WRITE_S
} f1_state;
//
  always_ff @(posedge clk_a or posedge rst)
  begin
    if (rst)
      begin
        f1seq<=0;
        bc<=0;                                     // buffer count
        bc_gray<=0;                                // gray coded buffer count
        cdc_buffer<='{default:0};                  // FIFO memory packed array
        f1_state<=F1_IDLE_S;
      end else
//
    unique case (f1_state)
    F1_IDLE_S      : if (valid_a)                  // valid low means end of transfer
                       begin
                         f1seq<=100;
                         cdc_buffer[bc]<=data_a;   // store data to buffer
                         bc<=bc+1;                 // increment pointer
                         bc_gray=bc^bc[7:1];       // convert pointer to gray code
                         f1_state<=F1_WRITE_S;
                       end else
                       begin
                        f1seq<=150;
                        f1_state<=F1_IDLE_S;
                       end
//
    F1_WRITE_S     : if (valid_a)                  // valid low means end of transfer
                       begin
                       if (bc<DEPTH-1)
                         begin
                           f1seq<=200;
                           cdc_buffer[bc]<=data_a; // store data to buffer
                           bc<=bc+1;               // increment pointer
                           bc_gray=bc^bc[7:1];     // convert pointer to gray code
                           f1_state<=F1_WRITE_S;
                         end else
                         begin
                           f1seq<=250;
                           cdc_buffer[bc]<=data_a;
                           bc<=0;
                           bc_gray=bc^bc[7:1];
                           f1_state<=F1_IDLE_S;
                         end
                       end else
                       begin
                         f1seq<=300;
                         cdc_buffer[bc]<=data_a;
                         bc<=0;
                         bc_gray<=0;
                         f1_state<=F1_IDLE_S;
                       end
//
  default          : begin
                       f1_state<=F1_IDLE_S;
                     end
//
    endcase
  end

//-------------------------------------------------------------------------------------------------
// FSM 2:  Receive side

//Sync reset
  always_ff @(posedge clk_b or posedge rst)
    begin
      if (rst)
        begin
          rst_b0<=1;
          rst_b1<=1;
        end else
        begin
          rst_b0<=rst;
         rst_b1<=rst_b0;
        end
    end

// Synchronize the gray code to the new clock domain
  always_ff @(posedge clk_b or posedge rst_b1)
    begin
    if (rst_b1)
      begin
        bc_gray_r0<=0;
        bc_gray_r1<=0;
      end else
        begin
          bc_gray_r0<=bc_gray;
          bc_gray_r1<=bc_gray_r0;
        end
    end

// Create a delayed version of the ingress valid signal
   generate genvar k;
     for (k=0; k<=3; k=k+1)
       begin : gen_ar
         always_ff @(posedge clk_b or posedge rst_b1)
           begin
             if (rst_b1)
             begin
               valid_ar[k]<=0;
             end else
             if(k==0)
               begin
                 valid_ar[k]<=valid_a;
               end else
               begin
                 valid_ar[k]<=valid_ar[k-1];
               end
           end
       end
   endgenerate

// Convert gray code to binary for receive FSM pointer usage
   generate genvar j;
     for (j=0; j<8; j=j+1)
       begin : gen_bin
         always_ff @(posedge clk_b or posedge rst_b1)
           begin
             if (rst_b1)
             begin
               bi[j]<=0;
             end else
             begin
               bi[j]=^bc_gray_r1[7:j];
             end
           end
       end
   endgenerate

//----------------------------------------------------
enum
{
  F2_IDLE_S
 ,F2_READ_S
 ,F2_EMPTY_S
} f2_state;
//
  always_ff @(posedge clk_b or posedge rst_b1)
  begin
    if (rst_b1)
      begin
        f2seq<=0;
        f2c<=0;
        data_b<=0;
        valid_b<=0;
        empty<=1;
        f2_state<=F2_IDLE_S;
      end else
//
    unique case (f2_state)
    F2_IDLE_S      : if (bi>=PRELOAD&&valid_ad)    // don't start processing until preload is satisfied
                       begin
                         f2seq<=100;
                         data_b<=cdc_buffer[f2c];   // process buffer and then go to read loop
                         valid_b<=1;                // qualify read data
                         f2c<=f2c+1;                // increment pointer
                         empty<=0;
                         f2_state<=F2_READ_S;
                       end else
                       begin
                         f2seq<=111;
                         valid_b<=0;
                         f2c<=0;
                         f2_state<=F2_IDLE_S;
                        end
//
    F2_READ_S      : if (valid_ad)                      // used to terminate the transfer
                       begin
                         if (f2c-bi==0)                 // if buffer is empty wait for it to have some data
                           begin
                             f2seq<=200;
                             valid_b<=0;
                             empty<=1;
                             f2_state<=F2_EMPTY_S;
                           end else
                           if (f2c>=DEPTH-1)              // reached the end of the buffer
                             begin
                               f2seq<=210;
                               valid_b<=1;
                               data_b<=cdc_buffer[f2c];
                               f2c<=0;
                               f2_state<=F2_READ_S;
                             end else
                             if (f2c!=bi)
                               begin
                                 f2seq<=220;
                                 valid_b<=1;
                                 data_b<=cdc_buffer[f2c];
                                 f2c<=f2c+1;
                                 empty<=0;
                                 f2_state<=F2_READ_S;
                               end
                       end else
                       begin
                         f2seq<=230;
                         valid_b<=0;
                         f2c<=0;
                         empty<=1;
                         f2_state<=F2_IDLE_S;
                       end
//
    F2_EMPTY_S     : if (bi>=PRELOAD&&valid_ad)
                       begin
                         f2seq<=300;
                         data_b<=cdc_buffer[f2c];   // process buffer and then go to read loop
                         valid_b<=1;                // qualify read data
                         f2c<=f2c+1;                // increment pointer
                         empty<=0;
                         f2_state<=F2_READ_S;
                       end else                     // check for end of transfer
                       begin
                         f2seq<=320;
                         data_b<=cdc_buffer[f2c];
                         valid_b<=1;
                         f2c<=f2c+1;
                         f2_state<=F2_IDLE_S;
                       end
//
     default       : begin
                       f2_state<=F2_IDLE_S;
                     end
//
     endcase
  end
//-------------------------------------------------------------------------------------------------
// Glue logic
  assign valid_ad=valid_ar[3];

//
endmodule : cdc_fifo