module PrgCnt(in,out,clk,reset);
    input [7:0] in;
    input clk,reset;
    output reg [7:0] out;

    always @(posedge clk)
    begin
        if (reset)
            out = 8'b0;
        else
            out = in;
    end

endmodule
