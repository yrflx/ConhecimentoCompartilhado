transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Italo/Desktop/Projeto final/calculadora.vhd}
vcom -93 -work work {C:/Users/Italo/Desktop/Projeto final/inv.vhd}
vcom -93 -work work {C:/Users/Italo/Desktop/Projeto final/mux2.vhd}
vcom -93 -work work {C:/Users/Italo/Desktop/Projeto final/flop.vhd}
vcom -93 -work work {C:/Users/Italo/Desktop/Projeto final/cla16.vhd}
vcom -93 -work work {C:/Users/Italo/Desktop/Projeto final/cla4.vhd}
vcom -93 -work work {C:/Users/Italo/Desktop/Projeto final/vuaparalela.vhd}
vcom -93 -work work {C:/Users/Italo/Desktop/Projeto final/fulladder.vhd}
vcom -93 -work work {C:/Users/Italo/Desktop/Projeto final/vuaparalela16bits.vhd}

vcom -93 -work work {C:/Users/Italo/Desktop/Projeto final/testbench/testbench_calculadora.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L cycloneii -L rtl_work -L work -voptargs="+acc" testbench_calculadora

add wave *
view structure
view signals
run -all
