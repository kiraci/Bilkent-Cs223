`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2020 01:52:29 PM
// Design Name: 
// Module Name: MuxEightToOne
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


module MuxEightToOne( input a0, a1, a2, a3, a4, a5, a6, a7, input s0, s1, s2, output y );

    wire w0, w1, w2, w3, w4;
    
    BehavioralFourToOneMux mux0( a0, a1, a2, a3, s0, s1, w0 );
    BehavioralFourToOneMux mux1( a4, a5, a6, a7, s0 ,s1, w1 );
    
    not not0( w2, s2);
    and and0( w3, w0, w2 );
    
    and and1( w4, w1, s2 );
    
    or or0( y, w3, w4 );

endmodule
