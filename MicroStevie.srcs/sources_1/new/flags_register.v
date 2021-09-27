`timescale 1ns / 1ps


module flags_register# (
    parameter DATA_WIDTH = 1
    )(
    input clk,
    input in,
    input neg_flag,
    input clr,
    output control_flag
    );
    
    reg register;
  
    initial begin
        register <= 0;
    end
    
    always@(posedge clk) begin
        if(in)
           register <= neg_flag;
        if(clr)
           register <= 0;
    end    
    
    
    //input /output register accordign to signals
    assign control_flag = register;
endmodule
