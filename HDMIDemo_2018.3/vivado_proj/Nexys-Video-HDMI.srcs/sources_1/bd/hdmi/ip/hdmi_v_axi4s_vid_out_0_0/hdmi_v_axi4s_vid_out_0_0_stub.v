// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Mar 20 22:52:31 2024
// Host        : Jasons-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/jason/ECE532/ECE532-project/HDMIDemo_2018.3/vivado_proj/Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_v_axi4s_vid_out_0_0/hdmi_v_axi4s_vid_out_0_0_stub.v
// Design      : hdmi_v_axi4s_vid_out_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "v_axi4s_vid_out_v4_0_10,Vivado 2018.3" *)
module hdmi_v_axi4s_vid_out_0_0(aclk, aclken, aresetn, s_axis_video_tdata, 
  s_axis_video_tvalid, s_axis_video_tready, s_axis_video_tuser, s_axis_video_tlast, fid, 
  vid_io_out_ce, vid_active_video, vid_vsync, vid_hsync, vid_vblank, vid_hblank, vid_field_id, 
  vid_data, vtg_vsync, vtg_hsync, vtg_vblank, vtg_hblank, vtg_active_video, vtg_field_id, vtg_ce, 
  locked, overflow, underflow, fifo_read_level, status)
/* synthesis syn_black_box black_box_pad_pin="aclk,aclken,aresetn,s_axis_video_tdata[23:0],s_axis_video_tvalid,s_axis_video_tready,s_axis_video_tuser,s_axis_video_tlast,fid,vid_io_out_ce,vid_active_video,vid_vsync,vid_hsync,vid_vblank,vid_hblank,vid_field_id,vid_data[23:0],vtg_vsync,vtg_hsync,vtg_vblank,vtg_hblank,vtg_active_video,vtg_field_id,vtg_ce,locked,overflow,underflow,fifo_read_level[5:0],status[31:0]" */;
  input aclk;
  input aclken;
  input aresetn;
  input [23:0]s_axis_video_tdata;
  input s_axis_video_tvalid;
  output s_axis_video_tready;
  input s_axis_video_tuser;
  input s_axis_video_tlast;
  input fid;
  input vid_io_out_ce;
  output vid_active_video;
  output vid_vsync;
  output vid_hsync;
  output vid_vblank;
  output vid_hblank;
  output vid_field_id;
  output [23:0]vid_data;
  input vtg_vsync;
  input vtg_hsync;
  input vtg_vblank;
  input vtg_hblank;
  input vtg_active_video;
  input vtg_field_id;
  output vtg_ce;
  output locked;
  output overflow;
  output underflow;
  output [5:0]fifo_read_level;
  output [31:0]status;
endmodule