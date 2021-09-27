`timescale 1ns / 1ps


module sevenSegment(
    input [3:0] bits,
    output [6:0] ss
    );
    
    assign ss[0] = ~((bits[0] & ~bits[1] & ~bits[2] & bits[3]) | (~bits[0] & ~bits[1] & ~bits[2] & bits[3]) | (bits[0] & bits[1] & bits[2] & ~bits[3]) | (~bits[0] & bits[1] & ~bits[2] & ~bits[3]) | (bits[0] & bits[1] & ~bits[2] & ~bits[3]) | (bits[0] & ~bits[1] & bits[2] & ~bits[3]) | (~bits[0] & ~bits[1] & ~bits[2] & ~bits[3]) | (~bits[0] & bits[1] & bits[2] & ~bits[3]));
    assign ss[1] = ~((bits[0] & ~bits[1] & ~bits[2] & bits[3]) | (~bits[0] & ~bits[1] & ~bits[2] & bits[3]) | (bits[0] & bits[1] & bits[2] & ~bits[3]) | (bits[0] & ~bits[1] & ~bits[2] & ~bits[3]) | (~bits[0] & bits[1] & ~bits[2] & ~bits[3]) | (bits[0] & bits[1] & ~bits[2] & ~bits[3]) | (~bits[0] & ~bits[1] & bits[2] & ~bits[3]) | (~bits[0] & ~bits[1] & ~bits[2] & ~bits[3]));
    assign ss[2] = ~((bits[0] & ~bits[1] & ~bits[2] & bits[3]) | (~bits[0] & ~bits[1] & ~bits[2] & bits[3]) | (bits[0] & bits[1] & bits[2] & ~bits[3]) | (~bits[0] & bits[1] & bits[2] & ~bits[3]) | (bits[0] & ~bits[1] & ~bits[2] & ~bits[3]) | (bits[0] & bits[1] & ~bits[2] & ~bits[3]) | (~bits[0] & ~bits[1] & bits[2] & ~bits[3]) | (bits[0] & ~bits[1] & bits[2] & ~bits[3]) | (~bits[0] & ~bits[1] & ~bits[2] & ~bits[3]));
    assign ss[3] = ~((bits[0] & ~bits[1] & ~bits[2] & bits[3]) | (~bits[0] & ~bits[1] & ~bits[2] & bits[3]) | (~bits[0] & bits[1] & bits[2] & ~bits[3]) | (~bits[0] & bits[1] & ~bits[2] & ~bits[3]) | (bits[0] & bits[1] & ~bits[2] & ~bits[3]) | (bits[0] & ~bits[1] & bits[2] & ~bits[3]) | (~bits[0] & ~bits[1] & ~bits[2] & ~bits[3]));
    assign ss[4] = ~((~bits[0] & ~bits[1] & ~bits[2] & bits[3]) | (~bits[0] & bits[1] & bits[2] & ~bits[3]) | (~bits[0] & bits[1] & ~bits[2] & ~bits[3]) | (~bits[0] & ~bits[1] & ~bits[2] & ~bits[3]));
    assign ss[5] = ~((bits[0] & ~bits[1] & ~bits[2] & bits[3]) | (~bits[0] & ~bits[1] & ~bits[2] & bits[3]) | (~bits[0] & bits[1] & bits[2] & ~bits[3]) | (~bits[0] & ~bits[1] & bits[2] & ~bits[3]) | (bits[0] & ~bits[1] & bits[2] & ~bits[3]) | (~bits[0] & ~bits[1] & ~bits[2] & ~bits[3]));
    assign ss[6] = ~((bits[0] & ~bits[1] & ~bits[2] & bits[3]) | (~bits[0] & ~bits[1] & ~bits[2] & bits[3]) | (~bits[0] & bits[1] & bits[2] & ~bits[3]) | (~bits[0] & bits[1] & ~bits[2] & ~bits[3]) | (bits[0] & bits[1] & ~bits[2] & ~bits[3]) | (~bits[0] & ~bits[1] & bits[2] & ~bits[3]) | (bits[0] & ~bits[1] & bits[2] & ~bits[3]));
    
    
endmodule
