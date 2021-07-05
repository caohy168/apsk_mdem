############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project apskdemod
set_top apskdemod
add_files apskdemod.cpp
add_files apskdemod.h
add_files -tb apskdemod_inspire.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xcvu37p-fsvh2892-2L-e}
create_clock -period 10 -name default
config_export -format ip_catalog -output /home/caohy168/Work/bbp_vcu128/xdma_bpu_ex/imports/apsk_mdem/apskmod/apskdemod.zip -rtl verilog
source "./apskdemod/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -flow syn -rtl verilog -format ip_catalog -output /home/caohy168/Work/bbp_vcu128/xdma_bpu_ex/imports/apsk_mdem/apskmod/apskdemod.zip
