`timescale 1ns / 1ps

module programcounter_sim;
//define variables needed for pc
parameter ADDR_WIDTH = 8;

reg clk;
reg jmp;
reg [ADDR_WIDTH - 1:0] jmp_address;
wire [ADDR_WIDTH - 1:0] count;

//create pc

program_counter myProgram_counter(
.clk(clk),
.jmp(jmp),
.jmp_address(jmp_address),
.count(count)
);


always #10 clk = ~clk;

    initial begin
        {clk, jmp, jmp_address} <= 0;
        //wait some clock cycles
         repeat (20) @ (posedge clk);
        
         jmp <= 1; jmp_address <= 5;
         repeat (1) @ (posedge clk);
         jmp <= 0;
        
        #200 $finish;
        
    end

endmodule
