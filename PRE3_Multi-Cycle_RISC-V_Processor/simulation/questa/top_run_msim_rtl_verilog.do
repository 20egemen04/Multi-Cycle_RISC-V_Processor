transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor {C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor/riscv_multi_cycle.sv}
vlog -sv -work work +incdir+C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor {C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor/flopenr.sv}
vlog -sv -work work +incdir+C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor {C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor/regfile.sv}
vlog -sv -work work +incdir+C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor {C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor/maindec.sv}
vlog -sv -work work +incdir+C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor {C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor/instrdec.sv}
vlog -sv -work work +incdir+C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor {C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor/extend.sv}
vlog -sv -work work +incdir+C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor {C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor/controller.sv}
vlog -sv -work work +incdir+C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor {C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor/aludec.sv}
vlog -sv -work work +incdir+C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor {C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor/alu.sv}
vlog -sv -work work +incdir+C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor {C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor/top.sv}
vlog -sv -work work +incdir+C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor {C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor/datapath.sv}
vlog -sv -work work +incdir+C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor {C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor/flopr.sv}
vlog -sv -work work +incdir+C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor {C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor/mux2.sv}
vlog -sv -work work +incdir+C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor {C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor/mux3.sv}
vlog -sv -work work +incdir+C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor {C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor/mem.sv}

vlog -sv -work work +incdir+C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor {C:/Projects/quartus/PRE3_Multi-Cycle_RISC-V_Processor/riscv_testbench.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
