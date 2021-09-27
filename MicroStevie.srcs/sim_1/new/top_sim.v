`timescale 1ns / 1ps


module top_sim;


reg clk;


wire [6:0] ss;
wire [3:0] disable_seven_segment;

Top myTop(
.clk(clk),
.ss(ss),
.disable_seven_segment(disable_seven_segment)
);


always #10 clk = ~clk;


initial begin
    {clk} <= 0;
    
    //one complete clock cycle 20 ms, one execution cycle 16 clocks, 2 instruction
   
    //#(20*19*55) $finish;
end

endmodule
