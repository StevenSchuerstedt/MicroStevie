`timescale 1ns / 1ps


module ir_register_sim;
parameter DATA_WIDTH = 16;

reg clk;
reg inIR;
reg out1;
reg out2;
wire [DATA_WIDTH - 1 : 0] Bus;

ir_register myIR(
.clk(clk),
.in(inIR),
.out_1(out1),
.out_2(out2),
.data(Bus)
);

always #10 clk = ~clk;


 initial begin
        {clk, inIR, out1, out2} <= 0;
       #20
       out1 <= 1;
       
       #20 
       out1 <= 0;
       #10
       out2 <= 1;
        
        #200 $finish;
        
    end

endmodule
