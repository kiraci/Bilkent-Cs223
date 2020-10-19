`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2020 07:39:33 PM
// Design Name: 
// Module Name: Structural_FA_tb
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

module Structural_FA_tb;

    reg a, b, cin;
    wire sum, cout;

    Structural_FA uut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
    
	initial begin
	  #300;
	  #50 a=0; b=0; cin=0;
	  #50 a=0; b=0; cin=1;
	  #50 a=0; b=1; cin=0;
	  #50 a=0; b=1; cin=1;
	  #50 a=1; b=0; cin=0;
	  #50 a=1; b=0; cin=1;
	  #50 a=1; b=1; cin=0;
	  #50 a=1; b=1; cin=1;
	end
	
	initial $monitor($time,,"a=%d,b=%d,cin=%d, sum=%d, cout=%d", a,b,cin,sum,cout);

endmodule
