// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Feb  6 10:22:17 2024
// Host        : Jasons-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/jason/ECE532/ECE532-project/HDMI_Example_Design/HDMI_Example_Design.srcs/sources_1/ip/HDMI_Transmitter_sub/bd_0/ip/ip_1/bd_7c6c_v_tc_0_stub.v
// Design      : bd_7c6c_v_tc_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "v_tc,Vivado 2018.3" *)
module bd_7c6c_v_tc_0(clk, clken, s_axi_aclk, s_axi_aclken, gen_clken, 
  field_id_out, hsync_out, hblank_out, vsync_out, vblank_out, active_video_out, resetn, 
  s_axi_aresetn, s_axi_awaddr, s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, 
  s_axi_wvalid, s_axi_wready, s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, 
  s_axi_arvalid, s_axi_arready, s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, irq, 
  fsync_in, fsync_out)
/* synthesis syn_black_box black_box_pad_pin="clk,clken,s_axi_aclk,s_axi_aclken,gen_clken,field_id_out,hsync_out,hblank_out,vsync_out,vblank_out,active_video_out,resetn,s_axi_aresetn,s_axi_awaddr[8:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[8:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,irq,fsync_in,fsync_out[0:0]" */;
  input clk;
  input clken;
  input s_axi_aclk;
  input s_axi_aclken;
  input gen_clken;
  output field_id_out;
  output hsync_out;
  output hblank_out;
  output vsync_out;
  output vblank_out;
  output active_video_out;
  input resetn;
  input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output irq;
  input fsync_in;
  output [0:0]fsync_out;
endmodule