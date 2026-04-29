/*
	Egemen Celik 2220357034
	ELE432 Premilinary Work 3 : PRE3_Multi-Cycle_RISC-V_Processor
	mux3.sv
	from Harris&Harris' book
*/

module mux3 #(
    parameter WIDTH = 8
) (
    input logic [WIDTH-1:0] d0, d1, d2,
    input logic [1:0] s,
    output logic [WIDTH-1:0] y
);
  assign y = s[1] ? d2 : (s[0] ? d1 : d0);
endmodule
