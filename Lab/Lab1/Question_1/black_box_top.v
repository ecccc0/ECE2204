`timescale 1ns / 1ps

module top (
    input [7:0] a,
    input [7:0] b,
    output [7:0] y,
    output z
    );


// Internal Signals.
wire int_sig1,int_sig2,int_sig3,int_sig4,int_sig5,int_sig6,int_sig7;

black_box inst1 (a[0],b[0],1'b0,y[0],int_sig1);
black_box inst2 (a[1],b[1],int_sig1,y[1],int_sig2);
black_box inst3 (a[2],b[2],int_sig2,y[2],int_sig3);
black_box inst4 (a[3],b[3],int_sig3,y[3],int_sig4);
black_box inst5 (a[4],b[4],int_sig4,y[4],int_sig5);
black_box inst6 (a[5],b[5],int_sig5,y[5],int_sig6);
black_box inst7 (a[6],b[6],int_sig6,y[6],int_sig7);
black_box inst8 (a[7],b[7],int_sig7,y[7],z);
    
endmodule

module black_box(
    input a,
    input b,
    input c,
    output y,
    output z
    );
    
// Internal Signals
    wire int_sig1;
    wire int_sig2;
    wire int_sig3;
    wire int_sig4;
    wire int_sig5;
    wire int_sig6;
    wire int_sig7;
    wire int_sig8;
        
    assign int_sig1 = a & ~b;
    assign int_sig2 = ~a & b;
    assign int_sig3 = int_sig1 + int_sig2;
    assign int_sig4 = int_sig3 & ~c;
    assign int_sig5 = ~int_sig3 & c;
    assign y = int_sig4 + int_sig5; 
    assign int_sig6 = a & b;
    assign int_sig7 = b & c;
    assign int_sig8 = c & a;    
    assign z = int_sig6 | int_sig7 | int_sig8;
     
endmodule