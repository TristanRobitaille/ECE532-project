// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Tue Apr  2 17:03:20 2024
// Host        : BA3135WS26 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/wangyud6/ECE532/ECE532-project-hdmi_sw_2/ECE532-project-hdmi_sw_2/Trumpet_project/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_playback_ctrl_0_0/design_1_playback_ctrl_0_0_stub.v
// Design      : design_1_playback_ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "playback_ctrl,Vivado 2018.3.1" *)
module design_1_playback_ctrl_0_0(clk_100MHz, btn_rst, cap_btn, 
  recording_in_progress, playback_start, speaker_mode)
/* synthesis syn_black_box black_box_pad_pin="clk_100MHz,btn_rst,cap_btn[1:0],recording_in_progress,playback_start,speaker_mode" */;
  input clk_100MHz;
  input btn_rst;
  input [1:0]cap_btn;
  output recording_in_progress;
  output playback_start;
  output speaker_mode;
endmodule
