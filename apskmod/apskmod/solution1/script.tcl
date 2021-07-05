############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project apskmod
set_top apskmod
add_files apskmod.h
add_files apskmod.cpp
add_files -tb apskmod_inspire.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xcvu37p-fsvh2892-2L-e}
create_clock -period 10 -name default
source "./apskmod/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -O -trace_level all
export_design -format ip_catalog
