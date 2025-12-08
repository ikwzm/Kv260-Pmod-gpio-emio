proc add_gpio_emio { zynq_ultra_ps_e_0 port_name num net_name} {

    if { $port_name eq "" } {
        set _port_name GPIO_PORT
    } else {
	set _port_name $port_name
    }

    if { $num eq "" } {
	set _num 8
    } else {
        set _num $num
    }
    
    if { $net_name eq "" } {
	set _net_name zynq_ultra_ps_e_0_GPIO_0
    } else {
	set _net_name $net_name
    }
    
    set_property -dict [list CONFIG.PSU__GPIO_EMIO__PERIPHERAL__ENABLE  {1} ] $zynq_ultra_ps_e_0
    set_property -dict [list CONFIG.PSU__GPIO_EMIO__PERIPHERAL__IO    $_num ] $zynq_ultra_ps_e_0

    create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 $_port_name
    connect_bd_intf_net -intf_net $_net_name [get_bd_intf_ports $_port_name] [get_bd_intf_pins $zynq_ultra_ps_e_0/GPIO_0]
}

    
