`timescale 1ns / 1ps


module ram_sim;
    parameter ADDR_WIDTH = 4;
    parameter DATA_WIDTH = 4;
    reg clk;
    reg oe;
    reg we;
    
    reg [ADDR_WIDTH - 1:0] addr;
    wire [DATA_WIDTH - 1:0] data;
    
    //use tmp data to model inout pin with high impedence
    reg [DATA_WIDTH - 1:0] tmp_data;
    
    ram myRamen(
    .clk(clk),
    .addr(addr),
    .data(data),
    .we(we),
    .oe(oe)
    );
    
    always #10 clk = ~clk;
    
    assign data_in = !oe ? tmp_data : 'hz;
    initial begin
        {clk, oe, addr, tmp_data} <= 0;
        
        //wait two clock cycles
        repeat (2) @ (posedge clk);
        
        for (integer i = 0; i < 2**ADDR_WIDTH; i = i+1)begin
            repeat (1) @(posedge clk) addr <= i; we <= 1; oe <= 0; tmp_data <= i;
        end
        
         for (integer i = 0; i < 2**ADDR_WIDTH; i = i+1)begin
            repeat (1) @(posedge clk) addr <= i; we <= 0; oe <= 1;
        end
        
        #20 $finish;
        
    end
    
endmodule
