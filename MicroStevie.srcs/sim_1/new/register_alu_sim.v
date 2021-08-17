`timescale 1ns / 1ps

module register_alu_sim;
parameter DATA_WIDTH = 16;

reg clk;
reg inA;
reg outA;
reg inB;
reg outB;
reg outAlu;
wire neg_flag;

reg [DATA_WIDTH - 1 : 0] dataA;
reg [DATA_WIDTH - 1 : 0] dataB;
reg [DATA_WIDTH - 1 : 0] BusRegister;
wire [DATA_WIDTH - 1 : 0] Bus;
wire [DATA_WIDTH - 1 : 0] dataAluA;
wire [DATA_WIDTH - 1 : 0] dataAluB;

register A(
.clk(clk),
.in(inA),
.out(outA),
.data(Bus),
.dataAlu(dataAluA)
);

register B(
.clk(clk),
.in(inB),
.out(outB),
.data(Bus),
.dataAlu(dataAluB)
);

ALU myAlu(
.A(dataAluA),
.B(dataAluB),
.out(outAlu),
.C(Bus),
.neg_flag(neg_flag));

//dont use busregister, but use ram to fill registers with data?
assign Bus = BusRegister;
always #10 clk = ~clk;

    initial begin
        {clk, inA, outA, inB, outB, outAlu, dataA, dataB, BusRegister} <= 0;
        
        //load value to bus
        BusRegister <= 8;
        //load value in A
        inA <= 1;
        #20
        inA <= 0;
        #10
        
        BusRegister <= 2;
        //load value in B
        inB <= 1;
        #20
        inB <= 0;
        #10
        
       
        outAlu <= 1; 
        
        #200 $finish;
        
    end


endmodule
