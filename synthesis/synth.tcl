set_db library ../libs/lib/sky130_tt_1.8_25_nldm.lib

read_hdl ../rtl/alu.v
read_hdl ../rtl/top.v

elaborate top

read_sdc ../constraints/top.sdc

check_design

syn_gen
syn_map
syn_opt

report_area > ../reports/area.rpt
report_timing > ../reports/timing.rpt
report_power > ../reports/power.rpt

write_hdl > ../layout/top_netlist.v
