`timescale 1ns / 1ps

module control_logic# (
    parameter CONTROL_WORD_WIDTH = 18,
    parameter RING_COUNTER_WIDTH = 5
    )(
    //an input would be the specific instruction, but since we only have one instruction no input needed
    input clk,
    input control_flag,
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
            if(ring_counter == 5'b10010)
                ring_counter <= 0; //finished execution cycle, reset ring counter
            ring_counter <= ring_counter + 1;       
        end
    
    
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
    
    always@ (ring_counter) begin
        case(ring_counter)
        //fetch cylce, fetch instruction (or rather only the operands) from ram into instruction register
            5'b00000 : control_word_reg = 18'b001100000100000000; //pc_en, pc_out, mar_in
            5'b00001 : control_word_reg = 18'b000000000000000000; //wait
            5'b00010 : control_word_reg = 18'b000000000001000001; //ir_in, ram_oe
            5'b00011 : control_word_reg = 18'b000000000001000001; //ir_in, ram_oe
        //execution cycle, execute SUBLEQ instruction
        //for now lets just test subtraction of 2 values
        
        //load first ram entry to register A
            5'b00100 : control_word_reg = 18'b000000000100100000; //ir_out1, mar_in
            5'b00101 : control_word_reg = 18'b000000000100100000; //ir_out1, mar_in
            5'b00110 : control_word_reg = 18'b000001000000000001; //A_in, ram_oe
            5'b00111 : control_word_reg = 18'b000001000000000001; //A_in, ram_oe
        
        //load secomd ram entry to register B
            5'b01000 : control_word_reg = 18'b000000000100010000; //ir_out2, mar_in
            5'b01001 : control_word_reg = 18'b000000000100010000; //ir_out2, mar_in
            5'b01010 : control_word_reg = 18'b000000010000000001; //B_in, ram_oe
            5'b01011 : control_word_reg = 18'b000000010000000001; //B_in, ram_oe
        
        //load ALU result into RAM and check for flags
            5'b01100 : control_word_reg = 18'b010000000000000110; //ALU_out, ram_we, fr_in
            5'b01101 : control_word_reg = 18'b010000000000000110; //ALU_out, ram_we, fr_in
        //branch if needed    
            5'b01110 : control_word_reg = control_flag ? 18'b000010000000001000 : 18'b000000000000000000; //pc_jmp, ir_out3
            5'b01111 : control_word_reg = control_flag ? 18'b000010000000001000 : 18'b000000000000000000; //pc_jmp, ir_out3
            5'b10000 : control_word_reg = control_flag ? 18'b100000000000000000 : 18'b000000000000000000; //fr_clr
            5'b10001 : control_word_reg = control_flag ? 18'b100000000000000000 : 18'b000000000000000000; //fr_clr
           // 5'b10010 : ring_counter <= 0; //finished execution cycle, reset ring counter
            
        endcase
    
    end
    
    assign control_word = control_word_reg;
  
    
endmodule
