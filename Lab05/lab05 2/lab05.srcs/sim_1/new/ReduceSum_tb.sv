`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2020 05:06:10 PM
// Design Name: 
// Module Name: ReduceSum_tb
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


module ReduceSum_tb;

    logic clk, buttonPushed;
    logic [7:0] value,
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
                valueF;
     
     wire [11:0]sum;
     
     ReduceSum uut( 
                     .clk(clk),
                     .buttonPushed(buttonPushed),
                     
                     .value(value),
                     .value1(value1),
                     .value2(value2),
                     .value3(value3),
                     .value4(value4),
                     .value5(value5),
                     .value6(value6),
                     .value7(value7),
                     .value8(value8),
                     .value9(value9),
                     .valueA(valueA),
                     .valueB(valueB),
                     .valueC(valueC),
                     .valueD(valueD),
                     .valueE(valueE),
                     .valueF(valueF),
                     
                     .sum(sum)
                     );
                     
     initial
     begin
     
        #300;
        
        buttonPushed = 1;
        value = 8'b00110011 ; value1 = 8'b00110011 ; value2 = 8'b00110011 ; value3 = 8'b00110011 ; 
        value4 = 8'b00110011 ; value5 = 8'b00110011 ; value6 = 8'b00110011 ; value7 = 8'b00110011 ; 
        value8 = 8'b00110011 ; value9 = 8'b00110011 ; valueA = 8'b00110011 ; valueB = 8'b00110011 ; 
        valueC = 8'b00110011 ; valueD = 8'b00110011 ; valueE = 8'b00110011 ; valueF = 8'b00110011 ; 
        
        #70; 
        buttonPushed = 0;
        value = 8'b00000000 ; value1 = 8'b00110011 ; value2 = 8'b00110011 ; value3 = 8'b00110011 ; 
        value4 = 8'b00110011 ; value5 = 8'b0011000 ; value6 = 8'b01110011 ; value7 = 8'b00110011 ; 
        value8 = 8'b00110011 ; value9 = 8'b00110011 ; valueA = 8'b10110011 ; valueB = 8'b00110011 ; 
        valueC = 8'b00111011 ; valueD = 8'b00111011 ; valueE = 8'b00010011 ; valueF = 8'b00110011 ; 

        #70; 
        buttonPushed = 1;
        value = 8'b11111111 ; value1 = 8'b11111111 ; value2 = 8'b11111111 ; value3 = 8'b11111111 ; 
        value4 = 8'b11111111 ; value5 = 8'b11111111 ; value6 = 8'b11111111 ; value7 = 8'b11111111 ; 
        value8 = 8'b11111111 ; value9 = 8'b11111111 ; valueA = 8'b11111111 ; valueB = 8'b11111111 ; 
        valueC = 8'b11111111 ; valueD = 8'b11111111 ; valueE = 8'b11111111 ; valueF = 8'b11111111 ; 

        #70; 
        buttonPushed = 0;
        value = 8'b00110011 ; value1 = 8'b00111011 ; value2 = 8'b00010011 ; value3 = 8'b10010011 ; 
        value4 = 8'b00111011 ; value5 = 8'b00110011 ; value6 = 8'b00000011 ; value7 = 8'b00110011 ; 
        value8 = 8'b00110111 ; value9 = 8'b01110011 ; valueA = 8'b00110011 ; valueB = 8'b00010011 ; 
        valueC = 8'b00110111 ; valueD = 8'b10110011 ; valueE = 8'b00110011 ; valueF = 8'b00100011 ; 
     
     end                
                     
                     
      
     always
         begin
            #30; clk <= 1; 
            #30; clk <= 0;
         end
                     
endmodule





















