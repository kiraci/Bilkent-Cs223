`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2020 07:04:16 PM
// Design Name: 
// Module Name: BehavioralFa
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

module BehavioralFa( input a, b, cin, output sum, cout );
    
    assign sum = ( a ^ b ) ^ cin ;
    assign cout = ( a & b ) | ( a ^ b ) & cin ;

endmodule
