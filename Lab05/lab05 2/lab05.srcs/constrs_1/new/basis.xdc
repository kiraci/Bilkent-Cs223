## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
#	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
 
## Switches
set_property PACKAGE_PIN V17 [get_ports {inputData[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {inputData[0]}]
set_property PACKAGE_PIN V16 [get_ports {inputData[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {inputData[1]}]
set_property PACKAGE_PIN W16 [get_ports {inputData[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {inputData[2]}]
set_property PACKAGE_PIN W17 [get_ports {inputData[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {inputData[3]}]
set_property PACKAGE_PIN W15 [get_ports {inputData[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {inputData[4]}]
set_property PACKAGE_PIN V15 [get_ports {inputData[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {inputData[5]}]
set_property PACKAGE_PIN W14 [get_ports {inputData[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {inputData[6]}]
set_property PACKAGE_PIN W13 [get_ports {inputData[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {inputData[7]}]

set_property PACKAGE_PIN T3 [get_ports {reset}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {reset}]

set_property PACKAGE_PIN U1 [get_ports {inputAddr[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {inputAddr[0]}]
set_property PACKAGE_PIN T1 [get_ports {inputAddr[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {inputAddr[1]}]
set_property PACKAGE_PIN R2 [get_ports {inputAddr[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {inputAddr[2]}]

## LEDs
set_property PACKAGE_PIN U16 [get_ports {summation[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {summation[0]}]
set_property PACKAGE_PIN E19 [get_ports {summation[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {summation[1]}]
set_property PACKAGE_PIN U19 [get_ports {summation[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {summation[2]}]
set_property PACKAGE_PIN V19 [get_ports {summation[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {summation[3]}]
set_property PACKAGE_PIN W18 [get_ports {summation[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {summation[4]}]
set_property PACKAGE_PIN U15 [get_ports {summation[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {summation[5]}]
set_property PACKAGE_PIN U14 [get_ports {summation[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {summation[6]}]
set_property PACKAGE_PIN V14 [get_ports {summation[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {summation[7]}]
set_property PACKAGE_PIN V13 [get_ports {summation[8]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {summation[8]}]
set_property PACKAGE_PIN V3 [get_ports {summation[9]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {summation[9]}]
set_property PACKAGE_PIN W3 [get_ports {summation[10]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {summation[10]}]
set_property PACKAGE_PIN U3 [get_ports {summation[11]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {summation[11]}]

	
set_property PACKAGE_PIN W7 [get_ports {seg[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]
set_property PACKAGE_PIN W6 [get_ports {seg[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]
set_property PACKAGE_PIN U8 [get_ports {seg[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]
set_property PACKAGE_PIN V8 [get_ports {seg[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]
set_property PACKAGE_PIN U5 [get_ports {seg[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]
set_property PACKAGE_PIN V5 [get_ports {seg[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]
set_property PACKAGE_PIN U7 [get_ports {seg[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]

set_property PACKAGE_PIN V7 [get_ports dp]							
	set_property IOSTANDARD LVCMOS33 [get_ports dp]

set_property PACKAGE_PIN U2 [get_ports {an[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
set_property PACKAGE_PIN U4 [get_ports {an[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
set_property PACKAGE_PIN V4 [get_ports {an[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
set_property PACKAGE_PIN W4 [get_ports {an[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]

set_property PACKAGE_PIN U18 [get_ports runReduceSum]						
	set_property IOSTANDARD LVCMOS33 [get_ports runReduceSum]
set_property PACKAGE_PIN T18 [get_ports enterData]						
	set_property IOSTANDARD LVCMOS33 [get_ports enterData]
set_property PACKAGE_PIN W19 [get_ports displayPreviousData]						
	set_property IOSTANDARD LVCMOS33 [get_ports displayPreviousData]
set_property PACKAGE_PIN T17 [get_ports displayNextData]						
	set_property IOSTANDARD LVCMOS33 [get_ports displayNextData]

