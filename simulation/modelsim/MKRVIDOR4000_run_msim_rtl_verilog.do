transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/TOSHIBA/Desktop/Maestria\ Docs\ Ingreso/semestre\ 2/Quartus/VidorFPGA-master/ip/SYSTEM_PLL {C:/Users/TOSHIBA/Desktop/Maestria Docs Ingreso/semestre 2/Quartus/VidorFPGA-master/ip/SYSTEM_PLL/SYSTEM_PLL.v}
vlog -sv -work work +incdir+C:/Users/TOSHIBA/Desktop/Maestria\ Docs\ Ingreso/semestre\ 2/Quartus/VidorFPGA-master/projects/vidor_ultrasonic {C:/Users/TOSHIBA/Desktop/Maestria Docs Ingreso/semestre 2/Quartus/VidorFPGA-master/projects/vidor_ultrasonic/MKRVIDOR4000_top.v}
vlog -sv -work work +incdir+C:/Users/TOSHIBA/Desktop/Maestria\ Docs\ Ingreso/semestre\ 2/Quartus/VidorFPGA-master/projects/vidor_ultrasonic/db {C:/Users/TOSHIBA/Desktop/Maestria Docs Ingreso/semestre 2/Quartus/VidorFPGA-master/projects/vidor_ultrasonic/db/system_pll_altpll.v}

