`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2020 05:23:00 PM
// Design Name: 
// Module Name: TopDesign
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


module TopDesign(
    
    input clk,
          displayPreviousData,
          displayNextData,
          enterData,
          runReduceSum,
          reset,
    
    input [2:0]inputAddr,
    
    input [7:0]inputData,
    
    output logic [11:0]summation,
    
    output logic dp,
    
    output logic [6:0] seg,
    
    output logic [3:0] an
    
    );
    
    logic displayPreviousDataD, displayNextDataD, enterDataD, runReduceSumD;
    
    Debouncer debouncer( clk, displayPreviousData, displayPreviousDataD );
    Debouncer debouncer1( clk, displayNextData, displayNextDataD );
    Debouncer debouncer2( clk, enterData, enterDataD );
    Debouncer debouncer3( clk, runReduceSum, runReduceSumD );
    
    logic seg, dp, an;
    logic [7:0] ramData;
    logic [3:0] addr;
    logic [7:0] data;
    
    SevenSegment sevenSegment( clk, addr, 16, ramData[7:4], ramData[3:0], seg, dp, an );
    
    logic [7:0]readData1, readData2;
    logic [3:0]readAddr1, readAddr2;
    
    Memory memory( clk, enterDataD, addr, data, readAddr1, readAddr1, readData1, readData2 );
    
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
    
    
    ReduceSum reduceSum(

            clk, 
            enterDataD,
            
            value,
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
            
            summation
    
    );
    
    logic currentAddr;
    
    typedef enum logic [2:0] { init, waitInput, sum, displayPrevious, displayNext, enteringData } State;
    
    State currentState, nextState;
    
    always_ff @(posedge clk)
    
    
        if( reset ) currentState <= init;
        else        currentState <= nextState;
        
        always_comb
        
            case( currentState )
                
                init: nextState = waitInput;
                
                waitInput:
                    if ( displayPreviousData ) nextState = displayPrevious;
                    else if ( displayNextData ) nextState = displayNext;
                    else if ( enterData ) nextState = enteringData;
                    else if ( runReduceSum ) nextState = sum;
                
                sum: nextState = waitInput;
                
                displayPrevious: nextState = waitInput;
                
                displayNext: nextState = waitInput;
                
                enteringData: nextState = waitInput;
                    
            endcase    
          
          
          always_comb 
          
            case( currentState )
            
            init: 
                begin
                    
                    addr <= 0;
                    currentAddr <= 0;
                    
                end
            
            waitInput:
                begin
                    
                    
                    
                end
            
            sum: 
                begin
                
                readAddr1 <= 4'b0000;
                readAddr2 <= 4'b0001;
                
                value <= readData1;
                value1 <= readData2;
                //-----------------------
                readAddr1 <= 4'b0010;
                readAddr2 <= 4'b0011;
                
                value2 <= readData1;
                value3 <= readData2;
                //-----------------------
                readAddr1 <= 4'b0100;
                readAddr2 <= 4'b0101;
                
                value4 <= readData1;
                value5 <= readData2;
                //-----------------------
                readAddr1 <= 4'b0110;
                readAddr2 <= 4'b0111;
                
                value6 <= readData1;
                value7 <= readData2;
                //-----------------------
                readAddr1 <= 4'b1000;
                readAddr2 <= 4'b1001;
                
                value8 <= readData1;
                value9 <= readData2;
                //-----------------------
                readAddr1 <= 4'b1010;
                readAddr2 <= 4'b1011;
                
                valueA <= readData1;
                valueB <= readData2;
                //-----------------------
                readAddr1 <= 4'b1100;
                readAddr2 <= 4'b1101;
                
                valueC <= readData1;
                valueD <= readData2;
                //-----------------------
                readAddr1 <= 4'b1110;
                readAddr2 <= 4'b1111;
                
                valueE <= readData1;
                valueF <= readData2;
                    
                    
                end
            
            displayPrevious: 
                begin
                    
                    if( addr == 4'b0000 )
                        addr <= 4'b1101;
                    else 
                        addr <= addr - 4'b0001;
                        
                    readAddr1 <= addr;
                    ramData <= readData1;
                    
                end
            
            displayNext: 
                begin
                    
                    if( addr == 4'b1101 )
                        addr <= 4'b0000;
                    else 
                        addr <= addr + 4'b0001;
                    
                    readAddr1 <= addr;
                    ramData <= readData1;
                    
                end
            
            enteringData: 
                begin
                    
                    addr <= inputAddr;
                    ramData <= inputData;
                    
                end
            
            endcase
          
          
    
endmodule
