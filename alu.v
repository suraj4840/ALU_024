`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2023 05:35:40 PM
// Design Name: 
// Module Name: ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU(a,b,sel,out);
input [3:0] a,b;
input  [3:0] sel;
output  reg [7:0] out;
always @(*)
begin
case(sel)
4'b0000: out= a+b; // addition

4'b0001: out= a-b; // subtraction

4'b0010: out= a*b; // multiplcation
 
4'b0011: out= a/b; //  division

4'b0100: out= a<<b;  // left_shift

4'b0101: out= a>>b;  // right_shift

4'b0110: out= {a[2:0],a[3]};  // rotate left

4'b0111: out= {a[0],a[3:1]};  // rotate right

4'b1000: out= a&b; // and  

4'b1001: out= a|b;  // or

4'b1010: out= a^b; // xor 

4'b1011: out= a^b;  //xnor

4'b1100: out= ~(a&b); // nand

4'b1101: out= ~(a|b);  // nor

4'b1110: out= ~(a^b); // xnor

4'b1111: out = (a>b)?1'b1:1'b0; // comparision 

 
endcase
end
endmodule
