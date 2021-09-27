`timescale 1ns / 1ps

module Top# (
    parameter DATA_WIDTH = 24,
    parameter ADDR_WIDTH = 8
    )(
    input clk,
    output [6:0] ss,
    output [15:0] led,
    output reg [3:0] disable_seven_segment
    );
       
    reg clk_slow = 0;
    reg [16:0] counter = 0;
    always@ (posedge clk) 
     begin
        counter = counter + 1;
     end
     
     always@ (posedge clk) 
     begin
        if(counter >= 131072 - 1)
        begin
            clk_slow = ~clk_slow;
            test_register <= test_register + 1;
        end
     end
     
     //TODO: slow clock not working, but normal is?? why???
     
    //create processor
    
    wire ram_oe;
    wire ram_we;
    wire [DATA_WIDTH - 1 : 0] bus;
    wire [DATA_WIDTH - 1 : 0] addressRam;
    
    MicroStevie myMicroStevie(
    .clk(clk_slow),
    .ram_oe(ram_oe),
    .ram_we(ram_we),
    .addressRam(addressRam),
    .bus(bus));
    
    //create some RAM
     ram myRamen(
    .clk(clk_slow),
    .addr(addressRam[ADDR_WIDTH - 1 : 0]),
    .data(bus),
    .we(ram_we),
    .oe(ram_oe),
    .ss_out(ss_out)
    );
     
    
    //create 7Seg controller for output
    
    initial begin
    {one_second_counter, counter_ss, LED_BCD} <= 0;
    test_register <= 1;
    end
      reg [26:0] one_second_counter;
    
    always @(posedge clk )
    begin
         if(one_second_counter>=199999) 
              one_second_counter <= 0;
         else
             one_second_counter <= one_second_counter + 1;
     end
     
    assign one_second_enable = (one_second_counter==199999)?1:0;
    
    
    reg [1:0] counter_ss;
    
    always @(posedge clk)
    begin
        if(one_second_enable == 1) 
           counter_ss  <= counter_ss + 1;           
        end
    
    
    reg [3:0] LED_BCD;
    wire [DATA_WIDTH - 1 : 0] ss_out; 
    reg [10:0] test_register;
    
    assign led[0] = ss_out[0];
    assign led[1] = ss_out[1];
    assign led[2] = ss_out[2];
    assign led[3] = ss_out[3];
    assign led[4] = ss_out[4];
    assign led[5] = ss_out[5];
    assign led[6] = ss_out[6];
    assign led[7] = ss_out[7];
    assign led[8] = ss_out[8];
    assign led[9] = ss_out[9];
    assign led[10] = ss_out[10];
    assign led[11] = ss_out[11];
    assign led[12] = ss_out[12];
    assign led[13] = ss_out[13];
    assign led[14] = ss_out[14];
    assign led[15] = ss_out[15];

    
    always @(*)
        begin
            case(counter_ss)
            2'b00: begin  
                disable_seven_segment = 4'b1110;
                LED_BCD = ss_out % 10;
                //LED_BCD = test_register % 10;
                end
            2'b01: begin  
                disable_seven_segment = 4'b1101;
                LED_BCD = (ss_out / 10) % 10;
                //LED_BCD = (test_register / 10) % 10;
                end
            2'b10: begin  
                disable_seven_segment = 4'b1011;
                LED_BCD = (ss_out / 100) % 10;
                //LED_BCD = (test_register / 100) % 10;
                end
            2'b11: begin  
                disable_seven_segment = 4'b0111;
                LED_BCD = (ss_out / 1000) % 10;
                //LED_BCD = (test_register / 1000) % 10;
                end
            endcase
        end

    sevenSegment seven(LED_BCD, ss);
    
endmodule
