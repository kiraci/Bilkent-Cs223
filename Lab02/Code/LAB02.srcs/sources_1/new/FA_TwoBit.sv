`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2020 07:59:53 PM
// Design Name: 
// Module Name: FA_TwoBit
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

module FA_TwoBit( input a0, a1, b0, b1, cin, output sum0, sum1, cout );

    wire w1;

    Structural_FA fullAdder1( a0, b0, cin, sum0, w1 );
    Structural_FA fullAdder2( a1, b1, w1, sum1, cout );

endmodule
