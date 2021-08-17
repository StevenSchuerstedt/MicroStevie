`timescale 1ns / 1ps


module ram
# (parameter ADDR_WIDTH = 8,
    parameter DATA_WIDTH = 16
    )
(
    input clk,
    input [ADDR_WIDTH - 1:0] addr,
    inout [DATA_WIDTH - 1:0] data,
    input we,
    input oe
    );
    
    //the actual ram
    //reg [a] blub [b] = b x a
    //depth is not really binary! beware
    reg [DATA_WIDTH - 1:0] mem [2**ADDR_WIDTH - 1:0];
    reg [DATA_WIDTH - 1:0] tmp_data;
    
   /*
    //initialize ram with some data
     reg [7:0] i;
    initial begin
        for(i = 0; i < 2**8; i = i + 1) begin
        mem[i] <= i;
        end
    end
    */
    
    initial begin
        mem[0] <= 7;
        mem[1] <= 9;
        mem[2] <= 43;
        mem[3] <= 42;
    end
    
    always@ (posedge clk) 
        begin
            if(we)
                mem[addr] <= data;
        end
        
     always@ (posedge clk) 
        begin
            if(!we)
                tmp_data <= mem[addr];
        end
        
       assign data = oe & !we ? tmp_data : 'hz;
endmodule
