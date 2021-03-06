# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Administrator/Desktop/lab05/lab05.cache/wt [current_project]
set_property parent.project_path C:/Users/Administrator/Desktop/lab05/lab05.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib -sv {
  C:/Users/Administrator/Desktop/lab05/lab05.srcs/sources_1/new/ReduceSum.sv
  C:/Users/Administrator/Desktop/lab05/lab05.srcs/sources_1/new/SevenSegment.sv
  C:/Users/Administrator/Desktop/lab05/lab05.srcs/sources_1/new/Memory.sv
  C:/Users/Administrator/Desktop/lab05/lab05.srcs/sources_1/new/Debouncer.sv
  C:/Users/Administrator/Desktop/lab05/lab05.srcs/sources_1/new/TopDesign.sv
}
read_xdc C:/Users/Administrator/Desktop/lab05/lab05.srcs/constrs_1/new/basis.xdc
set_property used_in_implementation false [get_files C:/Users/Administrator/Desktop/lab05/lab05.srcs/constrs_1/new/basis.xdc]

synth_design -top TopDesign -part xc7a35tcpg236-1
write_checkpoint -noxdef TopDesign.dcp
catch { report_utilization -file TopDesign_utilization_synth.rpt -pb TopDesign_utilization_synth.pb }
