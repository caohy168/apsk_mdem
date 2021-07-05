
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set demod_datout_group [add_wave_group demod_datout(axis) -into $coutputgroup]
add_wave /apatb_apskdemod_top/AESL_inst_apskdemod/demod_datout_TREADY -into $demod_datout_group -color #ffff00 -radix hex
add_wave /apatb_apskdemod_top/AESL_inst_apskdemod/demod_datout_TVALID -into $demod_datout_group -color #ffff00 -radix hex
add_wave /apatb_apskdemod_top/AESL_inst_apskdemod/demod_datout_TDATA -into $demod_datout_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set demodq_group [add_wave_group demodq(axis) -into $cinputgroup]
add_wave /apatb_apskdemod_top/AESL_inst_apskdemod/demodq_TREADY -into $demodq_group -color #ffff00 -radix hex
add_wave /apatb_apskdemod_top/AESL_inst_apskdemod/demodq_TVALID -into $demodq_group -color #ffff00 -radix hex
add_wave /apatb_apskdemod_top/AESL_inst_apskdemod/demodq_TDATA -into $demodq_group -radix hex
set demodi_group [add_wave_group demodi(axis) -into $cinputgroup]
add_wave /apatb_apskdemod_top/AESL_inst_apskdemod/demodi_TREADY -into $demodi_group -color #ffff00 -radix hex
add_wave /apatb_apskdemod_top/AESL_inst_apskdemod/demodi_TVALID -into $demodi_group -color #ffff00 -radix hex
add_wave /apatb_apskdemod_top/AESL_inst_apskdemod/demodi_TDATA -into $demodi_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_apskdemod_top/AESL_inst_apskdemod/ap_start -into $blocksiggroup
add_wave /apatb_apskdemod_top/AESL_inst_apskdemod/ap_done -into $blocksiggroup
add_wave /apatb_apskdemod_top/AESL_inst_apskdemod/ap_idle -into $blocksiggroup
add_wave /apatb_apskdemod_top/AESL_inst_apskdemod/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_apskdemod_top/AESL_inst_apskdemod/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_apskdemod_top/AESL_inst_apskdemod/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_apskdemod_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_apskdemod_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_apskdemod_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_apskdemod_top/LENGTH_demod_datout -into $tb_portdepth_group -radix hex
add_wave /apatb_apskdemod_top/LENGTH_demodi -into $tb_portdepth_group -radix hex
add_wave /apatb_apskdemod_top/LENGTH_demodq -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_demod_datout_group [add_wave_group demod_datout(axis) -into $tbcoutputgroup]
add_wave /apatb_apskdemod_top/demod_datout_TREADY -into $tb_demod_datout_group -color #ffff00 -radix hex
add_wave /apatb_apskdemod_top/demod_datout_TVALID -into $tb_demod_datout_group -color #ffff00 -radix hex
add_wave /apatb_apskdemod_top/demod_datout_TDATA -into $tb_demod_datout_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_demodq_group [add_wave_group demodq(axis) -into $tbcinputgroup]
add_wave /apatb_apskdemod_top/demodq_TREADY -into $tb_demodq_group -color #ffff00 -radix hex
add_wave /apatb_apskdemod_top/demodq_TVALID -into $tb_demodq_group -color #ffff00 -radix hex
add_wave /apatb_apskdemod_top/demodq_TDATA -into $tb_demodq_group -radix hex
set tb_demodi_group [add_wave_group demodi(axis) -into $tbcinputgroup]
add_wave /apatb_apskdemod_top/demodi_TREADY -into $tb_demodi_group -color #ffff00 -radix hex
add_wave /apatb_apskdemod_top/demodi_TVALID -into $tb_demodi_group -color #ffff00 -radix hex
add_wave /apatb_apskdemod_top/demodi_TDATA -into $tb_demodi_group -radix hex
save_wave_config apskdemod.wcfg
run all
quit

