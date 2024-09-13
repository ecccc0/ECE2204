`timescale 1ns / 1ps

module mystery_tb();

reg a,b,c,d,e,f;
wire y;

// Instantiation of design.
mystery_func mystery_dut (a,b,c,d,e,f,y);

initial
begin

a = 1'b1;
b = 1'b0;
c = 1'b0;
d = 1'b0;
e = 1'b0;
f = 1'b0;

#10

a = 1'b0;
b = 1'b1;
c = 1'b0;
d = 1'b0;
e = 1'b0;
f = 1'b0;

#10

a = 1'b0;
b = 1'b0;
c = 1'b1;
d = 1'b0;
e = 1'b0;
f = 1'b0;

#10

a = 1'b0;
b = 1'b0;
c = 1'b0;
d = 1'b1;
e = 1'b0;
f = 1'b0;

#10

a = 1'b1;
b = 1'b0;
c = 1'b0;
d = 1'b0;
e = 1'b1;
f = 1'b0;

#10

a = 1'b0;
b = 1'b1;
c = 1'b0;
d = 1'b0;
e = 1'b1;
f = 1'b0;

#10

a = 1'b0;
b = 1'b0;
c = 1'b1;
d = 1'b0;
e = 1'b1;
f = 1'b0;

#10

a = 1'b0;
b = 1'b0;
c = 1'b0;
d = 1'b1;
e = 1'b1;
f = 1'b0;

#10

a = 1'b1;
b = 1'b0;
c = 1'b0;
d = 1'b0;
e = 1'b0;
f = 1'b1;

#10

a = 1'b0;
b = 1'b1;
c = 1'b0;
d = 1'b0;
e = 1'b0;
f = 1'b1;

#10

a = 1'b0;
b = 1'b0;
c = 1'b1;
d = 1'b0;
e = 1'b0;
f = 1'b1;

#10

a = 1'b0;
b = 1'b0;
c = 1'b0;
d = 1'b1;
e = 1'b0;
f = 1'b1;

#10

a = 1'b1;
b = 1'b0;
c = 1'b0;
d = 1'b0;
e = 1'b1;
f = 1'b1;

#10

a = 1'b0;
b = 1'b1;
c = 1'b0;
d = 1'b0;
e = 1'b1;
f = 1'b1;

#10

a = 1'b0;
b = 1'b0;
c = 1'b1;
d = 1'b0;
e = 1'b1;
f = 1'b1;

#10

a = 1'b0;
b = 1'b0;
c = 1'b0;
d = 1'b1;
e = 1'b1;
f = 1'b1;

#10

$finish;
end

endmodule