`timescale 1ns / 1ps


module ALU_sim;

parameter DATA_WIDTH = 16;

reg [DATA_WIDTH - 1 : 0] A;
reg [DATA_WIDTH - 1 : 0] B;
wire [DATA_WIDTH - 1 : 0] C;
wire neg_flag;

ALU myAlu(
.A(A),
.B(B),
.C(C),
.neg_flag(neg_flag));

 initial begin
        {A, B} <= 0;
        
        #20
        A <= 10;
        B <= 11;
        #20
        A <= 23;
        B <= 7;
        #20
        
        A <= 10;
        B <= 15;
        
        
        #200 $finish;
        
    end

endmodule
