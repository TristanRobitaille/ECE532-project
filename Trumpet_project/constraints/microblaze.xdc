## Clock signal
set_property -dict {PACKAGE_PIN R4 IOSTANDARD LVCMOS33} [get_ports clk_100MHz]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk_100MHz]

## Reset (CPU_RESET)
set_property -dict {PACKAGE_PIN G4 IOSTANDARD LVCMOS33} [get_ports reset_rtl_0]
set_property IOSTANDARD LVCMOS33 [get_ports reset_rtl_0_0]

##Switches
set_property PACKAGE_PIN E22 [get_ports {swt_tri_i[0]}]
set_property PACKAGE_PIN F21 [get_ports {swt_tri_i[1]}]
set_property PACKAGE_PIN G21 [get_ports {swt_tri_i[2]}]
set_property PACKAGE_PIN G22 [get_ports {swt_tri_i[3]}]
set_property PACKAGE_PIN H17 [get_ports {swt_tri_i[4]}]
set_property PACKAGE_PIN J16 [get_ports {swt_tri_i[5]}]
set_property PACKAGE_PIN K13 [get_ports {swt_tri_i[6]}]
set_property PACKAGE_PIN M17 [get_ports {swt_tri_i[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {swt_tri_i[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {swt_tri_i[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {swt_tri_i[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {swt_tri_i[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {swt_tri_i[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {swt_tri_i[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {swt_tri_i[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {swt_tri_i[0]}]

## LEDs
set_property IOSTANDARD LVCMOS33 [get_ports {led_tri_o[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_tri_o[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_tri_o[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_tri_o[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_tri_o[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_tri_o[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_tri_o[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_tri_o[0]}]
set_property PACKAGE_PIN T14 [get_ports {led_tri_o[0]}]
set_property PACKAGE_PIN T15 [get_ports {led_tri_o[1]}]
set_property PACKAGE_PIN T16 [get_ports {led_tri_o[2]}]
set_property PACKAGE_PIN U16 [get_ports {led_tri_o[3]}]
set_property PACKAGE_PIN V15 [get_ports {led_tri_o[4]}]
set_property PACKAGE_PIN W16 [get_ports {led_tri_o[5]}]
set_property PACKAGE_PIN W15 [get_ports {led_tri_o[6]}]
set_property PACKAGE_PIN Y13 [get_ports {led_tri_o[7]}]

## USB-RS232 Interface
set_property -dict {PACKAGE_PIN V18 IOSTANDARD LVCMOS33} [get_ports uart_rtl_0_rxd]
set_property -dict {PACKAGE_PIN AA19 IOSTANDARD LVCMOS33} [get_ports uart_rtl_0_txd]

## Capacitive buttons
set_property IOSTANDARD LVCMOS33 [get_ports {cap_btn_in_tri_i[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cap_btn_in_tri_i[0]}]
set_property PACKAGE_PIN AB22 [get_ports {cap_btn_in_tri_i[1]}]
set_property PACKAGE_PIN Y21 [get_ports {cap_btn_in_tri_i[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports cap_btn_i2c_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports cap_btn_i2c_sda_io]
set_property PACKAGE_PIN AB18 [get_ports cap_btn_i2c_sda_io]
set_property PACKAGE_PIN AB20 [get_ports cap_btn_i2c_scl_io]
set_property PULLUP true [get_ports cap_btn_i2c_scl_io]
set_property PULLUP true [get_ports cap_btn_i2c_sda_io]


## I2S audio
set_property PACKAGE_PIN T5 [get_ports i2s_bclk_o]
set_property IOSTANDARD LVCMOS33 [get_ports i2s_bclk_o]
set_property PACKAGE_PIN W6 [get_ports i2s_data_o]
set_property IOSTANDARD LVCMOS33 [get_ports i2s_data_o]

set_property PACKAGE_PIN T5 [get_ports i2s_bclk]
set_property PACKAGE_PIN W6 [get_ports i2s_data]
set_property IOSTANDARD LVCMOS33 [get_ports i2s_bclk]
set_property IOSTANDARD LVCMOS33 [get_ports i2s_data]

set_property DRIVE 16 [get_ports cap_btn_i2c_scl_io]
set_property DRIVE 16 [get_ports cap_btn_i2c_sda_io]
set_property SLEW FAST [get_ports cap_btn_i2c_sda_io]
set_property SLEW FAST [get_ports cap_btn_i2c_scl_io]
set_property OFFCHIP_TERM NONE [get_ports cap_btn_i2c_scl_io]
set_property OFFCHIP_TERM NONE [get_ports cap_btn_i2c_sda_io]