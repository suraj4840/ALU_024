`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2023 05:58:46 PM
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb();

reg [3:0] a,b;
reg  [3:0] sel;
wire [7:0] out;
ALU   dut(a,b,sel,out);
reg clk;
integer i;

initial begin
a=0; b=0;
clk =1'b0;
sel=4'b0;
forever #5 clk =~ clk;

end

initial begin
a= 4'b1010; b=4'b0101;
for(i=0; i<=4'b1111; i=i+1) begin
#10
sel=i;
end
#200
$finish;
end

endmodule
