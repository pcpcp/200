module Controller(
    clock,
    Reset,
    IncA,
    IncB,
    WEA,
    WEB,
    counter
);

input clock, Reset;

output IncA, IncB, WEA, WEB;
output [4:0] counter;

wire clock, Reset;
reg IncA, IncB, WEA, WEB;
reg [4:0] counter = 5'b00000;

always @(posedge clock) 
begin
    if(Reset == 1'b1 || counter == 5'b10010)
        assign counter = 5'b0;
    else
        assign counter = counter + 1;
    
    if(counter >= 5'd1 && counter <= 5'd8)
        assign WEA = 1'b1;
    else
        WEA = 1'b0;

    if(counter != 5'b10001 && counter != 5'b10010 && counter != 5'b10011)
		assign IncA = 1;
	else
        assign IncA = 0;

	if(counter == 5'b01011 || counter == 5'b01101 || counter == 5'b01111 || counter == 5'b10001)
		assign WEB = 1;
	else
        assign WEB = 0;

	if(counter == 5'b01100 || counter == 5'b01110 || counter == 5'b10000 || counter == 5'b10010)
		assign IncB = 1;
	else
        assign IncB = 0;
end

endmodule