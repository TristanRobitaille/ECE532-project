#!/bin/bash -f
#*********************************************************************************************************
# Vivado (TM) v2018.3 (64-bit)
#
# Filename    : HDMI_Transmitter_sub.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Tue Feb 06 10:20:18 -0500 2024
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
#
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved. 
#
# usage: HDMI_Transmitter_sub.sh [-help]
# usage: HDMI_Transmitter_sub.sh [-lib_map_path]
# usage: HDMI_Transmitter_sub.sh [-noclean_files]
# usage: HDMI_Transmitter_sub.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'HDMI_Transmitter_sub.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#*********************************************************************************************************

# Directory path for design sources and include directories (if any) wrt this path
ref_dir="."

# Override directory with 'export_sim_ref_dir' env path value if set in the shell
if [[ (! -z "$export_sim_ref_dir") && ($export_sim_ref_dir != "") ]]; then
  ref_dir="$export_sim_ref_dir"
fi

# Command line options
vlogan_opts="-full64"
vhdlan_opts="-full64"
vcs_elab_opts="-full64 -debug_pp -t ps -licqueue -l elaborate.log"
vcs_sim_opts="-ucli -licqueue -l simulate.log"

# Design libraries
design_libs=(xil_defaultlib xpm v_hdmi_tx_v3_0_0 axi_lite_ipif_v3_0_4 v_tc_v6_1_13 v_vid_in_axi4s_v4_0_9 v_axi4s_vid_out_v4_0_10 util_vector_logic_v2_0_1 generic_baseblocks_v2_1_0 axi_infrastructure_v1_1_0 axi_register_slice_v2_1_18 fifo_generator_v13_2_3 axi_data_fifo_v2_1_17 axi_crossbar_v2_1_19)

# Simulation root library directory
sim_lib_dir="vcs_lib"

# Script info
echo -e "HDMI_Transmitter_sub.sh - Script generated by export_simulation (Vivado v2018.3 (64-bit)-id)\n"

# Main steps
run()
{
  check_args $# $1
  setup $1 $2
  compile
  elaborate
  simulate
}

# RUN_STEP: <compile>
compile()
{
  # Compile design files
  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"$ref_dir/../../../ipstatic/hdl" \
    "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
    "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
    "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xpm $vhdlan_opts \
    "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work v_hdmi_tx_v3_0_0 $vlogan_opts -sverilog +incdir+"$ref_dir/../../../ipstatic/hdl" \
    "$ref_dir/../../../ipstatic/hdl/v_hdmi_tx_v3_0_rfs.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"$ref_dir/../../../ipstatic/hdl" \
    "$ref_dir/../../../../HDMI_Example_Design.srcs/sources_1/ip/HDMI_Transmitter_sub/bd_0/ip/ip_0/sim/bd_7c6c_v_hdmi_tx_0.sv" \
  2>&1 | tee -a vlogan.log

  vhdlan -work axi_lite_ipif_v3_0_4 $vhdlan_opts \
    "$ref_dir/../../../ipstatic/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work v_tc_v6_1_13 $vhdlan_opts \
    "$ref_dir/../../../ipstatic/hdl/v_tc_v6_1_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../../HDMI_Example_Design.srcs/sources_1/ip/HDMI_Transmitter_sub/bd_0/ip/ip_1/sim/bd_7c6c_v_tc_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work v_vid_in_axi4s_v4_0_9 $vlogan_opts +v2k +incdir+"$ref_dir/../../../ipstatic/hdl" \
    "$ref_dir/../../../ipstatic/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work v_axi4s_vid_out_v4_0_10 $vlogan_opts +v2k +incdir+"$ref_dir/../../../ipstatic/hdl" \
    "$ref_dir/../../../ipstatic/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../ipstatic/hdl" \
    "$ref_dir/../../../../HDMI_Example_Design.srcs/sources_1/ip/HDMI_Transmitter_sub/bd_0/ip/ip_2/sim/bd_7c6c_v_axi4s_vid_out_0.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work util_vector_logic_v2_0_1 $vlogan_opts +v2k +incdir+"$ref_dir/../../../ipstatic/hdl" \
    "$ref_dir/../../../ipstatic/hdl/util_vector_logic_v2_0_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../ipstatic/hdl" \
    "$ref_dir/../../../../HDMI_Example_Design.srcs/sources_1/ip/HDMI_Transmitter_sub/bd_0/ip/ip_3/sim/bd_7c6c_util_vector_logic_0_0.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work generic_baseblocks_v2_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../ipstatic/hdl" \
    "$ref_dir/../../../ipstatic/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_infrastructure_v1_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../ipstatic/hdl" \
    "$ref_dir/../../../ipstatic/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_register_slice_v2_1_18 $vlogan_opts +v2k +incdir+"$ref_dir/../../../ipstatic/hdl" \
    "$ref_dir/../../../ipstatic/hdl/axi_register_slice_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work fifo_generator_v13_2_3 $vlogan_opts +v2k +incdir+"$ref_dir/../../../ipstatic/hdl" \
    "$ref_dir/../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work fifo_generator_v13_2_3 $vhdlan_opts \
    "$ref_dir/../../../ipstatic/hdl/fifo_generator_v13_2_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work fifo_generator_v13_2_3 $vlogan_opts +v2k +incdir+"$ref_dir/../../../ipstatic/hdl" \
    "$ref_dir/../../../ipstatic/hdl/fifo_generator_v13_2_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_data_fifo_v2_1_17 $vlogan_opts +v2k +incdir+"$ref_dir/../../../ipstatic/hdl" \
    "$ref_dir/../../../ipstatic/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_crossbar_v2_1_19 $vlogan_opts +v2k +incdir+"$ref_dir/../../../ipstatic/hdl" \
    "$ref_dir/../../../ipstatic/hdl/axi_crossbar_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../ipstatic/hdl" \
    "$ref_dir/../../../../HDMI_Example_Design.srcs/sources_1/ip/HDMI_Transmitter_sub/bd_0/ip/ip_4/sim/bd_7c6c_axi_crossbar_0.v" \
    "$ref_dir/../../../../HDMI_Example_Design.srcs/sources_1/ip/HDMI_Transmitter_sub/bd_0/sim/bd_7c6c.v" \
    "$ref_dir/../../../../HDMI_Example_Design.srcs/sources_1/ip/HDMI_Transmitter_sub/sim/HDMI_Transmitter_sub.v" \
  2>&1 | tee -a vlogan.log


  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log

}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.HDMI_Transmitter_sub xil_defaultlib.glbl -o HDMI_Transmitter_sub_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./HDMI_Transmitter_sub_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./HDMI_Transmitter_sub.sh -help\" for more information)\n"
        exit 1
      fi
      create_lib_mappings $2
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
      create_lib_mappings $2
  esac

  create_lib_dir

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($1 == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  lib_map_path=""
  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# Create design library directory paths
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key HDMI_Transmitter_sub_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc HDMI_Transmitter_sub_simv.daidir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done

  create_lib_dir
}

# Check command line arguments
check_args()
{
  if [[ ($1 == 1 ) && ($2 != "-lib_map_path" && $2 != "-noclean_files" && $2 != "-reset_run" && $2 != "-help" && $2 != "-h") ]]; then
    echo -e "ERROR: Unknown option specified '$2' (type \"./HDMI_Transmitter_sub.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: HDMI_Transmitter_sub.sh [-help]\n\
Usage: HDMI_Transmitter_sub.sh [-lib_map_path]\n\
Usage: HDMI_Transmitter_sub.sh [-reset_run]\n\
Usage: HDMI_Transmitter_sub.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

# Launch script
run $1 $2
