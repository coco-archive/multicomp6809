restart
force clk 1 0, 0 10ns -repeat 20ns
force n_reset 0
# trigger cold reset sequence in SBootROM
force vduffd0 0
force sramData\[7\] 0
force sramData\[6\] 0
force sramData\[5\] 0
force sramData\[4\] 0
force sramData\[3\] 0
force sramData\[2\] 0
force sramData\[1\] 0
force sramData\[0\] 0
run 100ns
force n_reset 1
force sdMISO 0
run 4000ns
