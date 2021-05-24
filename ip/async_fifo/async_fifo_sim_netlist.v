// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun May 23 12:38:15 2021
// Host        : MT-207780 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top async_fifo -prefix
//               async_fifo_ async_fifo_sim_netlist.v
// Design      : async_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xqzu29dr-ffrf1760-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "async_fifo,fifo_generator_v13_2_5,{}" *) (* ORIG_REF_NAME = "xil_defaultlib_async_fifo" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module async_fifo
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    valid,
    underflow);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output valid;
  output underflow;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire underflow;
  wire valid;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "1" *) 
  (* C_HAS_VALID = "1" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "13" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "12" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  async_fifo_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(underflow),
        .valid(valid),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module async_fifo_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module async_fifo_xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module async_fifo_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module async_fifo_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module async_fifo_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module async_fifo_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
SFoQ2tXDMrL2nCJbfpmHXuteJlKaWDWl3o9OY1miFvmYb8EDywmDpLUHQktJ/VoW+17fK5WHgFVI
FZV1B91GDQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
mxGWDRjEAsKmBqldxevT1RKZvqK7vn0KlTODVXNGlRcGf9zOAmj0Z7Ppu79POBDb8oNQyCY+2q1q
BddzhQfh5WLIVX9BNUMIF6M6IF0elM4GMSLHGeYEwqSaMPC+thuR8FGj1J7z6rH+43gDYhtIeyY+
ZuZUz/Pqg8Lu63Xwe+0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HLwPjQzkuqv5FEDBriEJS2DikBeIHB/bWuVWooHY5ChdoHatcmqCHpSvnGxVzLwObZWHFys2nR9y
P3zxywjtgtOWq/n3cYVa5li6eyiUmGXv2OE8nw1nLnAY1kzBvGd6VwQ45t6l4Hx5+oqpIfuU2KI2
7/Qpj2atiTN3Y+q5He/BMXLIxF9vWuU6XL/+HsxriGAumcZDuESdidlxOztbW1bFhYr1/qWwou2q
wynnRVKYHL41aWycgFdkDoDEFFxv8ft8+F5Ux+J5Hg5XdgRULJc6uUQE/lDG3zOqzPftlODB52zU
d0cm8gFOvSZ2nO8ZB8THnxoAGe33iIZJfMcefA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jlR0iZ4fp9QXiFgaT07DMAK1YFLyBpsOGOOR9j2PWImFEh8oTBt4cvmGo+2z1Umbt9OMQwOhyepO
QIsKLFzUXYUba+SFFLBoCiaww24KICecbUfd3VV5sg2bEJjAdtYTT6mJqyc3vQRvBlONeBFdIGy2
AXqdK7QtXGLsLAIF/z4FG8cfG6nSD6e16gccBC6+kl5MoShdnmebKLyoo6UKFdMbDK88sHvTcD9S
LNCau6RK7FkTZg23FV0tf6cTP9Rray9YEcowm2AAh51Wldo2lGJ2W5iiDatRKH/W1bu7FGWZG+OT
+VZE+Ckiuf4T6cuu+G5IbrtMv6a4U93R0gtxXQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
p/kq+JjPPJbOTWT2SRiPJ99/iH6kkVGEiluRRXpuRN+j+cVPgJD1v4QVjw3zMWLlvTGB7OOqC+JG
Lc62Wiizd/BFfGj2JYkTZMatcOWok7A87HK+vRTjr4nZMApD2jKaneJdU1279KsIEeRfImCQ2uRl
QRNMH3PPdNGYCnOGgNk=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kyyI/O29YYc5VBwhz19i7AV7MC75r43hHVKAOTBiGBhRu8zZxCwGGcNFqc2HgHcWC6nq4jCIbIXf
S3FDzPdasegnERlWvoob9/SXM88zKsyeTbUf+DRu5lB8SPROBMaIhnj375C5XLowL17MXZdmB6fV
X5ukCg7cNhCjssKt/bIJibWkfna7hvj4ye+CLWmi3LdEiix8KTwRoBS3ZJrjM4/N6FfZkXerVxs+
txkhdsmG9ga1g/xErhTRilhqrV2WetlpX86qH/64sRGVxrWeEfNoHhMZsqEK0jWDx4WavKt8XY7W
NDzMXLZ2m5Dv5HMiJWgFG+ntPwgiYYtBuwu7Eg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tv6UL1ZWqo3dAIlhN5UTNGzJyqzdHpCqh217JPvIvHiWJgcFh2tw1n7HWnOPcK3VhCt31AGnCEFe
HpTiinXvHna65L2X2HhtNUrsgvZlUuh/oQR273wp5JPFDPD97NQ4ELkGI+w26HTYLgZ70K5rQo87
D4AkQNRuzTRS5G12yb4RU7ZYgmkYLuq1UyqjlxyN62Del4XoqZyivOGw5H+7wlfkNRu98iQwqq12
jthZbH/ue5wxZJUcb7NmEwL+3abpyDNmWs1qORHOFoE3t97/9XMmeSCpM2+KnSKJvsV5VbuoTCOT
964fsEh7ey4IVb4aum095gQjLCqTmDm8DWFmaw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Oxo3AgNmVWgrXtMKDIThYfXr0YJfyFr7Bsjn2ge/G72mb25MA8Dbkd9ZZPtwqU1poazNnTng5Cx5
s8C1zMNEoo38jNY8zEUBjCCuasJgeMo5xsiha+3ZIBiuHS0KLrjLaPFIQZdsYevb44fg6J5YQLn5
jd1M6YdNMd1VwSezDxtbk9sN8ExPrmtwum/6L1ia9j9UlIzPTEaJ60Xz7tloPsgsbkborO2JLiIk
kIAY2q1b8tuhHzJ5DoXlvIo49wSDj75ncLrkwbAd26huob7aOmX1bS34pJLF17JzqYH0MoPJbHxb
RPdD+qUawXFsMSs2fOLnZrNxeG8L+TyAT0N8tQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CIR/vwxo0IBrPr5+bMp2YuBCQTNBRIIbqgEB18Oewkc8CuHzGCAgPyQUBUKaUG3bBy+KDOPVxBP5
cE/d3QYZAT11fyB1OMMTrjmEIZcr0Vk3nVTAnivoxxxkmdzPjkj0OcGcU9fMArPi3dfTgIsKdtCq
94+mV/70WeprgijzuZFWD7uH+gVioY/+rq/Wc1O6x1n949w8YGgSCTurUvhsobx2bonoC317J0Wm
IX17XRkSBIFgzqA8iC+GV5oCfxIGkihKmXxjIJbMamlOdCOycEkjkh3JYmm7TLNxmI65iffsabR0
t5+iI0l8eJxFhElzWeREqE43cnJYLaKZBUA+DA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 67568)
`pragma protect data_block
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
WIOqpbKz8PtWyRl40oTnKV5tgNsKBOs=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
