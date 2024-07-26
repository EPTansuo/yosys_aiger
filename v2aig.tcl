set V_SRC [lindex $argv 0].v
set TOP   [lindex $argv 0]

yosys -import

read_verilog -formal ${V_SRC}
prep -top ${TOP}
flatten

#aigmap
techmap
abc -fast -g AND

write_aiger -ascii ${TOP}.aag

show
