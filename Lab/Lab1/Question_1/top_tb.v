`timescale 1ns / 1ps

module top_tb();

reg [7:0] a,b;
wire [7:0] y;
wire z;

// Instantiation of design.
top top_dut (a,b,y,z);

initial begin

// Vary below inputs to determine the function performed by the design provided.

// Input 1
a = 8'b00000000;
b = 8'b00000000;

#10

// Input 2
a = 8'b00000000;
b = 8'b00000000;

#10

// Input 3
a = 8'b00000000;
b = 8'b00000000;

#10

// Input 4
a = 8'b00000000;
b = 8'b00000000;

#10

// Input 5
a = 8'b00000000;
b = 8'b00000000;

#10

$finish;
end

endmodule