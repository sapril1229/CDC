// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun May 23 12:38:15 2021
// Host        : MT-207780 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ async_fifo_sim_netlist.v
// Design      : async_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xqzu29dr-ffrf1760-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "async_fifo,fifo_generator_v13_2_5,{}" *) (* ORIG_REF_NAME = "xil_defaultlib_async_fifo" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_5 U0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 68656)
`pragma protect data_block
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
yXETmu2cq6sd2K9zMS3kAOmvu1+zjTVZ+iOgLg==
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
