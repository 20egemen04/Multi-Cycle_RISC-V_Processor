/*
	Egemen Celik 2220357034
	ELE432 Premilinary Work 3 : PRE3_Multi-Cycle_RISC-V_Processor
	mux2.sv
	from Harris&Harris' book
*/

module mux2 #(
    parameter WIDTH = 8
) (
    input logic [WIDTH-1:0] d0, d1,
    input logic s,
    output logic [WIDTH-1:0] y
);
  assign y = s ? d1 : d0;
endmodule
