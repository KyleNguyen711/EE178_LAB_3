set_property PACKAGE_PIN H16 [get_ports clk]
set_property PACKAGE_PIN J16 [get_ports even]
set_property PACKAGE_PIN J15 [get_ports odd]
set_property PACKAGE_PIN G14 [get_ports pause]
set_property PACKAGE_PIN H15 [get_ports restart]
set_property PACKAGE_PIN J14 [get_ports terminal]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports even]
set_property IOSTANDARD LVCMOS33 [get_ports odd]
set_property IOSTANDARD LVCMOS33 [get_ports pause]
set_property SLEW SLOW [get_ports even]
set_property SLEW SLOW [get_ports odd]
set_property SLEW SLOW [get_ports terminal]
set_property IOSTANDARD LVCMOS33 [get_ports restart]
set_property IOSTANDARD LVCMOS33 [get_ports terminal]

create_clock -period 10.000 -name my_only_clock -waveform {0.000 5.000} [get_ports clk]
set_input_delay -clock [get_clocks *] 3.000 [get_ports {pause restart}]
set_output_delay -clock [get_clocks *] -2.000 [get_ports -filter { NAME =~  "*" && DIRECTION == "OUT" }]






