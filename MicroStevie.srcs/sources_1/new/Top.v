`timescale 1ns / 1ps

module Top# (
    parameter DATA_WIDTH = 16,
    parameter ADDR_WIDTH = 8
    )(
    input clk,
    //addr and data to test ram module
    input [7:0] addr,
    output [15:0] data
    );
       
    reg clk_slow = 0;
    reg [2:0] counter = 0;
    always@ (posedge clk) 
     begin
        counter = counter + 1;
     end
     
     always@ (posedge clk) 
     begin
        if(counter >= 3)
            clk_slow = ~clk_slow;
     end
    //create processor
    
    wire ram_oe;
    wire ram_we;
    wire [DATA_WIDTH - 1 : 0] bus;
    wire [DATA_WIDTH - 1 : 0] addressRam;
    
    MicroStevie myMicroStevie(
    .clk(clk),
    .ram_oe(ram_oe),
    .ram_we(ram_we),
    .addressRam(addressRam),
    .bus(bus));
    
    //create some RAM
     ram myRamen(
    .clk(clk),
    .addr(addressRam[ADDR_WIDTH - 1 : 0]),
    .data(bus),
    .we(ram_we),
    .oe(ram_oe)
    );
     
    //fill RAM with program and data
    
    //create 7Seg controller for output

    
endmodule
