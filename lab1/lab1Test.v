`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:38:59 04/11/2018
// Design Name:   FPCVT
// Module Name:   C:/Users/152/Desktop/lab1/lab1Test.v
// Project Name:  lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FPCVT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module lab1Test;

	// Inputs
	reg [11:0] D;

	// Outputs
	wire S;
	wire [2:0] E;
	wire [3:0] F;

	// Instantiate the Unit Under Test (UUT)
	FPCVT uut (
		.D(D), 
		.S(S), 
		.E(E), 
		.F(F)
	);

	initial begin
		// Initialize Inputs
		D = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
			
		D = 12'b011111000000;
		
		#100
		D = 12'b111001001010;  //sig 1110 exponent = 5
	#100
        
		// Add stimulus here
		D = 12'b000000101101;
		
		#100
		
		D = 12'b000000101110;
		
		#100
		
		D = 12'b000000101111;
		
		#100
		
		D = 12'b000000111111; //significnad = 1000 exponent = 3
		
		#100
		
		D = 12'b111001011010; //sig = 1101 exponent = 5
		
		#100
		
		D = 12'b111001001010; //sig 1110 exponent = 5
		
		#100
		
		D = 12'b111000001010; //sig 1000 exponent = 6
		
		#100
		
		D = 12'b011111111111;
		
		#100
		
		D = 12'b100000000000;
		
		#100
		
		D = 12'b011111000000;

		#100

		D = 12'b011111001111;

	end 

	
	/*		#100
        
		// Add stimulus here
		number = 12'b000000101101;
		
		#100
		
		number = 12'b000000101110;
		
		#100
		
		number = 12'b000000101111;
		
		#100
		
		number = 12'b000000111111; //significnad = 1000 exponent = 3
		
		#100
		
		number = 12'b111001011010; //sig = 1101 exponent = 5
		
		#100
		
		number = 12'b111001001010; //sig 1110 exponent = 5
		
		#100
		
		number = 12'b111000001010; //sig 1000 exponent = 6
		
		#100
		
		number = 12'b011111111111;
		
		#100
		
		number = 12'b100000000000;

        
		// Add stimulus here

	end */
      
endmodule

