`timescale 1ns / 1ps

module MicroStevie# (
    parameter CONTROL_WORD_WIDTH = 18,
    parameter DATA_WIDTH = 24,
    parameter ADDR_WIDTH = 8
    )(
    input clk,
    output ram_oe,
    output ram_we,
    output [DATA_WIDTH - 1: 0] addressRam,
    output [DATA_WIDTH - 1 : 0] bus
    );
    
    //define processor here
    
    //control word
    //fr_clr -- 17
    //fr_in -- 16
    //pc_en -- 15
    //pc_out -- 14
    //pc_jmp -- 13
    //A_in -- 12
    //A_out -- 11
    //B_in -- 10
    //B_out -- 9
    //mar_in -- 8
    //mar_out -- 7
    //ir_in -- 6
    //ir_out1 -- 5
    //ir_out2 -- 4
    //ir_out3 -- 3
    //ALU_out -- 2
    //ram_we -- 1
    //ram_oe -- 0
    
    
    wire [CONTROL_WORD_WIDTH - 1 : 0] control_word;
    
    wire control_flag;

    //control logic for one instruction
    control_logic myControl_logic(
    .clk(clk),
    .control_flag(control_flag),
    .control_word(control_word)
    );
    
    
    //program counter
    program_counter myProgram_counter(
    .clk(clk),
    .jmp(control_word[13]),
    .en(control_word[15]),
    .out(control_word[14]),
    .jmp_address(bus[ADDR_WIDTH - 1 : 0]),
    .count(bus[ADDR_WIDTH - 1 : 0])
    );
    //Registers
    
    
    
    //Alu Registers
    register A(
    .clk(clk),
    .in(control_word[12]),
    .out(control_word[11]),
    .data(bus),
    .dataAlu(dataAluA)
    );
    
    register B(
    .clk(clk),
    .in(control_word[10]),
    .out(control_word[9]),
    .data(bus),
    .dataAlu(dataAluB)
    );
    
    //wires to alu directly
    wire [DATA_WIDTH - 1: 0] dataAluA;
    wire [DATA_WIDTH - 1: 0] dataAluB;
    
    //memory address register
    register mar(
    .clk(clk),
    .in(control_word[8]),
    .out(control_word[7]),
    .data(bus),
    .dataAlu(addressRam_wire)
    );
    
    //wire to ram directly
    
    wire [DATA_WIDTH - 1: 0] addressRam_wire;
    assign addressRam = addressRam_wire;
    
    //instruction register
    ir_register ir(
    .clk(clk),
    .in(control_word[6]),
    .out_1(control_word[5]),
    .out_2(control_word[4]),
    .out_3(control_word[3]),
    .data(bus)
    );
    
    //flags register
    
    flags_register fr(
    .clk(clk),
    .in(control_word[16]),
    .neg_flag(neg_flag),
    .clr(control_word[17]),
    .control_flag(control_flag)
    );
    
    //ALU (only subtract...)
    
    wire neg_flag;
    ALU myALU(
    .A(dataAluA),
    .B(dataAluB),
    .out(control_word[2]),
    .C(bus),
    .neg_flag(neg_flag)
    );
    
    //ram signals
    assign ram_we = control_word[1];
    assign ram_oe = control_word[0];
    
endmodule
