`timescale 1ns / 1ps

module MicroStevie# (
    parameter CONTROL_WORD_WIDTH = 14,
    parameter DATA_WIDTH = 16,
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
    //pc_en
    //pc_out
    //pc_jmp
    //A_in
    //A_out
    //B_in
    //B_out
    //mar_in
    //mar_out
    //ir_in
    //ir_out
    //ALU_out
    //ram_we
    //ram_oe
    
    wire [CONTROL_WORD_WIDTH - 1 : 0] control_word;
    
    
    //control logic for one instruction
    control_logic myControl_logic(
    .clk(clk),
    .control_word(control_word)
    );
    
    
    //program counter
    program_counter myProgram_counter(
    .clk(clk),
    .jmp(control_word[11]),
    .en(control_word[13]),
    .out(control_word[12]),
    .jmp_address(bus[ADDR_WIDTH - 1 : 0]),
    .count(bus[ADDR_WIDTH - 1 : 0])
    );
    //Registers
    
    
    
    //Alu Registers
    register A(
    .clk(clk),
    .in(control_word[10]),
    .out(control_word[9]),
    .data(bus),
    .dataAlu(dataAluA)
    );
    
    register B(
    .clk(clk),
    .in(control_word[8]),
    .out(control_word[7]),
    .data(bus),
    .dataAlu(dataAluB)
    );
    
    //wires to alu directly
    wire [DATA_WIDTH - 1: 0] dataAluA;
    wire [DATA_WIDTH - 1: 0] dataAluB;
    
    //memory address register
    register mar(
    .clk(clk),
    .in(control_word[6]),
    .out(control_word[5]),
    .data(bus),
    .dataAlu(addressRam_wire)
    );
    
    //wire to ram directly
    
    wire [DATA_WIDTH - 1: 0] addressRam_wire;
    assign addressRam = addressRam_wire;
    
    //instruction register
    register ir(
    .clk(clk),
    .in(control_word[4]),
    .out(control_word[3]),
    .data(bus),
    .dataAlu()
    );
    
    //ALU (only subtract...)
    
    //ToDO: this wire does nothing....
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
