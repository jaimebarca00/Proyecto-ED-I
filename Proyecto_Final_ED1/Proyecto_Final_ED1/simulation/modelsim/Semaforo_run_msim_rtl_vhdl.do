transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/20.1/Proyectos_U/Proyecto_Final_ED1/Selector_7Seg.vhd}
vcom -93 -work work {C:/intelFPGA_lite/20.1/Proyectos_U/Proyecto_Final_ED1/BCD_a_7seg.vhd}

