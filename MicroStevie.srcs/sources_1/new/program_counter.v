`timescale 1ns / 1ps

module program_counter# (parameter ADDR_WIDTH = 8
    )
    (
    input clk,
    input jmp,
    input en,
    input out,
    input [ADDR_WIDTH - 1:0] jmp_address,
    output [ADDR_WIDTH - 1:0] count
    );
    reg [ADDR_WIDTH - 1:0] current_count;
    
    initial begin
        current_count <= 3;
    end
    
    always@ (posedge clk) 
        begin
        if(!jmp & en)
            current_count <= current_count + 1;
        end
        
     always@ (posedge clk) 
        begin
        if(jmp)
            current_count <= jmp_address;
        end
    
    assign count = out ? current_count : 'hz;
endmodule
