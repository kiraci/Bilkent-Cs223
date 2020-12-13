`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2020 05:00:31 PM
// Design Name: 
// Module Name: ReduceSum
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


module ReduceSum#(parameter M = 8, N = 12)(

    input   clk, 
            buttonPushed,
            
    input   [M-1:0]value,
            value1,
            value2,
            value3,
            value4,
            value5,
            value6,
            value7,
            value8,
            value9,
            valueA,
            valueB,
            valueC,
            valueD,
            valueE,
            valueF,
            
    output  logic [N-1:0]sum
    
    );
    
    
    always_ff @(posedge clk)
    begin
        
        if( buttonPushed )
            sum <= value + value1 + value2 + value3 + value4 + value5 + value6 + value7 + value8 + value9 + valueA + valueB + valueC + valueD + valueE + valueF;
    
    end
    
endmodule
