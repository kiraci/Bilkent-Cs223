`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2020 01:58:07 PM
// Design Name: 
// Module Name: MuxEightToOne_tb
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


module MuxEightToOne_tb;

    reg a0, a1, a2, a3, a4, a5, a6, a7;
    reg s0, s1, s2;
    wire y;
    
    MuxEightToOne uut( .a0(a0), .a1(a1), .a2(a2), .a3(a3), .a4(a4), .a5(a5), .a6(a6), .a7(a7), .s0(s0), .s1(s1), .s2(s2), .y(y) );

    initial
        begin
            #300
            
            #30; a0=1; a1=0; a2=0; a3=0; a4=0; a5=0; a6=0; a7=0; s0=0; s1=0; s2=0;
            #30; a0=0; a1=1; a2=0; a3=0; a4=0; a5=0; a6=0; a7=0; s0=1; s1=0; s2=0;
            #30; a0=0; a1=0; a2=1; a3=0; a4=0; a5=0; a6=0; a7=0; s0=0; s1=1; s2=0;
            #30; a0=0; a1=1; a2=0; a3=1; a4=0; a5=0; a6=0; a7=0; s0=1; s1=1; s2=0;
            #30; a0=0; a1=0; a2=0; a3=0; a4=1; a5=0; a6=0; a7=0; s0=0; s1=0; s2=1;
            #30; a0=0; a1=1; a2=0; a3=0; a4=0; a5=1; a6=0; a7=0; s0=1; s1=0; s2=1;
            #30; a0=0; a1=0; a2=1; a3=0; a4=0; a5=0; a6=1; a7=0; s0=0; s1=1; s2=1;
            #30; a0=0; a1=0; a2=0; a3=0; a4=0; a5=0; a6=0; a7=1; s0=1; s1=1; s2=1;
            
        end

endmodule
