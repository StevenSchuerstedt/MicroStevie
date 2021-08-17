`timescale 1ns / 1ps

module register# (
    parameter DATA_WIDTH = 16
    )(
    input clk,
    input in,
    input out,
    inout [DATA_WIDTH - 1:0] data,
    output [DATA_WIDTH - 1:0] dataAlu
    );
    
    reg [DATA_WIDTH - 1 : 0] register;
    reg [DATA_WIDTH - 1 : 0] tmp_register;
    
   
    assign dataAlu = register;
    
    initial begin
        register <= 0;
    end
    
    always@(posedge clk) begin
        if(in)
           register <= data;
    end
    
     always@(posedge clk) begin
        if(out)
           tmp_register <= register;
    end
    
    //input /output register accordign to signals
    assign data = out & !in ? tmp_register : 'hz;
    
    
endmodule
