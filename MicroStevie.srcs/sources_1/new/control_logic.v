`timescale 1ns / 1ps

module control_logic# (
    parameter CONTROL_WORD_WIDTH = 14,
    parameter RING_COUNTER_WIDTH = 3
    )(
    //an input would be the specific instruction, but since we only have one instruction no input needed
    input clk,
    output [CONTROL_WORD_WIDTH - 1 : 0] control_word
    );
    
    reg [CONTROL_WORD_WIDTH - 1 : 0] control_word_reg;

    //define ring counter for the execution steps
    reg [RING_COUNTER_WIDTH - 1 : 0] ring_counter;
    initial begin
        ring_counter <= 0;
        control_word_reg <= 0;
    end
    
     always@ (posedge clk) 
        begin
            ring_counter <= ring_counter + 1;
        end
    
    
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
    
    always@ (ring_counter) begin
        case(ring_counter)
        //fetch cylce, fetch instruction from ram into instruction register
            3'b000 : control_word_reg = 14'b11000001000000; //pc_en, pc_out, mar_in
            3'b001 : control_word_reg = 14'b00000000000000; //wait
            3'b010 : control_word_reg = 14'b00000000010001; //ir_in, ram_oe
            3'b011 : control_word_reg = 14'b00000000010001; //ir_in, ram_oe
        //execution cycle, execute SUBLEQ instruction
        //for now lets just test subtraction of 2 values
            3'b100 : control_word_reg = 10'b0000010000;
            3'b101 : control_word_reg = 10'b0000100000;
            3'b110 : control_word_reg = 10'b0001000000;
            3'b111 : control_word_reg = 10'b0010000000;
        endcase
    
    end
    
    assign control_word = control_word_reg;
  
    
endmodule
