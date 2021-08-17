`timescale 1ns / 1ps


module top_sim;


reg clk;

//not needed actually
reg [7:0] addr;
wire [15:0] data;


Top myTop(
.clk(clk),
.addr(addr),
.data(data)
);


always #10 clk = ~clk;


initial begin
    {clk, addr} <= 0;
    
    #200 $finish;
end

endmodule
