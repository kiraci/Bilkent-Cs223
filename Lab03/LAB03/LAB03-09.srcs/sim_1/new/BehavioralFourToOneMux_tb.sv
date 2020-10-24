`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2020 01:40:16 PM
// Design Name: 
// Module Name: BehavioralFourToOneMux_tb
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


module BehavioralFourToOneMux_tb;
    
    reg a0, a1, a2, a3, s0, s1;
    wire y;
    
    BehavioralFourToOneMux uut ( .a0(a0), .a1(a1), .a2(a2), .a3(a3), .s0(s0), .s1(s1), .y(y) );

    initial
        begin
            #300
            
            #30; a0=1; a1=0; a2=0; a3=0; s0=0; s1=0;
            #30; a0=0; a1=1; a2=0; a3=0; s0=1; s1=0;
            #30; a0=0; a1=0; a2=1; a3=0; s0=0; s1=1;
            #30; a0=0; a1=0; a2=0; a3=1; s0=1; s1=1;
        end
    
endmodule
