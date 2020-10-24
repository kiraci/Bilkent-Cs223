`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2020 01:27:45 PM
// Design Name: 
// Module Name: BehavioralTwoToFourDecoder_tb
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


module BehavioralTwoToFourDecoder_tb;

    reg a0, a1;
    wire b0, b1, b2, b3;
    
    BehavioralTwoToFourDecoder uut( .a0(a0), .a1(a1), .b0(b0), .b1(b1), .b2(b2), .b3(b3) );
    
    initial
        begin
            #300
            
            #30; a0 = 0; a1 = 0;
            #30; a0 = 1; a1 = 0;
            #30; a0 = 0; a1 = 1;
            #30; a0 = 1; a1 = 1;
        end

endmodule
