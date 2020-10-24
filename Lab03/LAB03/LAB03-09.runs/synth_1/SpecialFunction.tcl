# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Administrator/Desktop/LAB03-09/LAB03-09.cache/wt [current_project]
set_property parent.project_path C:/Users/Administrator/Desktop/LAB03-09/LAB03-09.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib -sv {
  C:/Users/Administrator/Desktop/LAB03-09/LAB03-09.srcs/sources_1/new/BehavioralFourToOneMux.sv
  C:/Users/Administrator/Desktop/LAB03-09/LAB03-09.srcs/sources_1/new/MuxEightToOne.sv
  C:/Users/Administrator/Desktop/LAB03-09/LAB03-09.srcs/sources_1/new/SpecialFunction.sv
}
read_xdc C:/Users/Administrator/Desktop/Basys3.xdc
set_property used_in_implementation false [get_files C:/Users/Administrator/Desktop/Basys3.xdc]

synth_design -top SpecialFunction -part xc7a35tcpg236-1
write_checkpoint -noxdef SpecialFunction.dcp
catch { report_utilization -file SpecialFunction_utilization_synth.rpt -pb SpecialFunction_utilization_synth.pb }
