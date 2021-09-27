`timescale 1ns / 1ps


module ir_register# (
    parameter DATA_WIDTH = 24
    )(
    input clk,
    input in,
    input out_1, //output first bits from data (from left to right)
    input out_2, //output second bits of data
    input out_3, //output third bits of data
    inout [DATA_WIDTH - 1:0] data
    );
    
    reg [DATA_WIDTH - 1 : 0] register;
    reg [DATA_WIDTH - 1 : 0] tmp_register;
    
   
    assign dataAlu = register;
    
    initial begin
        register <= 0;
        tmp_register <= 0;
    end
    
    always@(posedge clk) begin
        if(in)
           register <= data;
    end
    
     always@(posedge clk) begin
        if(out_1)
          // tmp_register <= register [DATA_WIDTH - 1 : ((DATA_WIDTH / 3) * 2)];
          tmp_register <= register [23 : 16];
        if(out_2)
          // tmp_register <= register [((DATA_WIDTH / 3) * 2) - 1 : (DATA_WIDTH / 3)];
          tmp_register <= register [15 : 8];
        if(out_3)
          // tmp_register <= register [(DATA_WIDTH / 3) - 1 : 0];
          tmp_register <= register [7 : 0];
    end
    
    //input /output register accordign to signals
    assign data = (out_1 | out_2 | out_3) & !in ? tmp_register : 'hz;
    
endmodule
