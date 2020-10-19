`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2020 08:04:41 PM
// Design Name: 
// Module Name: FA_TwoBit_tb
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


module FA_TwoBit_tb;

    reg a0, a1, b0, b1, cin;
    wire sum0, sum1, cout;

    FA_TwoBit uut( .a0(a0), .a1(a1), .b0(b0), .b1(b1), .cin(cin), .sum0(sum0), .sum1(sum1), .cout(cout));
    
    initial begin
      #100;
      #10 a0 = 0;  a1=0; b0=0;  b1=0; cin=0;
      #10 a0=0;  a1=0; b0=0;  b1=1; cin=0;
      #10 a0=0;  a1=0; b0=1;  b1=0; cin=0;
      #10 a0=0;  a1=0; b0=1;  b1=1; cin=0;
      #10 a0=0;  a1=1; b0=0;  b1=0; cin=0;
      #10 a0=0;  a1=1; b0=0;  b1=1; cin=0;
      #10 a0=0;  a1=1; b0=1;  b1=0; cin=0;
      #10 a0=0;  a1=1; b0=1;  b1=1; cin=0;
      #10 a0=1;  a1=1; b0=0;  b1=0; cin=0;
      #10 a0=1;  a1=0; b0=0;  b1=1; cin=0;
      #10 a0=1;  a1=0; b0=1;  b1=0; cin=0;
      #10 a0=1;  a1=0; b0=1;  b1=1; cin=0;
      #10 a0=1;  a1=1; b0=0;  b1=0; cin=0;
      #10 a0=1;  a1=1; b0=0;  b1=1; cin=0;
      #10 a0=1;  a1=1; b0=1;  b1=0; cin=0;
      #10 a0=1;  a1=1; b0=1;  b1=1; cin=0;
      #10 a0=0;  a1=0; b0=0;  b1=0; cin=1;
      #10 a0=0;  a1=0; b0=0;  b1=1; cin=1;
      #10 a0=0;  a1=0; b0=1;  b1=0; cin=1;
      #10 a0=0;  a1=0; b0=1;  b1=1; cin=1;
      #10 a0=0;  a1=1; b0=0;  b1=0; cin=1;
      #10 a0=0;  a1=1; b0=0;  b1=1; cin=1;
      #10 a0=0;  a1=1; b0=1;  b1=0; cin=1;
      #10 a0=0;  a1=1; b0=1;  b1=1; cin=1;
      #10 a0=1;  a1=1; b0=0;  b1=0; cin=1;
      #10 a0=1;  a1=0; b0=0;  b1=1; cin=1;
      #10 a0=1;  a1=0; b0=1;  b1=0; cin=1;
      #10 a0=1;  a1=0; b0=1;  b1=1; cin=1;
      #10 a0=1;  a1=1; b0=0;  b1=0; cin=1;
      #10 a0=1;  a1=1; b0=0;  b1=1; cin=1;
      #10 a0=1;  a1=1; b0=1;  b1=0; cin=1;
      #10 a0=1;  a1=1; b0=1;  b1=1; cin=1;
    end
	
	initial $monitor($time,,"a0=%b, a1=%b, b0=%b, b1=%b, cin=%b, sum0=%b, sum1=%b, cout=%b", a0,a1,b0,b1,cin,sum0,sum1,cout);

endmodule
