`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2020 08:19:21 AM
// Design Name: 
// Module Name: Memory
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


module Memory #(parameter N = 4, M = 8)( input clk, writeEnable, [N-1:0]writeAddr, [M-1:0]writeData, [N-1:0]readAddr1, [N-1:0]readAddr2, output [M-1:0]readData1, [M-1:0]readData2 );
    
    logic [M-1:0]memory[N-1:0];
    
    always_ff @(posedge clk)
    begin
        if( writeEnable )
            memory[writeAddr] <= writeData;
    end
    
    assign readData1 = memory[readAddr1];
    assign readData2 = memory[readAddr2];

endmodule
