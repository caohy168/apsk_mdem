
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set modq_group [add_wave_group modq(axis) -into $coutputgroup]
add_wave /apatb_apskmod_top/AESL_inst_apskmod/modq_TREADY -into $modq_group -color #ffff00 -radix hex
add_wave /apatb_apskmod_top/AESL_inst_apskmod/modq_TVALID -into $modq_group -color #ffff00 -radix hex
add_wave /apatb_apskmod_top/AESL_inst_apskmod/modq_TDATA -into $modq_group -radix hex
set modi_group [add_wave_group modi(axis) -into $coutputgroup]
add_wave /apatb_apskmod_top/AESL_inst_apskmod/modi_TREADY -into $modi_group -color #ffff00 -radix hex
add_wave /apatb_apskmod_top/AESL_inst_apskmod/modi_TVALID -into $modi_group -color #ffff00 -radix hex
add_wave /apatb_apskmod_top/AESL_inst_apskmod/modi_TDATA -into $modi_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set mod_datin_group [add_wave_group mod_datin(axis) -into $cinputgroup]
add_wave /apatb_apskmod_top/AESL_inst_apskmod/mod_datin_TREADY -into $mod_datin_group -color #ffff00 -radix hex
add_wave /apatb_apskmod_top/AESL_inst_apskmod/mod_datin_TVALID -into $mod_datin_group -color #ffff00 -radix hex
add_wave /apatb_apskmod_top/AESL_inst_apskmod/mod_datin_TDATA -into $mod_datin_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_apskmod_top/AESL_inst_apskmod/ap_start -into $blocksiggroup
add_wave /apatb_apskmod_top/AESL_inst_apskmod/ap_done -into $blocksiggroup
add_wave /apatb_apskmod_top/AESL_inst_apskmod/ap_idle -into $blocksiggroup
add_wave /apatb_apskmod_top/AESL_inst_apskmod/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_apskmod_top/AESL_inst_apskmod/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_apskmod_top/AESL_inst_apskmod/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_apskmod_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_apskmod_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_apskmod_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_apskmod_top/LENGTH_mod_datin -into $tb_portdepth_group -radix hex
add_wave /apatb_apskmod_top/LENGTH_modi -into $tb_portdepth_group -radix hex
add_wave /apatb_apskmod_top/LENGTH_modq -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_modq_group [add_wave_group modq(axis) -into $tbcoutputgroup]
add_wave /apatb_apskmod_top/modq_TREADY -into $tb_modq_group -color #ffff00 -radix hex
add_wave /apatb_apskmod_top/modq_TVALID -into $tb_modq_group -color #ffff00 -radix hex
add_wave /apatb_apskmod_top/modq_TDATA -into $tb_modq_group -radix hex
set tb_modi_group [add_wave_group modi(axis) -into $tbcoutputgroup]
add_wave /apatb_apskmod_top/modi_TREADY -into $tb_modi_group -color #ffff00 -radix hex
add_wave /apatb_apskmod_top/modi_TVALID -into $tb_modi_group -color #ffff00 -radix hex
add_wave /apatb_apskmod_top/modi_TDATA -into $tb_modi_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_mod_datin_group [add_wave_group mod_datin(axis) -into $tbcinputgroup]
add_wave /apatb_apskmod_top/mod_datin_TREADY -into $tb_mod_datin_group -color #ffff00 -radix hex
add_wave /apatb_apskmod_top/mod_datin_TVALID -into $tb_mod_datin_group -color #ffff00 -radix hex
add_wave /apatb_apskmod_top/mod_datin_TDATA -into $tb_mod_datin_group -radix hex
save_wave_config apskmod.wcfg
run all
quit

