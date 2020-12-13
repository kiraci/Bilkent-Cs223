`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2020 08:34:00 AM
// Design Name: 
// Module Name: Memory_tb
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


module Memory_tb;

    logic clk, writeEnable;
    logic [15:0]writeAddr, readAddr1, readAddr2;
    logic [7:0]writeData;
    
    wire [7:0]readData1, readData2;

    Memory uut( .clk(clk), .writeEnable(writeEnable), .writeAddr(writeAddr), .writeData(writeData), .readAddr1(readAddr1), .readAddr2(readAddr2), .readData1(readData1), .readData2(readData2) ); 
    
    initial
        begin
        
            #300; 
            
            writeEnable = 1; writeAddr = 1'h0; writeData = 8'b00000011; readAddr1 = 1'h3; readAddr2 = 1'h0;
            #70; writeEnable = 0; writeAddr = 1'h0; writeData = 8'b10100011; readAddr1 = 1'h3; readAddr2 = 1'h0;
            #70;writeEnable = 1; writeAddr = 1'h3; writeData = 8'b10101011; readAddr1 = 1'h3; readAddr2 = 1'h0;
            #70;writeEnable = 1; writeAddr = 1'h5; writeData = 8'b00000011; readAddr1 = 1'h5; readAddr2 = 1'h0;
            #70;writeEnable = 1; writeAddr = 1'h4; writeData = 8'b00000011; readAddr1 = 1'h3; readAddr2 = 1'h4;            
           
        
        end
    
     always
           begin
               #30; clk <= 1; 
               #30; clk <= 0;
           end
     

endmodule
