`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2020 03:09:45 PM
// Design Name: 
// Module Name: SpecialFunction
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


module SpecialFunction( input A, B, C, D, output y );

    wire notD;
    
    not not0( notD, D );

    MuxEightToOne mux0( 1, notD, D, 1, notD, 0, 0, 1, A, B, C, y );

endmodule
