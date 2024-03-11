-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Mar 11 13:34:48 2024
-- Host        : DESKTOP-QFC1GU1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/ECE53/Desktop/m5/ECE532-project/Trumpet_project/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_playback_ctrl_0_1/design_1_playback_ctrl_0_1_stub.vhdl
-- Design      : design_1_playback_ctrl_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_playback_ctrl_0_1 is
  Port ( 
    clk_100MHz : in STD_LOGIC;
    btn_rst : in STD_LOGIC;
    cap_btn : in STD_LOGIC_VECTOR ( 1 downto 0 );
    recording_in_progress : out STD_LOGIC;
    playback_start : out STD_LOGIC;
    speaker_mode : out STD_LOGIC
  );

end design_1_playback_ctrl_0_1;

architecture stub of design_1_playback_ctrl_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_100MHz,btn_rst,cap_btn[1:0],recording_in_progress,playback_start,speaker_mode";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "playback_ctrl,Vivado 2018.3";
begin
end;
