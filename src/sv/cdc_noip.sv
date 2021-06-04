/*-------------------------------------------------------------------------------------------------
 Organization:         :
 Program Name          :
 FPGA Name             :
 Design Name           :
 File Name             : cdc-noip.sv
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

This is a simple clock domain crossing example using an firmware to implement a cdc fifo.
It compares an async fifo built with Fifo generator 13.2 to the custom firmware for reference.

-------------------------------------------------------------------------------------------------*/
module cdc_noip
#(
  parameter shortint WIDTH=8
 ,parameter shortint DEPTH=16
 ,parameter shortint PRELOAD=6
 ,parameter shortint IP_SEL=1
)
(
  input  logic              rst          // asynchronous active high reset
// ingress signals
 ,input  logic              clk_a
 ,input  logic              data_valid_a
 ,input  logic [WIDTH-1:0]  data_a

// egress signals
 ,input  logic              clk_b         // 125 MHz +/- 100 ppm
 ,output logic              data_valid_b
 ,output logic [WIDTH-1:0]  data_b
);


//-------------------------------------------------------------------------------------------------
// Signals
logic [WIDTH-1:0] data_b1,data_b2;
logic             data_valid_b1,data_valid_b2;

//----------------------------------------------------------------------------------------------------
/* CDC async FIFO
Width  8
Depth 16
Sync Stages 2
*/
async_fifo cdc_fifo1
(
// Inputs
  .rst(rst)
 ,.wr_clk(clk_a)
 ,.rd_clk(clk_b)
 ,.din(data_a)
 ,.wr_en(data_valid_a)
 ,.rd_en(rd_en_b)
// Outputs
 ,.dout(data_b1)
 ,.full()
 ,.empty(empty)
 ,.valid(data_valid_b1)
 ,.underflow()
);

//----------------------------------------------------------------------------------------------------
/* CDC async FIFO non-IP version
Width  8
Depth 16
Preload 6
*/
cdc_fifo
#(
  .WIDTH(WIDTH)
 ,.DEPTH(DEPTH)
 ,.PRELOAD(PRELOAD)
)
cdc_fifo2
(
// Inputs
  .rst(rst)
 ,.clk_a(clk_a)
 ,.clk_b(clk_b)
 ,.data_a(data_a)
 ,.valid_a(data_valid_a)
// Outputs
 ,.valid_b(data_valid_b2)
 ,.data_b(data_b2)
 ,.full()
 ,.empty()
 ,.underflow()
);

//----------------------------------------------------------------------------------------------------
// Glue logic

 assign rd_en_b=!empty;
 assign data_valid_b=IP_SEL?data_valid_b1:data_valid_b2;
 assign data_b=IP_SEL?data_b1:data_b2;

//
endmodule : cdc_noip
