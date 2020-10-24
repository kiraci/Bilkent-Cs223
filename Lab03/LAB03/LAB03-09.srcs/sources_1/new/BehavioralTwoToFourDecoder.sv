`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2020 01:20:30 PM
// Design Name: 
// Module Name: BehavioralTwoToFourDecoder
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


module BehavioralTwoToFourDecoder( input a0, a1, output b0, b1, b2, b3 );

    assign b0 = a0 & a1;
    assign b1 = a0 & ~a1;
    assign b2 = ~a0 & a1;
    assign b3 = ~a0 & ~a1;

endmodule
