/*
	Egemen Celik 2220357034
	ELE432 Premilinary Work 3 : PRE3_Multi-Cycle_RISC-V_Processor
	flopenr.sv
	from Harris&Harris' book
*/

module flopenr #(
    parameter WIDTH = 8
) (
    input logic clk, reset, en,
    input logic [WIDTH-1:0] d,
    output logic [WIDTH-1:0] q
);
  always_ff @(posedge clk, posedge reset)
    if (reset) q <= 0;
    else if (en) q <= d;
endmodule
