`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2021 11:44:55
// Design Name: 
// Module Name: ALU
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


module ALU# (
    parameter DATA_WIDTH = 16
    )
    (
    input [DATA_WIDTH - 1:0] A,
    input [DATA_WIDTH - 1:0] B,
    input out,
    output [DATA_WIDTH - 1:0] C,
    output neg_flag
    );
    
    assign C = out ? A - B : 'hz;
    
    assign neg_flag = C > 2**(DATA_WIDTH - 1) ? 1 : 0;
    
endmodule
