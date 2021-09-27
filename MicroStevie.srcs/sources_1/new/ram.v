`timescale 1ns / 1ps


module ram
# (parameter ADDR_WIDTH = 8,
    parameter DATA_WIDTH = 24,
    parameter OUTPUT_ADDR = 100
    )
(
    input clk,
    input [ADDR_WIDTH - 1:0] addr,
    inout [DATA_WIDTH - 1:0] data,
    input we,
    input oe,
    output [DATA_WIDTH - 1:0] ss_out
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
    
    //7seg output always 0 at first
    mem[100] <= 0;
    /*
        mem[0] <= 24'b000001010000001100000110; //2 addresses to subtract
        mem[1] <= 13;
       // mem[2] <= 16'b0000011000000100;
        mem[3] <= 42; // first number to subtract from
        mem[4] <= 3; // second number to subtract from
        mem[5] <= 44; // a number to subtract
        mem[6] <= 24'b000001000000000100000000; // a number to subtract
      */  
        
        //double a number
        /*
        mem[0] <= 24'h080701;
        mem[1] <= 24'h070802;
        mem[2] <= 24'h080603;
        mem[3] <= 24'h066404;
        mem[4] <= 24'h060604;
        mem[6] <= 0;
        mem[7] <= 0;
        mem[8] <= 15; //number to be doubled
        */
        //result should be the doubled number in mem[8]
        
        
        //divide by 2
        /*
        mem[0] <= 24'h080903;
        mem[1] <= 24'h070600;
        mem[2] <= 24'h050500;
        mem[3] <= 24'h070600;
        mem[4] <= 24'h050504; //hlt
        
        mem[5] <= 0;
        mem[6] <= 0;
        mem[7] <= -1;
        mem[8] <= 2;
        mem[9] <= 14; //number to be divided
        
        //result of division by 2 in mem[6]
        */
        
        //fibonacci
        /*
        mem[0] <= 24'h110e01;
        mem[1] <= 24'h0e1000;
        mem[2] <= 24'h0f0f03;
        mem[3] <= 24'h646404;
        mem[4] <= 24'h100f05;
        mem[5] <= 24'h0f6406;
        mem[6] <= 24'h0e0e07;
        mem[7] <= 24'h100e08;
        mem[8] <= 24'h0e1109;
        mem[9] <= 24'h0f0f0a;
        mem[10] <= 24'h64640b;
        mem[11] <= 24'h110f0c;
        mem[12] <= 24'h0f640d;
        mem[13] <= 24'h0e0e00;
      
        //loop
        mem[14] <= 0; //e
        mem[15] <= 0; //f
        mem[16] <= 0; //10
        mem[17] <= 1; //11
        
        //result of fibonacci in mem[100]
        */
        
        //primes
        
        mem[0] <= 24'h676707;
        mem[1] <= 24'h67670a;
        mem[2] <= 24'h68651e; //check if result in 65 is 0 or negative
        mem[3] <= 24'h676714; // => number is divisable
        mem[4] <= 24'h676704; //hlt
        mem[5] <= 24'h6a6406; // => number is not divisable, test next divisor
        
        //increase tested number by 1
        mem[20] <= 24'h6b6c15; 
        mem[21] <= 24'h656516; //clear 65
        //mem[21] <= 24'h676716; //clear 65
        mem[22] <= 24'h6c6517; //copy number to 65
        mem[23] <= 24'h6d6518; //add one
        mem[24] <= 24'h6b6b19; //clear 
        mem[25] <= 24'h6c6c1a;
        //reset divisor to two
        mem[26] <= 24'h66661b; //clear
        mem[27] <= 24'h6e661c; //load 2
        mem[28] <= 24'h676700;
        
        //increase divisor by 1
        mem[30] <= 24'h6b6c1f; 
        mem[31] <= 24'h656520; //clear 65
        mem[32] <= 24'h6c6521; //copy number to 65
        mem[33] <= 24'h6b6b22; //clear 
        mem[34] <= 24'h6c6c23;
        mem[35] <= 24'h686624; //increase divisor by one
        
        mem[36] <= 24'h656c25; 
        mem[37] <= 24'h6c6b26; //copy number again to 6b
        mem[38] <= 24'h6c6c27; //clear 6c 
        mem[39] <= 24'h666b32; //if branch is taken number is prime
        mem[40] <= 24'h6b6b00; //clear 6b and jump back
       
       
       //number is prime
       mem[50] <= 24'h656c33;
       mem[51] <= 24'h646434; //clear output
       mem[52] <= 24'h6c6435; //output number
       mem[53] <= 24'h6c6c36; //clear 6c
       mem[54] <= 24'h6d6537; //add one to number
       
       mem[55] <= 24'h666638;
       mem[56] <= 24'h6e6639; //reset divisor to two
       mem[57] <= 24'h676700; //repeat from begining
       
       
        //copy number
        mem[7] <= 24'h656c08;
        mem[8] <= 24'h6c6b09;
        mem[9] <= 24'h6c6c0a; //clear 6c
        mem[10] <= 24'h666502;
        mem[11] <= 24'h676701;
        
        mem[101] <= 12; //number to be tested
        mem[102] <= 2; //divisor
        mem[103] <= 0; //always 0 to branch
        mem[104] <= -1; //always -1 to add one
        mem[105] <= -1;
        mem[106] <= -2;
        
        mem[107] <= 0; //6b - hold copy of number to test
        mem[108] <= 0; //6c
        
        mem[109] <= -1; //6d - add one to number to test
        mem[110] <= -2; //always -2 to reset divisor
        
        //1 => number is divisable by 2, 2 number is not divisable
        
        
        //SUBLEQ
        //24'hXXYYZZ;
        //RAM[YY] = RAM[YY] - RAM[XX]
        //if RAM[YY] <= 0
        //jump to ZZ
        
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
       
       assign ss_out = mem[100];
endmodule
