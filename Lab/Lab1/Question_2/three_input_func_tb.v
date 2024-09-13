`timescale 1ns / 1ps

module three_inp_func_tb();

reg a,b,c;
wire y;

// Instantiation of design.
three_inp_func func_dut (a,b,c,y);

initial begin

a = 1'b0;
b = 1'b0;
c = 1'b0;

#10

a = 1'b0;
b = 1'b0;
c = 1'b1;

#10

a = 1'b0;
b = 1'b1;
c = 1'b0;

#10

a = 1'b0;
b = 1'b1;
c = 1'b1;

#10

a = 1'b1;
b = 1'b0;
c = 1'b0;

#10

a = 1'b1;
b = 1'b0;
c = 1'b1;

#10

a = 1'b1;
b = 1'b1;
c = 1'b0;

#10

a = 1'b1;
b = 1'b1;
c = 1'b1;

#10

$finish;
end

endmodule