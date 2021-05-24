// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun May 23 12:45:23 2021
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
  (* C_SYNCHRONIZER_STAGE = "4" *) 
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

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
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
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[3] ;
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
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [0]),
        .Q(\dest_graysync_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [1]),
        .Q(\dest_graysync_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [2]),
        .Q(\dest_graysync_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(\dest_graysync_ff[3] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[3] [0]),
        .I1(\dest_graysync_ff[3] [2]),
        .I2(\dest_graysync_ff[3] [3]),
        .I3(\dest_graysync_ff[3] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[3] [1]),
        .I1(\dest_graysync_ff[3] [3]),
        .I2(\dest_graysync_ff[3] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[3] [2]),
        .I1(\dest_graysync_ff[3] [3]),
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
        .D(\dest_graysync_ff[3] [3]),
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

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
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
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[3] ;
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
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [0]),
        .Q(\dest_graysync_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [1]),
        .Q(\dest_graysync_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [2]),
        .Q(\dest_graysync_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(\dest_graysync_ff[3] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[3] [0]),
        .I1(\dest_graysync_ff[3] [2]),
        .I2(\dest_graysync_ff[3] [3]),
        .I3(\dest_graysync_ff[3] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[3] [1]),
        .I1(\dest_graysync_ff[3] [3]),
        .I2(\dest_graysync_ff[3] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[3] [2]),
        .I1(\dest_graysync_ff[3] [3]),
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
        .D(\dest_graysync_ff[3] [3]),
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

(* DEST_SYNC_FF = "6" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
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
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [5:0]syncstages_ff;

  assign dest_out = syncstages_ff[5];
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
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[4]),
        .Q(syncstages_ff[5]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "6" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
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
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [5:0]syncstages_ff;

  assign dest_out = syncstages_ff[5];
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
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[4]),
        .Q(syncstages_ff[5]),
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
eBHF2mL2XDDF/pTtuROtuo7+Xi3x+Plh6DC7ow==
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
