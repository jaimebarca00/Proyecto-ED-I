onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /semaforo/BotonPaso
add wave -noupdate /semaforo/Clock
add wave -noupdate /semaforo/Sensores_In
add wave -noupdate /semaforo/S_C
add wave -noupdate /semaforo/Prior
add wave -noupdate /semaforo/Cambio_Estado
add wave -noupdate /semaforo/Tiempo
add wave -noupdate /semaforo/Contador_Tiempo/Num_Tiempo
add wave -noupdate /semaforo/MaquinaEstados/edo_pres
add wave -noupdate /semaforo/MaquinaEstados/edo_fut
add wave -noupdate /semaforo/Controlador_Sensores/cuenta
add wave -noupdate /semaforo/Controlador_Sensores/cuenta_prioritaria
add wave -noupdate /semaforo/Controlador_Sensores/Senal_Sensor
add wave -noupdate /semaforo/Controlador_Sensores/Senal_Prior
add wave -noupdate /semaforo/Controlador_Sensores/Btn
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {13919104991395 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 330
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits sec
update
WaveRestoreZoom {5072289156627 ps} {14469879518073 ps}
