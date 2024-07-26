set AIGER_SRC [lindex $argv 0].aag

yosys -import

read_aiger $AIGER_SRC

write_verilog ${AIGER_SRC}_out.v


show


