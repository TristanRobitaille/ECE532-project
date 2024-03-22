#set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS25} [get_ports load_done]
#set_property -dict {PACKAGE_PIN T15 IOSTANDARD LVCMOS25} [get_ports fft_done]
#set_property -dict {PACKAGE_PIN B22 IOSTANDARD LVCMOS12} [get_ports rstn]
#set_property -dict {PACKAGE_PIN D22 IOSTANDARD LVCMOS12} [get_ports fft_enable]
#set_property -dict {PACKAGE_PIN C22 IOSTANDARD LVCMOS12} [get_ports load_data]
#set_property -dict {PACKAGE_PIN R4 IOSTANDARD LVCMOS33} [get_ports clk]

#set_property MARK_DEBUG true [get_nets {FFT/addr_gen/twiddle_addr[0]_i_1_n_0}]
#set_property MARK_DEBUG true [get_nets {FFT/addr_gen/twiddle_addr[1]_i_1_n_0}]
#set_property MARK_DEBUG true [get_nets {FFT/addr_gen/twiddle_addr[2]_i_1_n_0}]
#set_property MARK_DEBUG true [get_nets {FFT/addr_gen/twiddle_addr[3]_i_1_n_0}]
#set_property MARK_DEBUG true [get_nets FFT/addr_gen/buttferfly_pair]
#set_property MARK_DEBUG true [get_nets load_done_i_2_n_0]
#set_property MARK_DEBUG true [get_nets fft_done_OBUF]
#create_debug_core u_ila_0 ila
#set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
#set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
#set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
#set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
#set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
#set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
#set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
#set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
#set_property port_width 1 [get_debug_ports u_ila_0/clk]
#connect_debug_port u_ila_0/clk [get_nets [list clk_IBUF_BUFG]]
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
#set_property port_width 32 [get_debug_ports u_ila_0/probe0]
#connect_debug_port u_ila_0/probe0 [get_nets [list {FFT/frequency[0]} {FFT/frequency[1]} {FFT/frequency[2]} {FFT/frequency[3]} {FFT/frequency[4]} {FFT/frequency[5]} {FFT/frequency[6]} {FFT/frequency[7]} {FFT/frequency[8]} {FFT/frequency[9]} {FFT/frequency[10]} {FFT/frequency[11]} {FFT/frequency[12]} {FFT/frequency[13]} {FFT/frequency[14]} {FFT/frequency[15]} {FFT/frequency[16]} {FFT/frequency[17]} {FFT/frequency[18]} {FFT/frequency[19]} {FFT/frequency[20]} {FFT/frequency[21]} {FFT/frequency[22]} {FFT/frequency[23]} {FFT/frequency[24]} {FFT/frequency[25]} {FFT/frequency[26]} {FFT/frequency[27]} {FFT/frequency[28]} {FFT/frequency[29]} {FFT/frequency[30]} {FFT/frequency[31]}]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
#set_property port_width 1 [get_debug_ports u_ila_0/probe1]
#connect_debug_port u_ila_0/probe1 [get_nets [list FFT/addr_gen/buttferfly_pair]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
#set_property port_width 1 [get_debug_ports u_ila_0/probe2]
#connect_debug_port u_ila_0/probe2 [get_nets [list fft_done_OBUF]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
#set_property port_width 1 [get_debug_ports u_ila_0/probe3]
#connect_debug_port u_ila_0/probe3 [get_nets [list load_done_i_2_n_0]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
#set_property port_width 1 [get_debug_ports u_ila_0/probe4]
#connect_debug_port u_ila_0/probe4 [get_nets [list {FFT/addr_gen/twiddle_addr[0]_i_1_n_0}]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
#set_property port_width 1 [get_debug_ports u_ila_0/probe5]
#connect_debug_port u_ila_0/probe5 [get_nets [list {FFT/addr_gen/twiddle_addr[1]_i_1_n_0}]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
#set_property port_width 1 [get_debug_ports u_ila_0/probe6]
#connect_debug_port u_ila_0/probe6 [get_nets [list {FFT/addr_gen/twiddle_addr[2]_i_1_n_0}]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
#set_property port_width 1 [get_debug_ports u_ila_0/probe7]
#connect_debug_port u_ila_0/probe7 [get_nets [list {FFT/addr_gen/twiddle_addr[3]_i_1_n_0}]]
#set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
#set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
#set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
#connect_debug_port dbg_hub/clk [get_nets clk_IBUF_BUFG]
