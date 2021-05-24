/*-------------------------------------------------------------------------------------------------
 Organization:         :
 Program Name          :
 FPGA Name             :
 Design Name           :
 File Name             : cdc-ip.sv
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

This is a simple clocck domain crossing example using an async FIFO


-------------------------------------------------------------------------------------------------*/
module cdc_ip
#(
  parameter shortint WIDTH=8
 ,parameter shortint DEPTH=16
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

//----------------------------------------------------------------------------------------------------
/* CDC async FIFO
Width  8
Depth 16
*/

async_fifo cdc_fifo
(
// Inputs
  .rst(rst)
 ,.wr_clk(clk_a)
 ,.rd_clk(clk_b)
 ,.din(data_a)
 ,.wr_en(data_valid_a)
 ,.rd_en(rd_en_b)
// Outputs
 ,.dout(data_b)
 ,.full()
 ,.empty(empty)
 ,.valid(data_valid_b)
 ,.underflow()
 ,.prog_full()
 ,.prog_empty()
);

//----------------------------------------------------------------------------------------------------
// Glue logic

 assign rd_en_b=!empty;

//
endmodule : cdc_ip
