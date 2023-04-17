###############################################################################
# Created by write_sdc
# Mon Apr 17 15:01:15 2023
###############################################################################
current_design user_processor
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 25.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[0]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[10]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[11]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[12]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[13]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[14]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[15]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[16]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[17]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[18]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[19]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[1]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[20]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[21]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[22]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[23]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[24]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[25]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[26]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[27]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[28]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[29]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[2]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[30]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[31]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[3]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[4]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[5]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[6]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[7]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[8]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_rdata[9]}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_ready}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {resetn}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {spi_miso_i}]
set_input_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {uart_rx_i}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[0]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[10]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[11]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[12]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[13]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[14]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[15]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[16]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[17]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[18]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[19]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[1]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[20]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[21]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[22]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[23]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[24]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[25]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[26]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[27]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[28]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[29]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[2]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[30]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[31]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[3]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[4]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[5]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[6]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[7]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[8]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_addr[9]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_valid}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[0]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[10]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[11]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[12]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[13]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[14]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[15]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[16]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[17]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[18]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[19]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[1]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[20]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[21]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[22]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[23]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[24]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[25]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[26]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[27]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[28]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[29]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[2]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[30]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[31]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[3]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[4]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[5]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[6]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[7]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[8]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wdata[9]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wstrb[0]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wstrb[1]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wstrb[2]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {iomem_wstrb[3]}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {pwm0_o}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {pwm1_o}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {spi_cs_o}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {spi_mosi_o}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {spi_sck_o}]
set_output_delay 5.0000 -clock [get_clocks {clk}] -add_delay [get_ports {uart_tx_o}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {iomem_valid}]
set_load -pin_load 0.0334 [get_ports {pwm0_o}]
set_load -pin_load 0.0334 [get_ports {pwm1_o}]
set_load -pin_load 0.0334 [get_ports {spi_cs_o}]
set_load -pin_load 0.0334 [get_ports {spi_mosi_o}]
set_load -pin_load 0.0334 [get_ports {spi_sck_o}]
set_load -pin_load 0.0334 [get_ports {uart_tx_o}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[31]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[30]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[29]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[28]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[27]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[26]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[25]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[24]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[23]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[22]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[21]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[20]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[19]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[18]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[17]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[16]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[15]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[14]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[13]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[12]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[11]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[10]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[9]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[8]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[7]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[6]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[5]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[4]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[3]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[2]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[1]}]
set_load -pin_load 0.0334 [get_ports {iomem_addr[0]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[31]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[30]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[29]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[28]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[27]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[26]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[25]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[24]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[23]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[22]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[21]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[20]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[19]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[18]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[17]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[16]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[15]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[14]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[13]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[12]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[11]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[10]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[9]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[8]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[7]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[6]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[5]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[4]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[3]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[2]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[1]}]
set_load -pin_load 0.0334 [get_ports {iomem_wdata[0]}]
set_load -pin_load 0.0334 [get_ports {iomem_wstrb[3]}]
set_load -pin_load 0.0334 [get_ports {iomem_wstrb[2]}]
set_load -pin_load 0.0334 [get_ports {iomem_wstrb[1]}]
set_load -pin_load 0.0334 [get_ports {iomem_wstrb[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_ready}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {resetn}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {spi_miso_i}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {uart_rx_i}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[31]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[30]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[29]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[28]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[27]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[26]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[25]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[24]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[23]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[22]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[21]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[20]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[19]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[18]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[17]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[16]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[15]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[14]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[13]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[12]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[11]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[10]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[9]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[8]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {iomem_rdata[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 10.0000 [current_design]
