module Lab7TB();
    reg clk,reset;
    wire [4:0] RD,RS1,RS2;
    wire [11:0] IMM;
    wire [31:0] out;
    wire [7:0] cur,next;

    Lab7_toplevel dut (clk,reset,RD,RS1,RS2,IMM,out,cur,next);

    initial
        clk = 1'b1;
    always begin
        #5 clk = 1'b0;
        #5 clk = 1'b1;
    end

    initial begin
        reset = 1'b1;
        #5 reset = 1'b0;
    end

    initial begin
        #200 $stop;
    end
endmodule
