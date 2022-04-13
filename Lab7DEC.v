module Lab7DEC(I,RD,RS1,RS2,IMM);
    input [31:0] I;
    output [4:0] RD,RS1,RS2;
    output [11:0] IMM;

    assign RD = I[11:7];
    assign RS1 = I[19:15];
    assign RS2 = I[24:20];
    assign IMM = I[31:20];
endmodule
