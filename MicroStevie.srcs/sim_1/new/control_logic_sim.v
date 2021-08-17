`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2021 13:30:52
// Design Name: 
// Module Name: control_logic_sim
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


module control_logic_sim;
parameter CONTROL_WORD_WIDTH = 10;

reg clk;

always #10 clk = ~clk;

wire [CONTROL_WORD_WIDTH - 1:0] control_word;

control_logic myControl_logic(
.clk(clk),
.control_word(control_word)
);

initial begin
    {clk} <= 0;
    
    
    #200 $finish;
end

endmodule
