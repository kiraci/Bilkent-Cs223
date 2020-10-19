`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2020 07:35:26 PM
// Design Name: 
// Module Name: Structural_FA
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


module Structural_FA( input a, b, cin, output sum, cout );

    wire w1, w2, w3;
    
    xor xor1(w1, a, b);
    xor xor2(sum, w1, cin);
    
    and and1(w2, a, b);
    and and2(w3, w1, cin);
    
    or or1(cout, w2, w3);

endmodule
