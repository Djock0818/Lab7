module TopLev(clk,reset,RD,RS1,RS2,IMM,out,cur,next);
    input clk,reset;
    output [4:0] RD,RS1,RS2;
    output [11:0] IMM;
    output [31:0] out;

    output [7:0] cur,next;

    wire [7:0] PC,PC4;
    PrgCnt inst0 (PC4,PC,clk,reset);
    PL4 inst1 (PC,PC4);

    wire [31:0] I;
    Lab7ROM inst2 (PC,I,clk);
    IntDec inst3 (I,RD,RS1,RS2,IMM);

    assign out = I;
    assign cur = PC;
    assign next = PC4;
endmodule
