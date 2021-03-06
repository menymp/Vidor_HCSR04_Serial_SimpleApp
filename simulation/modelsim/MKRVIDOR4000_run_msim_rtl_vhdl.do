transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/TOSHIBA/Desktop/Maestria\ Docs\ Ingreso/semestre\ 2/Quartus/VidorFPGA-master/ip/SYSTEM_PLL {C:/Users/TOSHIBA/Desktop/Maestria Docs Ingreso/semestre 2/Quartus/VidorFPGA-master/ip/SYSTEM_PLL/SYSTEM_PLL.v}
vlog -sv -work work +incdir+C:/Users/TOSHIBA/Desktop/Maestria\ Docs\ Ingreso/semestre\ 2/Quartus/VidorFPGA-master/projects/vidor_ultrasonic {C:/Users/TOSHIBA/Desktop/Maestria Docs Ingreso/semestre 2/Quartus/VidorFPGA-master/projects/vidor_ultrasonic/MKRVIDOR4000_top.v}
vlog -sv -work work +incdir+C:/Users/TOSHIBA/Desktop/Maestria\ Docs\ Ingreso/semestre\ 2/Quartus/VidorFPGA-master/projects/vidor_ultrasonic/db {C:/Users/TOSHIBA/Desktop/Maestria Docs Ingreso/semestre 2/Quartus/VidorFPGA-master/projects/vidor_ultrasonic/db/system_pll_altpll.v}
vcom -93 -work work {C:/Users/TOSHIBA/Desktop/Maestria Docs Ingreso/semestre 2/Quartus/VidorFPGA-master/projects/vidor_ultrasonic/HCSR04.vhd}
vcom -93 -work work {C:/Users/TOSHIBA/Desktop/Maestria Docs Ingreso/semestre 2/Quartus/VidorFPGA-master/projects/vidor_ultrasonic/clk_prescaler.vhd}
vcom -93 -work work {C:/Users/TOSHIBA/Desktop/Maestria Docs Ingreso/semestre 2/Quartus/VidorFPGA-master/projects/vidor_ultrasonic/UART_Trasmitter.vhd}
vcom -93 -work work {C:/Users/TOSHIBA/Desktop/Maestria Docs Ingreso/semestre 2/Quartus/VidorFPGA-master/projects/vidor_ultrasonic/bin2bcd.vhd}
vcom -93 -work work {C:/Users/TOSHIBA/Desktop/Maestria Docs Ingreso/semestre 2/Quartus/VidorFPGA-master/projects/vidor_ultrasonic/HCSR04_UART_Logic.vhd}

vcom -93 -work work {C:/Users/TOSHIBA/Desktop/Maestria Docs Ingreso/semestre 2/Quartus/VidorFPGA-master/projects/vidor_ultrasonic/simulation/modelsim/UART_Tx_testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclone10lp -L rtl_work -L work -voptargs="+acc"  UART_Tx_Testbench

add wave *
view structure
view signals
run -all
