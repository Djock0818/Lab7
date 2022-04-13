module PL4(in,out);
    input [7:0] in;
    output [7:0] out;

    assign out = in + 8'd4;
endmodule
