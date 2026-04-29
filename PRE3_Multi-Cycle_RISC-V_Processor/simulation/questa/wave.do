onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label clk /testbench/clk
add wave -noupdate -label reset /testbench/reset
add wave -noupdate -label PC /testbench/dut/rvmulti/dp/PC
add wave -noupdate -label Instr /testbench/dut/rvmulti/dp/Instr
add wave -noupdate -label current_state /testbench/dut/rvmulti/c/md/current_state
add wave -noupdate -label SrcA /testbench/dut/rvmulti/dp/SrcA
add wave -noupdate -label SrcB /testbench/dut/rvmulti/dp/SrcB
add wave -noupdate -label ALUResult /testbench/dut/rvmulti/dp/ALUResult
add wave -noupdate -label DataAdr /testbench/DataAdr
add wave -noupdate -label WriteData /testbench/WriteData
add wave -noupdate -label MemWrite /testbench/MemWrite
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {745 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 128
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {761 ps}
