module D_Flip_Flop(
    DOut1,
    clock,
    DOut2
);

input [7:0] DOut1;
input clock;
output DOUt2;

wire [7:0] DOut1;
wire clock;
reg [7:0] DOut2;

always @(posedge clock)
    Dout1 <= DOut1;

endmodule