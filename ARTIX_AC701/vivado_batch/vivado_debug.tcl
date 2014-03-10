open_hw
#connect_hw_server -host 192.168.0.22 -port 60001
connect_hw_server -host localhost -port 60001
current_hw_target [get_hw_targets */xilinx_tcf/Digilent/210203368162A]
set_property PARAM.FREQUENCY 6000000 [get_hw_targets */xilinx_tcf/Digilent/210203368162A]
open_hw_target
current_hw_device [lindex [get_hw_devices] 0]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices] 0]
set_property PROGRAM.FILE {pcie_gen1x1_axi_lite_bridge_example_top.bit} [lindex [get_hw_devices] 0]
set_property PROBES.FILE  {pcie_gen1x1_axi_lite_bridge_example_top.ltx} [lindex [get_hw_devices] 0]
refresh_hw_device [lindex [get_hw_devices] 0]

set_property CONTROL.TRIGGER_POSITION 512 [get_hw_ilas hw_ila_1]
#program_hw_devices [lindex [get_hw_devices] 0]
#refresh_hw_device [lindex [get_hw_devices] 0]
