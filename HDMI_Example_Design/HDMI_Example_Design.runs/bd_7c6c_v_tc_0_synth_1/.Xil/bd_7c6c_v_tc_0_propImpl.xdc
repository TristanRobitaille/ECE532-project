set_property SRC_FILE_INFO {cfile:c:/Users/jason/ECE532/ECE532-project/HDMI_Example_Design/HDMI_Example_Design.srcs/sources_1/ip/HDMI_Transmitter_sub/bd_0/ip/ip_1/bd_7c6c_v_tc_0_clocks.xdc rfile:../../../HDMI_Example_Design.srcs/sources_1/ip/HDMI_Transmitter_sub/bd_0/ip/ip_1/bd_7c6c_v_tc_0_clocks.xdc id:1 order:LATE scoped_inst:U0} [current_design]
current_instance U0
set_property src_info {type:SCOPED_XDC file:1 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_clocks -of_objects [get_ports clk]] -to [all_registers -clock [get_clocks -of_objects [get_ports s_axi_aclk]]] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_ports clk]]]
set_property src_info {type:SCOPED_XDC file:1 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_clocks -of_objects [get_ports s_axi_aclk]] -to [all_registers -clock [get_clocks -of_objects [get_ports clk]]] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_ports s_axi_aclk]]]
