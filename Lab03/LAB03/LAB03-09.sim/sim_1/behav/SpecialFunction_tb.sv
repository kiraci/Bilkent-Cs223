`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2020 03:16:41 PM
// Design Name: 
// Module Name: SpecialFunction_tb
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


module SpecialFunction_tb;

    reg A, B, C, D;
    wire y;
    
    SpecialFunction uut( .A(A), .B(B), .C(C), .D(D), .y(y) );
    
    initial
        begin
           #300
           
           #30; A=0; B=0; C=0; D=0;
           #30; A=1; B=0; C=0; D=0;
           #30; A=0; B=1; C=0; D=0;
           #30; A=1; B=1; C=0; D=0;
           #30; A=0; B=0; C=1; D=0;
           #30; A=1; B=0; C=1; D=0;
           #30; A=0; B=1; C=1; D=0;
           #30; A=1; B=1; C=1; D=0;
           #30; A=0; B=0; C=0; D=1;
           #30; A=1; B=0; C=0; D=1;
           #30; A=0; B=1; C=0; D=1;
           #30; A=1; B=1; C=0; D=1;
           #30; A=0; B=0; C=1; D=1;
           #30; A=1; B=0; C=1; D=1;
           #30; A=0; B=1; C=1; D=1;
           #30; A=1; B=1; C=1; D=1;
            
        end

endmodule
