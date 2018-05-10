`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:55:24 04/11/2018 
// Design Name: 
// Module Name:    lab1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module FPCVT(
    input [11:0] D,
    output reg S,
    output reg [2:0] E,
    output reg [3:0] F
    );

reg [11:0] complement;
reg [3:0] binaryOut;
reg [4:0] leading0;
reg [4:0] pos5th;
reg [4:0] rightShift;

always @* begin
	S = D[11];
	
	if (D[11] == 1) begin
		complement = ~D + 1'b1;
	end
	else begin
		complement = D;
	end
	
	if (complement[11] == 1) begin
		binaryOut = 12; 
	end else if (complement[10] == 1) begin
		binaryOut = 11; 
	end else if (complement[9] == 1) begin
		binaryOut = 10; 
	end else if (complement[8] == 1) begin
		binaryOut = 9; 	
	end else if (complement[7] == 1) begin
		binaryOut = 8; 
	end else if (complement[6] == 1) begin
		binaryOut = 7; 
	end else if (complement[5] == 1) begin
		binaryOut = 6; 
	end else if (complement[4] == 1) begin
		binaryOut = 5; 
	end else if (complement[3] == 1) begin
		binaryOut = 4; 
	end else if (complement[2] == 1) begin
		binaryOut = 3; 
	end else if (complement[1]== 1) begin
		binaryOut = 2; 
   end else if (complement[0] == 1) begin
		binaryOut = 1; 
	end
	
	leading0 = 12 - binaryOut;
	if (leading0 >= 8) begin
		leading0 = 8;
	end
	E = 8-leading0;
	
	
	pos5th = 12 - leading0 - 4 - 1;
	rightShift = 12 - leading0 - 4;
	
	F = complement >> rightShift;

	if (complement[pos5th] == 1) begin
		if (F == 4'b1111) begin
			if (E != 7) begin
				E = E + 1;
				F = 4'b1000;
			end
		end else begin
			F = F + 1;
		end
	end
	
	if (D == 12'b011111111111 || D == 12'b100000000000) begin
		S = D[11];
		F = 4'b1111;
		E = 3'b111;
	end
end
endmodule 