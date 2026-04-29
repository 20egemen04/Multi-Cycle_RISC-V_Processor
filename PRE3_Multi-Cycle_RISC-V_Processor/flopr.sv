/*
	Egemen Celik 2220357034
	ELE432 Premilinary Work 3 : PRE3_Multi-Cycle_RISC-V_Processor
	flopr.sv
	from Harris&Harris' book
*/

module flopr #(
    parameter WIDTH = 8
) (
    input logic clk, reset,
    input logic [WIDTH-1:0] d,
    output logic [WIDTH-1:0] q
);
  always_ff @(posedge clk, posedge reset)
    if (reset) q <= 0;
    else q <= d;
endmodule
