#GPIO LEDs
set_property PACKAGE_PIN AB8 [get_ports mmcm_lock]
set_property IOSTANDARD LVCMOS15 [get_ports mmcm_lock]
set_property PACKAGE_PIN AA8 [get_ports init_calib_complete]
set_property IOSTANDARD LVCMOS15 [get_ports init_calib_complete]
#set_property PACKAGE_PIN AC9 [get_ports GPIO_LED_2_LS]
#set_property IOSTANDARD LVCMOS15 [get_ports GPIO_LED_2_LS]
#set_property PACKAGE_PIN AB9 [get_ports GPIO_LED_3_LS]
#set_property IOSTANDARD LVCMOS15 [get_ports GPIO_LED_3_LS]
#set_property PACKAGE_PIN AE26 [get_ports GPIO_LED_4_LS]
#set_property IOSTANDARD LVCMOS25 [get_ports GPIO_LED_4_LS]
#set_property PACKAGE_PIN G19 [get_ports GPIO_LED_5_LS]
#set_property IOSTANDARD LVCMOS25 [get_ports GPIO_LED_5_LS]
#set_property PACKAGE_PIN E18 [get_ports GPIO_LED_6_LS]
#set_property IOSTANDARD LVCMOS25 [get_ports GPIO_LED_6_LS]
#set_property PACKAGE_PIN F16 [get_ports GPIO_LED_7_LS]
#set_property IOSTANDARD LVCMOS25 [get_ports GPIO_LED_7_LS]

# PCI Express reset (perst)
set_property PACKAGE_PIN G25 [get_ports perst_n]
set_property IOSTANDARD LVCMOS25 [get_ports perst_n]

# PCI Express reference clock 100MHz
# IOSTANDARD for GT reference clock does not need to be specified
#set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports ref_clk_clk_p]
set_property PACKAGE_PIN U8 [get_ports ref_clk_clk_p]
set_property PACKAGE_PIN U7 [get_ports ref_clk_clk_n]
create_clock -period 10.000 -name ref_clk_clk_p -waveform {0.000 5.000} [get_ports ref_clk_clk_p]

# System reset
set_property PACKAGE_PIN AB7 [get_ports reset]
set_property IOSTANDARD LVCMOS15 [get_ports reset]

set_property LOC GTXE2_CHANNEL_X0Y7 [get_cells {*_i/axi_pcie_0/inst/comp_axi_enhanced_pcie/comp_enhanced_core_top_wrap/axi_pcie_enhanced_core_top_i/pcie_7x_v2_0_2_inst/pcie_top_with_gt_top.gt_ges.gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]

# MGT locations
set_property PACKAGE_PIN M5 [get_ports {pci_exp_rxn[0]}]
set_property PACKAGE_PIN M6 [get_ports {pci_exp_rxp[0]}]
set_property PACKAGE_PIN P5 [get_ports {pci_exp_rxn[1]}]
set_property PACKAGE_PIN P6 [get_ports {pci_exp_rxp[1]}]
set_property PACKAGE_PIN R3 [get_ports {pci_exp_rxn[2]}]
set_property PACKAGE_PIN R4 [get_ports {pci_exp_rxp[2]}]
set_property PACKAGE_PIN T5 [get_ports {pci_exp_rxn[3]}]
set_property PACKAGE_PIN T6 [get_ports {pci_exp_rxp[3]}]
#set_property PACKAGE_PIN V5 [get_ports {pci_exp_rxn[4]}]
#set_property PACKAGE_PIN V6 [get_ports {pci_exp_rxp[4]}]
#set_property PACKAGE_PIN W3 [get_ports {pci_exp_rxn[5]}]
#set_property PACKAGE_PIN W4 [get_ports {pci_exp_rxp[5]}]
#set_property PACKAGE_PIN Y5 [get_ports {pci_exp_rxn[6]}]
#set_property PACKAGE_PIN Y6 [get_ports {pci_exp_rxp[6]}]
#set_property PACKAGE_PIN AA3 [get_ports {pci_exp_rxn[7]}]
#set_property PACKAGE_PIN AA4 [get_ports {pci_exp_rxp[7]}]
set_property PACKAGE_PIN L3 [get_ports {pci_exp_txn[0]}]
set_property PACKAGE_PIN L4 [get_ports {pci_exp_txp[0]}]
set_property PACKAGE_PIN M1 [get_ports {pci_exp_txn[1]}]
set_property PACKAGE_PIN M2 [get_ports {pci_exp_txp[1]}]
set_property PACKAGE_PIN N3 [get_ports {pci_exp_txn[2]}]
set_property PACKAGE_PIN N4 [get_ports {pci_exp_txp[2]}]
set_property PACKAGE_PIN P1 [get_ports {pci_exp_txn[3]}]
set_property PACKAGE_PIN P2 [get_ports {pci_exp_txp[3]}]
#set_property PACKAGE_PIN T1 [get_ports {pci_exp_txn[4]}]
#set_property PACKAGE_PIN T2 [get_ports {pci_exp_txp[4]}]
#set_property PACKAGE_PIN U3 [get_ports {pci_exp_txn[5]}]
#set_property PACKAGE_PIN U4 [get_ports {pci_exp_txp[5]}]
#set_property PACKAGE_PIN V1 [get_ports {pci_exp_txn[6]}]
#set_property PACKAGE_PIN V2 [get_ports {pci_exp_txp[6]}]
#set_property PACKAGE_PIN Y1 [get_ports {pci_exp_txn[7]}]
#set_property PACKAGE_PIN Y2 [get_ports {pci_exp_txp[7]}]
#set_property PACKAGE_PIN F23 [get_ports PCIE_WAKE_B_LS]
#set_property IOSTANDARD LVCMOS25 [get_ports PCIE_WAKE_B_LS]

set_property LOC PCIE_X0Y0 [get_cells *_i/axi_pcie_0/inst/comp_axi_enhanced_pcie/comp_enhanced_core_top_wrap/axi_pcie_enhanced_core_top_i/pcie_7x_v2_0_2_inst/pcie_top_with_gt_top.pcie_top_i/pcie_7x_i/pcie_block_i]

set_false_path -to [get_pins *_i/axi_pcie_0/inst/comp_axi_enhanced_pcie/comp_enhanced_core_top_wrap/axi_pcie_enhanced_core_top_i/pcie_7x_v2_0_2_inst/pcie_top_with_gt_top.gt_ges.gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/S*]

set_property PACKAGE_PIN AA8 [get_ports init_calib_complete]
set_property IOSTANDARD LVCMOS15 [get_ports init_calib_complete]

set_property DCI_CASCADE {32 34} [get_iobanks 33]

