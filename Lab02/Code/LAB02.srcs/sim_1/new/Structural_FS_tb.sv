`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2020 07:50:32 PM
// Design Name: 
// Module Name: Structural_FS_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Structural_FS_tb;

    reg a, b, bin;
    wire dif, bout;

    Structural_FS uut(.a(a), .b(b), .bin(bin), .dif(dif), .bout(bout));
    
	initial begin
	  #300;
	  #50 a=0; b=0; bin=0;
	  #50 a=0; b=0; bin=1;
	  #50 a=0; b=1; bin=0;
	  #50 a=0; b=1; bin=1;
	  #50 a=1; b=0; bin=0;
	  #50 a=1; b=0; bin=1;
	  #50 a=1; b=1; bin=0;
	  #50 a=1; b=1; bin=1;
	end
	
	initial $monitor($time,,"a=%d,b=%d,bin=%d, dif=%d, bout=%d", a,b,bin,dif,bout);

endmodule
