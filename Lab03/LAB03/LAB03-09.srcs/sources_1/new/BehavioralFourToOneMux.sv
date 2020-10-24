`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2020 01:35:48 PM
// Design Name: 
// Module Name: BehavioralFourToOneMux
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


module BehavioralFourToOneMux( input a0, a1, a2, a3, input s0, s1, output y );

    assign y = a0 & ( ~s0 & ~s1 ) | a1 & ( s0 & ~s1 ) | a2 & ( ~s0 & s1 ) | a3 & ( s0 & s1 )  ;

endmodule
