vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_20
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/axi_timer_v2_0_20
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/axi_uartlite_v2_0_22
vlib activehdl/fifo_generator_v13_2_3
vlib activehdl/lib_fifo_v1_0_12
vlib activehdl/blk_mem_gen_v8_4_2
vlib activehdl/lib_bmg_v1_0_11
vlib activehdl/axi_datamover_v5_1_20
vlib activehdl/axi_vdma_v6_3_6
vlib activehdl/mdm_v3_2_15
vlib activehdl/microblaze_v11_0_0
vlib activehdl/axi_intc_v4_1_12
vlib activehdl/xlconcat_v2_1_1
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/v_tc_v6_1_13
vlib activehdl/v_vid_in_axi4s_v4_0_9
vlib activehdl/v_axi4s_vid_out_v4_0_10
vlib activehdl/xlconstant_v1_1_5
vlib activehdl/lmb_bram_if_cntlr_v4_0_15
vlib activehdl/lmb_v10_v3_0_9
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_18
vlib activehdl/axi_data_fifo_v2_1_17
vlib activehdl/axi_crossbar_v2_1_19
vlib activehdl/axi_iic_v2_0_21
vlib activehdl/axi_protocol_converter_v2_1_18
vlib activehdl/axi_clock_converter_v2_1_17
vlib activehdl/axi_dwidth_converter_v2_1_18

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_20 activehdl/axi_gpio_v2_0_20
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap axi_timer_v2_0_20 activehdl/axi_timer_v2_0_20
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_22 activehdl/axi_uartlite_v2_0_22
vmap fifo_generator_v13_2_3 activehdl/fifo_generator_v13_2_3
vmap lib_fifo_v1_0_12 activehdl/lib_fifo_v1_0_12
vmap blk_mem_gen_v8_4_2 activehdl/blk_mem_gen_v8_4_2
vmap lib_bmg_v1_0_11 activehdl/lib_bmg_v1_0_11
vmap axi_datamover_v5_1_20 activehdl/axi_datamover_v5_1_20
vmap axi_vdma_v6_3_6 activehdl/axi_vdma_v6_3_6
vmap mdm_v3_2_15 activehdl/mdm_v3_2_15
vmap microblaze_v11_0_0 activehdl/microblaze_v11_0_0
vmap axi_intc_v4_1_12 activehdl/axi_intc_v4_1_12
vmap xlconcat_v2_1_1 activehdl/xlconcat_v2_1_1
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap v_tc_v6_1_13 activehdl/v_tc_v6_1_13
vmap v_vid_in_axi4s_v4_0_9 activehdl/v_vid_in_axi4s_v4_0_9
vmap v_axi4s_vid_out_v4_0_10 activehdl/v_axi4s_vid_out_v4_0_10
vmap xlconstant_v1_1_5 activehdl/xlconstant_v1_1_5
vmap lmb_bram_if_cntlr_v4_0_15 activehdl/lmb_bram_if_cntlr_v4_0_15
vmap lmb_v10_v3_0_9 activehdl/lmb_v10_v3_0_9
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_18 activehdl/axi_register_slice_v2_1_18
vmap axi_data_fifo_v2_1_17 activehdl/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 activehdl/axi_crossbar_v2_1_19
vmap axi_iic_v2_0_21 activehdl/axi_iic_v2_0_21
vmap axi_protocol_converter_v2_1_18 activehdl/axi_protocol_converter_v2_1_18
vmap axi_clock_converter_v2_1_17 activehdl/axi_clock_converter_v2_1_17
vmap axi_dwidth_converter_v2_1_18 activehdl/axi_dwidth_converter_v2_1_18

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/9097/src/mmcme2_drp.v" \

vcom -work xil_defaultlib -93 \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/9097/src/axi_dynclk_S00_AXI.vhd" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/9097/src/axi_dynclk.vhd" \
"../../../bd/hdmi/ip/hdmi_axi_dynclk_0_0/sim/hdmi_axi_dynclk_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_20 -93 \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/hdmi/ip/hdmi_axi_gpio_video_0/sim/hdmi_axi_gpio_video_0.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_timer_v2_0_20 -93 \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/e9c1/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/hdmi/ip/hdmi_axi_timer_0_0/sim/hdmi_axi_timer_0_0.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_22 -93 \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/7371/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/hdmi/ip/hdmi_axi_uartlite_0_0/sim/hdmi_axi_uartlite_0_0.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -93 \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_12 -93 \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/544a/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_2  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_11 -93 \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/556c/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_20 -93 \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/dfb3/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_6  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_6 -93 \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/hdmi/ip/hdmi_axi_vdma_0_0/sim/hdmi_axi_vdma_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/sim/ila_refclk.v" \
"../../../bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/sim/ila_pixclk.v" \

vcom -work xil_defaultlib -93 \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/be44/src/SyncBase.vhd" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/be44/src/EEPROM_8b.vhd" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/be44/src/TWI_SlaveCtl.vhd" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/be44/src/GlitchFilter.vhd" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/be44/src/SyncAsync.vhd" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/be44/src/DVI_Constants.vhd" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/be44/src/SyncAsyncReset.vhd" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/be44/src/PhaseAlign.vhd" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/be44/src/InputSERDES.vhd" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/be44/src/ChannelBond.vhd" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/be44/src/ResyncToBUFG.vhd" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/be44/src/TMDS_Decoder.vhd" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/be44/src/TMDS_Clocking.vhd" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/be44/src/dvi2rgb.vhd" \
"../../../bd/hdmi/ip/hdmi_dvi2rgb_0_0/sim/hdmi_dvi2rgb_0_0.vhd" \

vcom -work mdm_v3_2_15 -93 \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/41ef/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/hdmi/ip/hdmi_mdm_1_0/sim/hdmi_mdm_1_0.vhd" \

vcom -work microblaze_v11_0_0 -93 \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/2ed1/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/hdmi/ip/hdmi_microblaze_0_0/sim/hdmi_microblaze_0_0.vhd" \

vcom -work axi_intc_v4_1_12 -93 \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/31e4/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/hdmi/ip/hdmi_microblaze_0_axi_intc_0/sim/hdmi_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_1  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../bd/hdmi/ip/hdmi_microblaze_0_xlconcat_0/sim/hdmi_microblaze_0_xlconcat_0.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_addr_decode.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_read.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg_bank.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_top.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_write.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_ar_channel.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_aw_channel.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_b_channel.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_arbiter.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_fsm.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_translator.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_fifo.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_incr_cmd.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_r_channel.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_simple_fifo.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wrap_cmd.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wr_cmd_fsm.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_w_channel.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axic_register_slice.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_register_slice.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_upsizer.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_a_upsizer.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_and.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_and.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_or.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_or.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_command_fifo.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel_static.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_r_upsizer.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_w_upsizer.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_axi.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/hdmi_mig_7series_0_0_mig_sim.v" \
"../../../bd/hdmi/ip/hdmi_mig_7series_0_0/hdmi_mig_7series_0_0/user_design/rtl/hdmi_mig_7series_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/20df/src/ClockGen.vhd" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/20df/src/OutputSERDES.vhd" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/20df/src/TMDS_Encoder.vhd" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/20df/src/rgb2dvi.vhd" \
"../../../bd/hdmi/ip/hdmi_rgb2dvi_0_0/sim/hdmi_rgb2dvi_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/hdmi/ip/hdmi_rst_mig_7series_0_100M_0/sim/hdmi_rst_mig_7series_0_100M_0.vhd" \
"../../../bd/hdmi/ip/hdmi_rst_mig_7series_0_pxl_0/sim/hdmi_rst_mig_7series_0_pxl_0.vhd" \

vcom -work v_tc_v6_1_13 -93 \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/a92c/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_9  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_10  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/a87e/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../bd/hdmi/ip/hdmi_v_axi4s_vid_out_0_0/sim/hdmi_v_axi4s_vid_out_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/hdmi/ip/hdmi_v_tc_0_0/sim/hdmi_v_tc_0_0.vhd" \
"../../../bd/hdmi/ip/hdmi_v_tc_1_0/sim/hdmi_v_tc_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../bd/hdmi/ip/hdmi_v_vid_in_axi4s_0_0/sim/hdmi_v_vid_in_axi4s_0_0.v" \

vlog -work xlconstant_v1_1_5  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../bd/hdmi/ip/hdmi_xlconstant_0_0/sim/hdmi_xlconstant_0_0.v" \

vcom -work lmb_bram_if_cntlr_v4_0_15 -93 \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/hdmi/ip/hdmi_dlmb_bram_if_cntlr_0/sim/hdmi_dlmb_bram_if_cntlr_0.vhd" \

vcom -work lmb_v10_v3_0_9 -93 \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/hdmi/ip/hdmi_dlmb_v10_0/sim/hdmi_dlmb_v10_0.vhd" \
"../../../bd/hdmi/ip/hdmi_ilmb_bram_if_cntlr_0/sim/hdmi_ilmb_bram_if_cntlr_0.vhd" \
"../../../bd/hdmi/ip/hdmi_ilmb_v10_0/sim/hdmi_ilmb_v10_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../bd/hdmi/ip/hdmi_lmb_bram_0/sim/hdmi_lmb_bram_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_17  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../bd/hdmi/ip/hdmi_xbar_0/sim/hdmi_xbar_0.v" \
"../../../bd/hdmi/ip/hdmi_xbar_1/sim/hdmi_xbar_1.v" \
"../../../bd/hdmi/ip/hdmi_i2s_0_0/sim/hdmi_i2s_0_0.v" \
"../../../bd/hdmi/ip/hdmi_one_register_0_0/sim/hdmi_one_register_0_0.v" \
"../../../bd/hdmi/ip/hdmi_playback_ctrl_0_0/sim/hdmi_playback_ctrl_0_0.v" \
"../../../bd/hdmi/ip/hdmi_spi_controller_0_0/sim/hdmi_spi_controller_0_0.v" \
"../../../bd/hdmi/ip/hdmi_mic_storage_0_0/sim/hdmi_mic_storage_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/hdmi/ip/hdmi_axi_gpio_0_0/sim/hdmi_axi_gpio_0_0.vhd" \
"../../../bd/hdmi/ip/hdmi_axi_gpio_1_0/sim/hdmi_axi_gpio_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../bd/hdmi/ipshared/2bd6/hdl/fft_axi_v1_0_S00_AXI.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../bd/hdmi/ipshared/2bd6/src/Level_1.sv" \
"../../../bd/hdmi/ipshared/2bd6/src/Level_2.sv" \
"../../../bd/hdmi/ipshared/2bd6/src/Level_3.sv" \
"../../../bd/hdmi/ipshared/2bd6/src/Level_4.sv" \
"../../../bd/hdmi/ipshared/2bd6/src/Level_5.sv" \
"../../../bd/hdmi/ipshared/2bd6/src/butterfly.sv" \
"../../../bd/hdmi/ipshared/2bd6/src/fft.sv" \
"../../../bd/hdmi/ipshared/2bd6/src/fft_wrapper.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../bd/hdmi/ipshared/2bd6/hdl/fft_axi_v1_0.v" \
"../../../bd/hdmi/ip/hdmi_fft_axi_0_0/sim/hdmi_fft_axi_0_0.v" \

vcom -work axi_iic_v2_0_21 -93 \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/304c/hdl/axi_iic_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/hdmi/ip/hdmi_axi_iic_0_0/sim/hdmi_axi_iic_0_0.vhd" \
"../../../bd/hdmi/ip/hdmi_axi_gpio_2_0/sim/hdmi_axi_gpio_2_0.vhd" \
"../../../bd/hdmi/ip/hdmi_axi_iic_0_1/sim/hdmi_axi_iic_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../bd/hdmi/sim/hdmi.v" \
"../../../bd/hdmi/ip/hdmi_s00_regslice_0/sim/hdmi_s00_regslice_0.v" \

vlog -work axi_protocol_converter_v2_1_18  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_17  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/693a/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work axi_dwidth_converter_v2_1_18  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/0815/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/58e2/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ipshared/ec67/hdl" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../Nexys-Video-HDMI.srcs/sources_1/bd/hdmi/ip/hdmi_dvi2rgb_0_0/src/ila_pixclk/hdl/verilog" \
"../../../bd/hdmi/ip/hdmi_auto_us_0/sim/hdmi_auto_us_0.v" \
"../../../bd/hdmi/ip/hdmi_auto_rs_w_1/sim/hdmi_auto_rs_w_1.v" \
"../../../bd/hdmi/ip/hdmi_s01_regslice_0/sim/hdmi_s01_regslice_0.v" \
"../../../bd/hdmi/ip/hdmi_auto_us_1/sim/hdmi_auto_us_1.v" \
"../../../bd/hdmi/ip/hdmi_auto_rs_w_2/sim/hdmi_auto_rs_w_2.v" \
"../../../bd/hdmi/ip/hdmi_s02_regslice_0/sim/hdmi_s02_regslice_0.v" \
"../../../bd/hdmi/ip/hdmi_s03_regslice_0/sim/hdmi_s03_regslice_0.v" \
"../../../bd/hdmi/ip/hdmi_m00_regslice_0/sim/hdmi_m00_regslice_0.v" \
"../../../bd/hdmi/ip/hdmi_auto_ds_0/sim/hdmi_auto_ds_0.v" \
"../../../bd/hdmi/ip/hdmi_auto_rs_w_0/sim/hdmi_auto_rs_w_0.v" \

vlog -work xil_defaultlib \
"glbl.v"
