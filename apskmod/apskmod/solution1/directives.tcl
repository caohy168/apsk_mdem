############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name apskmod "apskmod"
set_directive_interface -mode axis -register -register_mode both "apskmod" mod_datin
set_directive_interface -mode axis -register -register_mode both "apskmod" modi
set_directive_interface -mode axis -register -register_mode both "apskmod" modq
set_directive_pipeline "apskmod/apskmod_label0"
set_directive_loop_flatten "apskmod/apskmod_label1"
set_directive_pipeline "apskmod/apskmod_label2"
