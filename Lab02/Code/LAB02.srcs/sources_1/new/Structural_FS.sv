`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2020 07:45:20 PM
// Design Name: 
// Module Name: Structural_FS
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


module Structural_FS( input a, b, bin, output dif, bout );
    
    wire w1;
    wire w2;
    wire w3;
    wire inversedA;
    wire inversedXor1;
    
    xor xor1( w1, a, b );
    xor xor2( dif, w1, bin );
    
    not not1( inversedA, a );
    not not2( inversedXor1, w1 );
    
    and and1( w2, inversedA, b );
    and and2( w3, inversedXor1, bin );
    
    or or1(bout, w2, w3);
    
endmodule
