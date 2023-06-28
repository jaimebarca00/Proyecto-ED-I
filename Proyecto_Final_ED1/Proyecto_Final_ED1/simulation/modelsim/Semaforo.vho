-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "07/05/2022 15:34:19"

-- 
-- Device: Altera EP4CE10E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Semaforo IS
    PORT (
	BotonPaso : IN std_logic;
	Clock : IN std_logic;
	Sensores_In : IN std_logic_vector(3 DOWNTO 0);
	Leds_Semaforos : BUFFER std_logic_vector(7 DOWNTO 0);
	Displays : BUFFER std_logic_vector(1 DOWNTO 0);
	Segmentos : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Semaforo;

-- Design Ports Information
-- Leds_Semaforos[0]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Leds_Semaforos[1]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Leds_Semaforos[2]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Leds_Semaforos[3]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Leds_Semaforos[4]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Leds_Semaforos[5]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Leds_Semaforos[6]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Leds_Semaforos[7]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Displays[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Displays[1]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Segmentos[0]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Segmentos[1]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Segmentos[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Segmentos[3]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Segmentos[4]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Segmentos[5]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Segmentos[6]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sensores_In[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sensores_In[1]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sensores_In[2]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sensores_In[3]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BotonPaso	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Semaforo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_BotonPaso : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Sensores_In : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Leds_Semaforos : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Displays : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Segmentos : std_logic_vector(6 DOWNTO 0);
SIGNAL \Reloj1Seg|salida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Leds_Semaforos[0]~output_o\ : std_logic;
SIGNAL \Leds_Semaforos[1]~output_o\ : std_logic;
SIGNAL \Leds_Semaforos[2]~output_o\ : std_logic;
SIGNAL \Leds_Semaforos[3]~output_o\ : std_logic;
SIGNAL \Leds_Semaforos[4]~output_o\ : std_logic;
SIGNAL \Leds_Semaforos[5]~output_o\ : std_logic;
SIGNAL \Leds_Semaforos[6]~output_o\ : std_logic;
SIGNAL \Leds_Semaforos[7]~output_o\ : std_logic;
SIGNAL \Displays[0]~output_o\ : std_logic;
SIGNAL \Displays[1]~output_o\ : std_logic;
SIGNAL \Segmentos[0]~output_o\ : std_logic;
SIGNAL \Segmentos[1]~output_o\ : std_logic;
SIGNAL \Segmentos[2]~output_o\ : std_logic;
SIGNAL \Segmentos[3]~output_o\ : std_logic;
SIGNAL \Segmentos[4]~output_o\ : std_logic;
SIGNAL \Segmentos[5]~output_o\ : std_logic;
SIGNAL \Segmentos[6]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Reloj1Seg|Add0~0_combout\ : std_logic;
SIGNAL \Reloj1Seg|cuenta~11_combout\ : std_logic;
SIGNAL \Reloj1Seg|Add0~1\ : std_logic;
SIGNAL \Reloj1Seg|Add0~2_combout\ : std_logic;
SIGNAL \Reloj1Seg|Add0~3\ : std_logic;
SIGNAL \Reloj1Seg|Add0~4_combout\ : std_logic;
SIGNAL \Reloj1Seg|Add0~5\ : std_logic;
SIGNAL \Reloj1Seg|Add0~6_combout\ : std_logic;
SIGNAL \Reloj1Seg|Add0~7\ : std_logic;
SIGNAL \Reloj1Seg|Add0~8_combout\ : std_logic;
SIGNAL \Reloj1Seg|Add0~9\ : std_logic;
SIGNAL \Reloj1Seg|Add0~10_combout\ : std_logic;
SIGNAL \Reloj1Seg|Add0~11\ : std_logic;
SIGNAL \Reloj1Seg|Add0~12_combout\ : std_logic;
SIGNAL \Reloj1Seg|cuenta~10_combout\ : std_logic;
SIGNAL \Reloj1Seg|Add0~13\ : std_logic;
SIGNAL \Reloj1Seg|Add0~14_combout\ : std_logic;
SIGNAL \Reloj1Seg|Equal0~5_combout\ : std_logic;
SIGNAL \Reloj1Seg|Add0~15\ : std_logic;
SIGNAL \Reloj1Seg|Add0~16_combout\ : std_logic;
SIGNAL \Reloj1Seg|Add0~17\ : std_logic;
SIGNAL \Reloj1Seg|Add0~18_combout\ : std_logic;
SIGNAL \Reloj1Seg|Add0~19\ : std_logic;
SIGNAL \Reloj1Seg|Add0~20_combout\ : std_logic;
SIGNAL \Reloj1Seg|Add0~21\ : std_logic;
SIGNAL \Reloj1Seg|Add0~22_combout\ : std_logic;
SIGNAL \Reloj1Seg|cuenta~9_combout\ : std_logic;
SIGNAL \Reloj1Seg|Add0~23\ : std_logic;
SIGNAL \Reloj1Seg|Add0~24_combout\ : std_logic;
SIGNAL \Reloj1Seg|cuenta~8_combout\ : std_logic;
SIGNAL \Reloj1Seg|Add0~25\ : std_logic;
SIGNAL \Reloj1Seg|Add0~26_combout\ : std_logic;
SIGNAL \Reloj1Seg|cuenta~7_combout\ : std_logic;
SIGNAL \Reloj1Seg|Add0~27\ : std_logic;
SIGNAL \Reloj1Seg|Add0~28_combout\ : std_logic;
SIGNAL \Reloj1Seg|cuenta~6_combout\ : std_logic;
SIGNAL \Reloj1Seg|Add0~29\ : std_logic;
SIGNAL \Reloj1Seg|Add0~30_combout\ : std_logic;
SIGNAL \Reloj1Seg|Add0~31\ : std_logic;
SIGNAL \Reloj1Seg|Add0~32_combout\ : std_logic;
SIGNAL \Reloj1Seg|cuenta~5_combout\ : std_logic;
SIGNAL \Reloj1Seg|Add0~33\ : std_logic;
SIGNAL \Reloj1Seg|Add0~34_combout\ : std_logic;
SIGNAL \Reloj1Seg|Add0~35\ : std_logic;
SIGNAL \Reloj1Seg|Add0~36_combout\ : std_logic;
SIGNAL \Reloj1Seg|cuenta~4_combout\ : std_logic;
SIGNAL \Reloj1Seg|Add0~37\ : std_logic;
SIGNAL \Reloj1Seg|Add0~38_combout\ : std_logic;
SIGNAL \Reloj1Seg|cuenta~3_combout\ : std_logic;
SIGNAL \Reloj1Seg|Add0~39\ : std_logic;
SIGNAL \Reloj1Seg|Add0~40_combout\ : std_logic;
SIGNAL \Reloj1Seg|cuenta~2_combout\ : std_logic;
SIGNAL \Reloj1Seg|Add0~41\ : std_logic;
SIGNAL \Reloj1Seg|Add0~42_combout\ : std_logic;
SIGNAL \Reloj1Seg|cuenta~1_combout\ : std_logic;
SIGNAL \Reloj1Seg|Add0~43\ : std_logic;
SIGNAL \Reloj1Seg|Add0~44_combout\ : std_logic;
SIGNAL \Reloj1Seg|cuenta~0_combout\ : std_logic;
SIGNAL \Reloj1Seg|Add0~45\ : std_logic;
SIGNAL \Reloj1Seg|Add0~46_combout\ : std_logic;
SIGNAL \Reloj1Seg|Add0~47\ : std_logic;
SIGNAL \Reloj1Seg|Add0~48_combout\ : std_logic;
SIGNAL \Reloj1Seg|cuenta~12_combout\ : std_logic;
SIGNAL \Reloj1Seg|Add0~49\ : std_logic;
SIGNAL \Reloj1Seg|Add0~50_combout\ : std_logic;
SIGNAL \Reloj1Seg|Add0~51\ : std_logic;
SIGNAL \Reloj1Seg|Add0~52_combout\ : std_logic;
SIGNAL \Reloj1Seg|Add0~53\ : std_logic;
SIGNAL \Reloj1Seg|Add0~54_combout\ : std_logic;
SIGNAL \Reloj1Seg|Equal0~7_combout\ : std_logic;
SIGNAL \Reloj1Seg|Equal0~6_combout\ : std_logic;
SIGNAL \Reloj1Seg|Equal0~1_combout\ : std_logic;
SIGNAL \Reloj1Seg|Equal0~0_combout\ : std_logic;
SIGNAL \Reloj1Seg|Equal0~2_combout\ : std_logic;
SIGNAL \Reloj1Seg|Equal0~3_combout\ : std_logic;
SIGNAL \Reloj1Seg|Equal0~4_combout\ : std_logic;
SIGNAL \Reloj1Seg|Equal0~8_combout\ : std_logic;
SIGNAL \Reloj1Seg|salida~0_combout\ : std_logic;
SIGNAL \Reloj1Seg|salida~feeder_combout\ : std_logic;
SIGNAL \Reloj1Seg|salida~q\ : std_logic;
SIGNAL \Reloj1Seg|salida~clkctrl_outclk\ : std_logic;
SIGNAL \Contador_Tiempo|Num_Tiempo~1_combout\ : std_logic;
SIGNAL \Sensores_In[3]~input_o\ : std_logic;
SIGNAL \Sensores_In[2]~input_o\ : std_logic;
SIGNAL \Sensores_In[1]~input_o\ : std_logic;
SIGNAL \Sensores_In[0]~input_o\ : std_logic;
SIGNAL \Controlador_Sensores|process_2~0_combout\ : std_logic;
SIGNAL \Controlador_Sensores|cuenta[0]~4_combout\ : std_logic;
SIGNAL \Controlador_Sensores|Add0~0_combout\ : std_logic;
SIGNAL \MaquinaEstados|Selector4~0_combout\ : std_logic;
SIGNAL \MaquinaEstados|edo_pres.S4~q\ : std_logic;
SIGNAL \MaquinaEstados|Selector2~0_combout\ : std_logic;
SIGNAL \MaquinaEstados|Selector5~0_combout\ : std_logic;
SIGNAL \MaquinaEstados|edo_pres.S1~q\ : std_logic;
SIGNAL \Selector|Mostrar_Displays~0_combout\ : std_logic;
SIGNAL \Controlador_Sensores|Equal1~0_combout\ : std_logic;
SIGNAL \BotonPaso~input_o\ : std_logic;
SIGNAL \Controlador_Sensores|Btn~0_combout\ : std_logic;
SIGNAL \Controlador_Sensores|Btn~q\ : std_logic;
SIGNAL \Controlador_Sensores|process_1~0_combout\ : std_logic;
SIGNAL \Controlador_Sensores|Add0~1\ : std_logic;
SIGNAL \Controlador_Sensores|Add0~2_combout\ : std_logic;
SIGNAL \Controlador_Sensores|cuenta_prioritaria~1_combout\ : std_logic;
SIGNAL \Controlador_Sensores|Add0~3\ : std_logic;
SIGNAL \Controlador_Sensores|Add0~4_combout\ : std_logic;
SIGNAL \Controlador_Sensores|Add0~5\ : std_logic;
SIGNAL \Controlador_Sensores|Add0~6_combout\ : std_logic;
SIGNAL \Controlador_Sensores|cuenta_prioritaria~0_combout\ : std_logic;
SIGNAL \Controlador_Sensores|Add0~7\ : std_logic;
SIGNAL \Controlador_Sensores|Add0~8_combout\ : std_logic;
SIGNAL \Controlador_Sensores|Equal2~0_combout\ : std_logic;
SIGNAL \Controlador_Sensores|Equal2~1_combout\ : std_logic;
SIGNAL \Controlador_Sensores|Senal_Prior~q\ : std_logic;
SIGNAL \MaquinaEstados|Selector2~1_combout\ : std_logic;
SIGNAL \MaquinaEstados|edo_pres.S3~q\ : std_logic;
SIGNAL \Selector|Equal0~0_combout\ : std_logic;
SIGNAL \Controlador_Sensores|cuenta[1]~0_combout\ : std_logic;
SIGNAL \Controlador_Sensores|cuenta~3_combout\ : std_logic;
SIGNAL \Controlador_Sensores|cuenta[3]~1_combout\ : std_logic;
SIGNAL \Controlador_Sensores|cuenta[3]~2_combout\ : std_logic;
SIGNAL \Controlador_Sensores|Equal6~0_combout\ : std_logic;
SIGNAL \Controlador_Sensores|Senal_Sensor~q\ : std_logic;
SIGNAL \MaquinaEstados|Selector0~0_combout\ : std_logic;
SIGNAL \MaquinaEstados|edo_pres.S2~q\ : std_logic;
SIGNAL \Selector|Equal5~0_combout\ : std_logic;
SIGNAL \Contador_Tiempo|Num_Tiempo~2_combout\ : std_logic;
SIGNAL \Contador_Tiempo|Num_Tiempo~3_combout\ : std_logic;
SIGNAL \Contador_Tiempo|Num_Tiempo~0_combout\ : std_logic;
SIGNAL \Contador_Tiempo|t~0_combout\ : std_logic;
SIGNAL \Contador_Tiempo|t~q\ : std_logic;
SIGNAL \MaquinaEstados|Selector7~0_combout\ : std_logic;
SIGNAL \MaquinaEstados|Selector7~1_combout\ : std_logic;
SIGNAL \MaquinaEstados|edo_pres.S0~q\ : std_logic;
SIGNAL \Selector|WideOr1~0_combout\ : std_logic;
SIGNAL \Selector|WideOr0~0_combout\ : std_logic;
SIGNAL \Selector|Cuenta[0]~17_combout\ : std_logic;
SIGNAL \Selector|Cuenta[0]~18\ : std_logic;
SIGNAL \Selector|Cuenta[1]~19_combout\ : std_logic;
SIGNAL \Selector|Cuenta[1]~20\ : std_logic;
SIGNAL \Selector|Cuenta[2]~21_combout\ : std_logic;
SIGNAL \Selector|Cuenta[2]~22\ : std_logic;
SIGNAL \Selector|Cuenta[3]~23_combout\ : std_logic;
SIGNAL \Selector|Cuenta[3]~24\ : std_logic;
SIGNAL \Selector|Cuenta[4]~25_combout\ : std_logic;
SIGNAL \Selector|Cuenta[4]~26\ : std_logic;
SIGNAL \Selector|Cuenta[5]~27_combout\ : std_logic;
SIGNAL \Selector|Cuenta[5]~28\ : std_logic;
SIGNAL \Selector|Cuenta[6]~29_combout\ : std_logic;
SIGNAL \Selector|Cuenta[6]~30\ : std_logic;
SIGNAL \Selector|Cuenta[7]~31_combout\ : std_logic;
SIGNAL \Selector|Cuenta[7]~32\ : std_logic;
SIGNAL \Selector|Cuenta[8]~33_combout\ : std_logic;
SIGNAL \Selector|Cuenta[8]~34\ : std_logic;
SIGNAL \Selector|Cuenta[9]~35_combout\ : std_logic;
SIGNAL \Selector|Cuenta[9]~36\ : std_logic;
SIGNAL \Selector|Cuenta[10]~37_combout\ : std_logic;
SIGNAL \Selector|Cuenta[10]~38\ : std_logic;
SIGNAL \Selector|Cuenta[11]~39_combout\ : std_logic;
SIGNAL \Selector|Cuenta[11]~40\ : std_logic;
SIGNAL \Selector|Cuenta[12]~41_combout\ : std_logic;
SIGNAL \Selector|Cuenta[12]~42\ : std_logic;
SIGNAL \Selector|Cuenta[13]~43_combout\ : std_logic;
SIGNAL \Selector|Cuenta[13]~44\ : std_logic;
SIGNAL \Selector|Cuenta[14]~45_combout\ : std_logic;
SIGNAL \Selector|LessThan0~2_combout\ : std_logic;
SIGNAL \Selector|Cuenta[14]~46\ : std_logic;
SIGNAL \Selector|Cuenta[15]~47_combout\ : std_logic;
SIGNAL \Selector|Cuenta[15]~48\ : std_logic;
SIGNAL \Selector|Cuenta[16]~49_combout\ : std_logic;
SIGNAL \Selector|LessThan0~0_combout\ : std_logic;
SIGNAL \Selector|LessThan0~1_combout\ : std_logic;
SIGNAL \Selector|LessThan0~3_combout\ : std_logic;
SIGNAL \Selector|Seleccion~0_combout\ : std_logic;
SIGNAL \Selector|Seleccion~q\ : std_logic;
SIGNAL \Cuenta_NoPaso_Peatones|Q_intNP[0]~5_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Cuenta_NoPaso_Peatones|Add1~0_combout\ : std_logic;
SIGNAL \Cuenta_NoPaso_Peatones|numeroNP~3_combout\ : std_logic;
SIGNAL \Cuenta_NoPaso_Peatones|Add1~1\ : std_logic;
SIGNAL \Cuenta_NoPaso_Peatones|Add1~3\ : std_logic;
SIGNAL \Cuenta_NoPaso_Peatones|Add1~4_combout\ : std_logic;
SIGNAL \Cuenta_NoPaso_Peatones|numeroNP~2_combout\ : std_logic;
SIGNAL \Cuenta_NoPaso_Peatones|Add1~5\ : std_logic;
SIGNAL \Cuenta_NoPaso_Peatones|Add1~6_combout\ : std_logic;
SIGNAL \Cuenta_NoPaso_Peatones|Add1~7\ : std_logic;
SIGNAL \Cuenta_NoPaso_Peatones|Add1~8_combout\ : std_logic;
SIGNAL \Cuenta_NoPaso_Peatones|numeroNP~1_combout\ : std_logic;
SIGNAL \Cuenta_NoPaso_Peatones|Equal2~0_combout\ : std_logic;
SIGNAL \Cuenta_NoPaso_Peatones|Add1~2_combout\ : std_logic;
SIGNAL \Cuenta_NoPaso_Peatones|numeroNP~0_combout\ : std_logic;
SIGNAL \Cuenta_NoPaso_Peatones|Equal2~1_combout\ : std_logic;
SIGNAL \Cuenta_NoPaso_Peatones|Q_intNP[0]~6\ : std_logic;
SIGNAL \Cuenta_NoPaso_Peatones|Q_intNP[1]~7_combout\ : std_logic;
SIGNAL \Cuenta_NoPaso_Peatones|Q_intNP[1]~8\ : std_logic;
SIGNAL \Cuenta_NoPaso_Peatones|Q_intNP[2]~9_combout\ : std_logic;
SIGNAL \Cuenta_NoPaso_Peatones|Q_intNP[2]~10\ : std_logic;
SIGNAL \Cuenta_NoPaso_Peatones|Q_intNP[3]~11_combout\ : std_logic;
SIGNAL \Cuenta_NoPaso_Peatones|Q_intNP[3]~12\ : std_logic;
SIGNAL \Cuenta_NoPaso_Peatones|Q_intNP[4]~13_combout\ : std_logic;
SIGNAL \Selector|Decenas_NP|Mux1~0_combout\ : std_logic;
SIGNAL \Cuenta_Paso_Peatones|Q_intP[0]~5_combout\ : std_logic;
SIGNAL \Selector|Equal2~0_combout\ : std_logic;
SIGNAL \Cuenta_Paso_Peatones|numeroP~2_combout\ : std_logic;
SIGNAL \Cuenta_Paso_Peatones|Add1~0_combout\ : std_logic;
SIGNAL \Cuenta_Paso_Peatones|numeroP~1_combout\ : std_logic;
SIGNAL \Cuenta_Paso_Peatones|numeroP~0_combout\ : std_logic;
SIGNAL \Cuenta_Paso_Peatones|Equal1~0_combout\ : std_logic;
SIGNAL \Cuenta_Paso_Peatones|Q_intP[0]~6\ : std_logic;
SIGNAL \Cuenta_Paso_Peatones|Q_intP[1]~7_combout\ : std_logic;
SIGNAL \Cuenta_Paso_Peatones|Q_intP[1]~8\ : std_logic;
SIGNAL \Cuenta_Paso_Peatones|Q_intP[2]~9_combout\ : std_logic;
SIGNAL \Cuenta_Paso_Peatones|Q_intP[2]~10\ : std_logic;
SIGNAL \Cuenta_Paso_Peatones|Q_intP[3]~11_combout\ : std_logic;
SIGNAL \Cuenta_Paso_Peatones|Q_intP[3]~12\ : std_logic;
SIGNAL \Cuenta_Paso_Peatones|Q_intP[4]~13_combout\ : std_logic;
SIGNAL \BCD_Paso_Peatones|num_BCD[3]~2_combout\ : std_logic;
SIGNAL \BCD_Paso_Peatones|num_BCD[1]~0_combout\ : std_logic;
SIGNAL \BCD_Paso_Peatones|num_BCD[2]~1_combout\ : std_logic;
SIGNAL \Selector|Unidades_P|Mux6~0_combout\ : std_logic;
SIGNAL \BCD_NoPaso_Peatones|num_BCD[1]~0_combout\ : std_logic;
SIGNAL \BCD_NoPaso_Peatones|num_BCD[2]~1_combout\ : std_logic;
SIGNAL \BCD_NoPaso_Peatones|num_BCD[3]~2_combout\ : std_logic;
SIGNAL \Selector|Unidades_NP|Mux6~0_combout\ : std_logic;
SIGNAL \Selector|Segmentos[0]~0_combout\ : std_logic;
SIGNAL \Selector|Decenas_P|Mux1~0_combout\ : std_logic;
SIGNAL \Selector|Segmentos[0]~1_combout\ : std_logic;
SIGNAL \Selector|Unidades_P|Mux5~0_combout\ : std_logic;
SIGNAL \Selector|Unidades_NP|Mux5~0_combout\ : std_logic;
SIGNAL \Selector|Segmentos[1]~2_combout\ : std_logic;
SIGNAL \Selector|Decenas_P|Mux1~1_combout\ : std_logic;
SIGNAL \Selector|Decenas_NP|Mux1~1_combout\ : std_logic;
SIGNAL \Selector|Unidades_NP|Mux4~2_combout\ : std_logic;
SIGNAL \Selector|Segmentos[2]~13_combout\ : std_logic;
SIGNAL \Selector|Unidades_P|Mux4~2_combout\ : std_logic;
SIGNAL \Selector|Segmentos[2]~14_combout\ : std_logic;
SIGNAL \Selector|Segmentos[2]~3_combout\ : std_logic;
SIGNAL \Selector|Unidades_NP|Mux3~0_combout\ : std_logic;
SIGNAL \Selector|Unidades_P|Mux3~0_combout\ : std_logic;
SIGNAL \Selector|Segmentos[3]~4_combout\ : std_logic;
SIGNAL \Selector|Segmentos[3]~5_combout\ : std_logic;
SIGNAL \BCD_Paso_Peatones|num_BCD[4]~3_combout\ : std_logic;
SIGNAL \BCD_NoPaso_Peatones|num_BCD[4]~3_combout\ : std_logic;
SIGNAL \Selector|Unidades_P|Mux2~2_combout\ : std_logic;
SIGNAL \Selector|Unidades_NP|Mux2~2_combout\ : std_logic;
SIGNAL \Selector|Segmentos[4]~11_combout\ : std_logic;
SIGNAL \Selector|Segmentos[4]~12_combout\ : std_logic;
SIGNAL \Selector|Segmentos[4]~6_combout\ : std_logic;
SIGNAL \Selector|Unidades_P|Mux1~0_combout\ : std_logic;
SIGNAL \Selector|Unidades_NP|Mux1~0_combout\ : std_logic;
SIGNAL \Selector|Segmentos[5]~7_combout\ : std_logic;
SIGNAL \Selector|Decenas_NP|Mux1~2_combout\ : std_logic;
SIGNAL \Selector|Decenas_P|Mux1~2_combout\ : std_logic;
SIGNAL \Selector|Segmentos[5]~8_combout\ : std_logic;
SIGNAL \BCD_NoPaso_Peatones|LessThan0~0_combout\ : std_logic;
SIGNAL \Selector|Unidades_P|Mux0~0_combout\ : std_logic;
SIGNAL \Selector|Unidades_NP|Mux0~0_combout\ : std_logic;
SIGNAL \Selector|Segmentos[6]~9_combout\ : std_logic;
SIGNAL \BCD_Paso_Peatones|LessThan0~0_combout\ : std_logic;
SIGNAL \Selector|Segmentos[6]~10_combout\ : std_logic;
SIGNAL \Cuenta_Paso_Peatones|Q_intP\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Reloj1Seg|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \Selector|Cuenta\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \Controlador_Sensores|cuenta_prioritaria\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Cuenta_NoPaso_Peatones|Q_intNP\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Cuenta_Paso_Peatones|numeroP\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Contador_Tiempo|Num_Tiempo\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Cuenta_NoPaso_Peatones|numeroNP\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Controlador_Sensores|cuenta\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_BotonPaso~input_o\ : std_logic;
SIGNAL \Selector|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \Selector|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \Selector|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \Controlador_Sensores|ALT_INV_Senal_Prior~q\ : std_logic;
SIGNAL \Selector|ALT_INV_Mostrar_Displays~0_combout\ : std_logic;
SIGNAL \Selector|ALT_INV_Seleccion~q\ : std_logic;
SIGNAL \Selector|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \Selector|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \MaquinaEstados|ALT_INV_edo_pres.S0~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_BotonPaso <= BotonPaso;
ww_Clock <= Clock;
ww_Sensores_In <= Sensores_In;
Leds_Semaforos <= ww_Leds_Semaforos;
Displays <= ww_Displays;
Segmentos <= ww_Segmentos;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Reloj1Seg|salida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reloj1Seg|salida~q\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);
\ALT_INV_Clock~inputclkctrl_outclk\ <= NOT \Clock~inputclkctrl_outclk\;
\ALT_INV_BotonPaso~input_o\ <= NOT \BotonPaso~input_o\;
\Selector|ALT_INV_Equal0~0_combout\ <= NOT \Selector|Equal0~0_combout\;
\Selector|ALT_INV_Equal5~0_combout\ <= NOT \Selector|Equal5~0_combout\;
\Selector|ALT_INV_Equal2~0_combout\ <= NOT \Selector|Equal2~0_combout\;
\Controlador_Sensores|ALT_INV_Senal_Prior~q\ <= NOT \Controlador_Sensores|Senal_Prior~q\;
\Selector|ALT_INV_Mostrar_Displays~0_combout\ <= NOT \Selector|Mostrar_Displays~0_combout\;
\Selector|ALT_INV_Seleccion~q\ <= NOT \Selector|Seleccion~q\;
\Selector|ALT_INV_WideOr0~0_combout\ <= NOT \Selector|WideOr0~0_combout\;
\Selector|ALT_INV_WideOr1~0_combout\ <= NOT \Selector|WideOr1~0_combout\;
\MaquinaEstados|ALT_INV_edo_pres.S0~q\ <= NOT \MaquinaEstados|edo_pres.S0~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y6_N16
\Leds_Semaforos[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MaquinaEstados|edo_pres.S0~q\,
	devoe => ww_devoe,
	o => \Leds_Semaforos[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\Leds_Semaforos[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MaquinaEstados|ALT_INV_edo_pres.S0~q\,
	devoe => ww_devoe,
	o => \Leds_Semaforos[1]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\Leds_Semaforos[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector|ALT_INV_WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \Leds_Semaforos[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\Leds_Semaforos[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MaquinaEstados|edo_pres.S4~q\,
	devoe => ww_devoe,
	o => \Leds_Semaforos[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\Leds_Semaforos[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MaquinaEstados|edo_pres.S3~q\,
	devoe => ww_devoe,
	o => \Leds_Semaforos[4]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\Leds_Semaforos[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \Leds_Semaforos[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\Leds_Semaforos[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MaquinaEstados|edo_pres.S2~q\,
	devoe => ww_devoe,
	o => \Leds_Semaforos[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\Leds_Semaforos[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MaquinaEstados|edo_pres.S1~q\,
	devoe => ww_devoe,
	o => \Leds_Semaforos[7]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\Displays[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector|Seleccion~q\,
	devoe => ww_devoe,
	o => \Displays[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\Displays[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector|ALT_INV_Seleccion~q\,
	devoe => ww_devoe,
	o => \Displays[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\Segmentos[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector|Segmentos[0]~1_combout\,
	devoe => ww_devoe,
	o => \Segmentos[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\Segmentos[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector|Segmentos[1]~2_combout\,
	devoe => ww_devoe,
	o => \Segmentos[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\Segmentos[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector|Segmentos[2]~3_combout\,
	devoe => ww_devoe,
	o => \Segmentos[2]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\Segmentos[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector|Segmentos[3]~5_combout\,
	devoe => ww_devoe,
	o => \Segmentos[3]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\Segmentos[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector|Segmentos[4]~6_combout\,
	devoe => ww_devoe,
	o => \Segmentos[4]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\Segmentos[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector|Segmentos[5]~8_combout\,
	devoe => ww_devoe,
	o => \Segmentos[5]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\Segmentos[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector|Segmentos[6]~10_combout\,
	devoe => ww_devoe,
	o => \Segmentos[6]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G2
\Clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X7_Y7_N4
\Reloj1Seg|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~0_combout\ = \Reloj1Seg|cuenta\(0) $ (VCC)
-- \Reloj1Seg|Add0~1\ = CARRY(\Reloj1Seg|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1Seg|cuenta\(0),
	datad => VCC,
	combout => \Reloj1Seg|Add0~0_combout\,
	cout => \Reloj1Seg|Add0~1\);

-- Location: LCCOMB_X8_Y7_N30
\Reloj1Seg|cuenta~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|cuenta~11_combout\ = (\Reloj1Seg|Add0~0_combout\ & !\Reloj1Seg|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj1Seg|Add0~0_combout\,
	datad => \Reloj1Seg|Equal0~8_combout\,
	combout => \Reloj1Seg|cuenta~11_combout\);

-- Location: FF_X7_Y7_N3
\Reloj1Seg|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Reloj1Seg|cuenta~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(0));

-- Location: LCCOMB_X7_Y7_N6
\Reloj1Seg|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~2_combout\ = (\Reloj1Seg|cuenta\(1) & (!\Reloj1Seg|Add0~1\)) # (!\Reloj1Seg|cuenta\(1) & ((\Reloj1Seg|Add0~1\) # (GND)))
-- \Reloj1Seg|Add0~3\ = CARRY((!\Reloj1Seg|Add0~1\) # (!\Reloj1Seg|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1Seg|cuenta\(1),
	datad => VCC,
	cin => \Reloj1Seg|Add0~1\,
	combout => \Reloj1Seg|Add0~2_combout\,
	cout => \Reloj1Seg|Add0~3\);

-- Location: FF_X7_Y7_N7
\Reloj1Seg|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Reloj1Seg|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(1));

-- Location: LCCOMB_X7_Y7_N8
\Reloj1Seg|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~4_combout\ = (\Reloj1Seg|cuenta\(2) & (\Reloj1Seg|Add0~3\ $ (GND))) # (!\Reloj1Seg|cuenta\(2) & (!\Reloj1Seg|Add0~3\ & VCC))
-- \Reloj1Seg|Add0~5\ = CARRY((\Reloj1Seg|cuenta\(2) & !\Reloj1Seg|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1Seg|cuenta\(2),
	datad => VCC,
	cin => \Reloj1Seg|Add0~3\,
	combout => \Reloj1Seg|Add0~4_combout\,
	cout => \Reloj1Seg|Add0~5\);

-- Location: FF_X7_Y7_N9
\Reloj1Seg|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Reloj1Seg|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(2));

-- Location: LCCOMB_X7_Y7_N10
\Reloj1Seg|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~6_combout\ = (\Reloj1Seg|cuenta\(3) & (!\Reloj1Seg|Add0~5\)) # (!\Reloj1Seg|cuenta\(3) & ((\Reloj1Seg|Add0~5\) # (GND)))
-- \Reloj1Seg|Add0~7\ = CARRY((!\Reloj1Seg|Add0~5\) # (!\Reloj1Seg|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1Seg|cuenta\(3),
	datad => VCC,
	cin => \Reloj1Seg|Add0~5\,
	combout => \Reloj1Seg|Add0~6_combout\,
	cout => \Reloj1Seg|Add0~7\);

-- Location: FF_X7_Y7_N11
\Reloj1Seg|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Reloj1Seg|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(3));

-- Location: LCCOMB_X7_Y7_N12
\Reloj1Seg|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~8_combout\ = (\Reloj1Seg|cuenta\(4) & (\Reloj1Seg|Add0~7\ $ (GND))) # (!\Reloj1Seg|cuenta\(4) & (!\Reloj1Seg|Add0~7\ & VCC))
-- \Reloj1Seg|Add0~9\ = CARRY((\Reloj1Seg|cuenta\(4) & !\Reloj1Seg|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1Seg|cuenta\(4),
	datad => VCC,
	cin => \Reloj1Seg|Add0~7\,
	combout => \Reloj1Seg|Add0~8_combout\,
	cout => \Reloj1Seg|Add0~9\);

-- Location: FF_X7_Y7_N13
\Reloj1Seg|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Reloj1Seg|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(4));

-- Location: LCCOMB_X7_Y7_N14
\Reloj1Seg|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~10_combout\ = (\Reloj1Seg|cuenta\(5) & (!\Reloj1Seg|Add0~9\)) # (!\Reloj1Seg|cuenta\(5) & ((\Reloj1Seg|Add0~9\) # (GND)))
-- \Reloj1Seg|Add0~11\ = CARRY((!\Reloj1Seg|Add0~9\) # (!\Reloj1Seg|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1Seg|cuenta\(5),
	datad => VCC,
	cin => \Reloj1Seg|Add0~9\,
	combout => \Reloj1Seg|Add0~10_combout\,
	cout => \Reloj1Seg|Add0~11\);

-- Location: FF_X7_Y7_N15
\Reloj1Seg|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Reloj1Seg|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(5));

-- Location: LCCOMB_X7_Y7_N16
\Reloj1Seg|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~12_combout\ = (\Reloj1Seg|cuenta\(6) & (\Reloj1Seg|Add0~11\ $ (GND))) # (!\Reloj1Seg|cuenta\(6) & (!\Reloj1Seg|Add0~11\ & VCC))
-- \Reloj1Seg|Add0~13\ = CARRY((\Reloj1Seg|cuenta\(6) & !\Reloj1Seg|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1Seg|cuenta\(6),
	datad => VCC,
	cin => \Reloj1Seg|Add0~11\,
	combout => \Reloj1Seg|Add0~12_combout\,
	cout => \Reloj1Seg|Add0~13\);

-- Location: LCCOMB_X8_Y7_N0
\Reloj1Seg|cuenta~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|cuenta~10_combout\ = (\Reloj1Seg|Add0~12_combout\ & !\Reloj1Seg|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj1Seg|Add0~12_combout\,
	datad => \Reloj1Seg|Equal0~8_combout\,
	combout => \Reloj1Seg|cuenta~10_combout\);

-- Location: FF_X7_Y7_N27
\Reloj1Seg|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Reloj1Seg|cuenta~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(6));

-- Location: LCCOMB_X7_Y7_N18
\Reloj1Seg|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~14_combout\ = (\Reloj1Seg|cuenta\(7) & (!\Reloj1Seg|Add0~13\)) # (!\Reloj1Seg|cuenta\(7) & ((\Reloj1Seg|Add0~13\) # (GND)))
-- \Reloj1Seg|Add0~15\ = CARRY((!\Reloj1Seg|Add0~13\) # (!\Reloj1Seg|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1Seg|cuenta\(7),
	datad => VCC,
	cin => \Reloj1Seg|Add0~13\,
	combout => \Reloj1Seg|Add0~14_combout\,
	cout => \Reloj1Seg|Add0~15\);

-- Location: FF_X7_Y7_N19
\Reloj1Seg|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Reloj1Seg|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(7));

-- Location: LCCOMB_X8_Y6_N12
\Reloj1Seg|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Equal0~5_combout\ = (!\Reloj1Seg|cuenta\(4) & (!\Reloj1Seg|cuenta\(5) & (!\Reloj1Seg|cuenta\(7) & \Reloj1Seg|cuenta\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1Seg|cuenta\(4),
	datab => \Reloj1Seg|cuenta\(5),
	datac => \Reloj1Seg|cuenta\(7),
	datad => \Reloj1Seg|cuenta\(6),
	combout => \Reloj1Seg|Equal0~5_combout\);

-- Location: LCCOMB_X7_Y7_N20
\Reloj1Seg|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~16_combout\ = (\Reloj1Seg|cuenta\(8) & (\Reloj1Seg|Add0~15\ $ (GND))) # (!\Reloj1Seg|cuenta\(8) & (!\Reloj1Seg|Add0~15\ & VCC))
-- \Reloj1Seg|Add0~17\ = CARRY((\Reloj1Seg|cuenta\(8) & !\Reloj1Seg|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1Seg|cuenta\(8),
	datad => VCC,
	cin => \Reloj1Seg|Add0~15\,
	combout => \Reloj1Seg|Add0~16_combout\,
	cout => \Reloj1Seg|Add0~17\);

-- Location: FF_X7_Y7_N21
\Reloj1Seg|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Reloj1Seg|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(8));

-- Location: LCCOMB_X7_Y7_N22
\Reloj1Seg|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~18_combout\ = (\Reloj1Seg|cuenta\(9) & (!\Reloj1Seg|Add0~17\)) # (!\Reloj1Seg|cuenta\(9) & ((\Reloj1Seg|Add0~17\) # (GND)))
-- \Reloj1Seg|Add0~19\ = CARRY((!\Reloj1Seg|Add0~17\) # (!\Reloj1Seg|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1Seg|cuenta\(9),
	datad => VCC,
	cin => \Reloj1Seg|Add0~17\,
	combout => \Reloj1Seg|Add0~18_combout\,
	cout => \Reloj1Seg|Add0~19\);

-- Location: FF_X7_Y7_N23
\Reloj1Seg|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Reloj1Seg|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(9));

-- Location: LCCOMB_X7_Y7_N24
\Reloj1Seg|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~20_combout\ = (\Reloj1Seg|cuenta\(10) & (\Reloj1Seg|Add0~19\ $ (GND))) # (!\Reloj1Seg|cuenta\(10) & (!\Reloj1Seg|Add0~19\ & VCC))
-- \Reloj1Seg|Add0~21\ = CARRY((\Reloj1Seg|cuenta\(10) & !\Reloj1Seg|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1Seg|cuenta\(10),
	datad => VCC,
	cin => \Reloj1Seg|Add0~19\,
	combout => \Reloj1Seg|Add0~20_combout\,
	cout => \Reloj1Seg|Add0~21\);

-- Location: FF_X7_Y7_N25
\Reloj1Seg|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Reloj1Seg|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(10));

-- Location: LCCOMB_X7_Y7_N26
\Reloj1Seg|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~22_combout\ = (\Reloj1Seg|cuenta\(11) & (!\Reloj1Seg|Add0~21\)) # (!\Reloj1Seg|cuenta\(11) & ((\Reloj1Seg|Add0~21\) # (GND)))
-- \Reloj1Seg|Add0~23\ = CARRY((!\Reloj1Seg|Add0~21\) # (!\Reloj1Seg|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1Seg|cuenta\(11),
	datad => VCC,
	cin => \Reloj1Seg|Add0~21\,
	combout => \Reloj1Seg|Add0~22_combout\,
	cout => \Reloj1Seg|Add0~23\);

-- Location: LCCOMB_X8_Y6_N14
\Reloj1Seg|cuenta~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|cuenta~9_combout\ = (!\Reloj1Seg|Equal0~8_combout\ & \Reloj1Seg|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj1Seg|Equal0~8_combout\,
	datad => \Reloj1Seg|Add0~22_combout\,
	combout => \Reloj1Seg|cuenta~9_combout\);

-- Location: FF_X8_Y6_N15
\Reloj1Seg|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Reloj1Seg|cuenta~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(11));

-- Location: LCCOMB_X7_Y7_N28
\Reloj1Seg|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~24_combout\ = (\Reloj1Seg|cuenta\(12) & (\Reloj1Seg|Add0~23\ $ (GND))) # (!\Reloj1Seg|cuenta\(12) & (!\Reloj1Seg|Add0~23\ & VCC))
-- \Reloj1Seg|Add0~25\ = CARRY((\Reloj1Seg|cuenta\(12) & !\Reloj1Seg|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1Seg|cuenta\(12),
	datad => VCC,
	cin => \Reloj1Seg|Add0~23\,
	combout => \Reloj1Seg|Add0~24_combout\,
	cout => \Reloj1Seg|Add0~25\);

-- Location: LCCOMB_X7_Y7_N0
\Reloj1Seg|cuenta~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|cuenta~8_combout\ = (!\Reloj1Seg|Equal0~8_combout\ & \Reloj1Seg|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj1Seg|Equal0~8_combout\,
	datad => \Reloj1Seg|Add0~24_combout\,
	combout => \Reloj1Seg|cuenta~8_combout\);

-- Location: FF_X7_Y7_N1
\Reloj1Seg|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Reloj1Seg|cuenta~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(12));

-- Location: LCCOMB_X7_Y7_N30
\Reloj1Seg|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~26_combout\ = (\Reloj1Seg|cuenta\(13) & (!\Reloj1Seg|Add0~25\)) # (!\Reloj1Seg|cuenta\(13) & ((\Reloj1Seg|Add0~25\) # (GND)))
-- \Reloj1Seg|Add0~27\ = CARRY((!\Reloj1Seg|Add0~25\) # (!\Reloj1Seg|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1Seg|cuenta\(13),
	datad => VCC,
	cin => \Reloj1Seg|Add0~25\,
	combout => \Reloj1Seg|Add0~26_combout\,
	cout => \Reloj1Seg|Add0~27\);

-- Location: LCCOMB_X8_Y6_N6
\Reloj1Seg|cuenta~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|cuenta~7_combout\ = (!\Reloj1Seg|Equal0~8_combout\ & \Reloj1Seg|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1Seg|Equal0~8_combout\,
	datac => \Reloj1Seg|Add0~26_combout\,
	combout => \Reloj1Seg|cuenta~7_combout\);

-- Location: FF_X8_Y6_N7
\Reloj1Seg|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Reloj1Seg|cuenta~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(13));

-- Location: LCCOMB_X7_Y6_N0
\Reloj1Seg|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~28_combout\ = (\Reloj1Seg|cuenta\(14) & (\Reloj1Seg|Add0~27\ $ (GND))) # (!\Reloj1Seg|cuenta\(14) & (!\Reloj1Seg|Add0~27\ & VCC))
-- \Reloj1Seg|Add0~29\ = CARRY((\Reloj1Seg|cuenta\(14) & !\Reloj1Seg|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1Seg|cuenta\(14),
	datad => VCC,
	cin => \Reloj1Seg|Add0~27\,
	combout => \Reloj1Seg|Add0~28_combout\,
	cout => \Reloj1Seg|Add0~29\);

-- Location: LCCOMB_X8_Y6_N0
\Reloj1Seg|cuenta~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|cuenta~6_combout\ = (!\Reloj1Seg|Equal0~8_combout\ & \Reloj1Seg|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1Seg|Equal0~8_combout\,
	datad => \Reloj1Seg|Add0~28_combout\,
	combout => \Reloj1Seg|cuenta~6_combout\);

-- Location: FF_X8_Y6_N1
\Reloj1Seg|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Reloj1Seg|cuenta~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(14));

-- Location: LCCOMB_X7_Y6_N2
\Reloj1Seg|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~30_combout\ = (\Reloj1Seg|cuenta\(15) & (!\Reloj1Seg|Add0~29\)) # (!\Reloj1Seg|cuenta\(15) & ((\Reloj1Seg|Add0~29\) # (GND)))
-- \Reloj1Seg|Add0~31\ = CARRY((!\Reloj1Seg|Add0~29\) # (!\Reloj1Seg|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1Seg|cuenta\(15),
	datad => VCC,
	cin => \Reloj1Seg|Add0~29\,
	combout => \Reloj1Seg|Add0~30_combout\,
	cout => \Reloj1Seg|Add0~31\);

-- Location: FF_X7_Y6_N3
\Reloj1Seg|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Reloj1Seg|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(15));

-- Location: LCCOMB_X7_Y6_N4
\Reloj1Seg|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~32_combout\ = (\Reloj1Seg|cuenta\(16) & (\Reloj1Seg|Add0~31\ $ (GND))) # (!\Reloj1Seg|cuenta\(16) & (!\Reloj1Seg|Add0~31\ & VCC))
-- \Reloj1Seg|Add0~33\ = CARRY((\Reloj1Seg|cuenta\(16) & !\Reloj1Seg|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1Seg|cuenta\(16),
	datad => VCC,
	cin => \Reloj1Seg|Add0~31\,
	combout => \Reloj1Seg|Add0~32_combout\,
	cout => \Reloj1Seg|Add0~33\);

-- Location: LCCOMB_X8_Y6_N28
\Reloj1Seg|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|cuenta~5_combout\ = (!\Reloj1Seg|Equal0~8_combout\ & \Reloj1Seg|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1Seg|Equal0~8_combout\,
	datac => \Reloj1Seg|Add0~32_combout\,
	combout => \Reloj1Seg|cuenta~5_combout\);

-- Location: FF_X8_Y6_N29
\Reloj1Seg|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Reloj1Seg|cuenta~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(16));

-- Location: LCCOMB_X7_Y6_N6
\Reloj1Seg|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~34_combout\ = (\Reloj1Seg|cuenta\(17) & (!\Reloj1Seg|Add0~33\)) # (!\Reloj1Seg|cuenta\(17) & ((\Reloj1Seg|Add0~33\) # (GND)))
-- \Reloj1Seg|Add0~35\ = CARRY((!\Reloj1Seg|Add0~33\) # (!\Reloj1Seg|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1Seg|cuenta\(17),
	datad => VCC,
	cin => \Reloj1Seg|Add0~33\,
	combout => \Reloj1Seg|Add0~34_combout\,
	cout => \Reloj1Seg|Add0~35\);

-- Location: FF_X7_Y6_N7
\Reloj1Seg|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Reloj1Seg|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(17));

-- Location: LCCOMB_X7_Y6_N8
\Reloj1Seg|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~36_combout\ = (\Reloj1Seg|cuenta\(18) & (\Reloj1Seg|Add0~35\ $ (GND))) # (!\Reloj1Seg|cuenta\(18) & (!\Reloj1Seg|Add0~35\ & VCC))
-- \Reloj1Seg|Add0~37\ = CARRY((\Reloj1Seg|cuenta\(18) & !\Reloj1Seg|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1Seg|cuenta\(18),
	datad => VCC,
	cin => \Reloj1Seg|Add0~35\,
	combout => \Reloj1Seg|Add0~36_combout\,
	cout => \Reloj1Seg|Add0~37\);

-- Location: LCCOMB_X8_Y6_N30
\Reloj1Seg|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|cuenta~4_combout\ = (!\Reloj1Seg|Equal0~8_combout\ & \Reloj1Seg|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj1Seg|Equal0~8_combout\,
	datad => \Reloj1Seg|Add0~36_combout\,
	combout => \Reloj1Seg|cuenta~4_combout\);

-- Location: FF_X8_Y6_N31
\Reloj1Seg|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Reloj1Seg|cuenta~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(18));

-- Location: LCCOMB_X7_Y6_N10
\Reloj1Seg|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~38_combout\ = (\Reloj1Seg|cuenta\(19) & (!\Reloj1Seg|Add0~37\)) # (!\Reloj1Seg|cuenta\(19) & ((\Reloj1Seg|Add0~37\) # (GND)))
-- \Reloj1Seg|Add0~39\ = CARRY((!\Reloj1Seg|Add0~37\) # (!\Reloj1Seg|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1Seg|cuenta\(19),
	datad => VCC,
	cin => \Reloj1Seg|Add0~37\,
	combout => \Reloj1Seg|Add0~38_combout\,
	cout => \Reloj1Seg|Add0~39\);

-- Location: LCCOMB_X7_Y6_N30
\Reloj1Seg|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|cuenta~3_combout\ = (!\Reloj1Seg|Equal0~8_combout\ & \Reloj1Seg|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1Seg|Equal0~8_combout\,
	datad => \Reloj1Seg|Add0~38_combout\,
	combout => \Reloj1Seg|cuenta~3_combout\);

-- Location: FF_X7_Y6_N31
\Reloj1Seg|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Reloj1Seg|cuenta~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(19));

-- Location: LCCOMB_X7_Y6_N12
\Reloj1Seg|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~40_combout\ = (\Reloj1Seg|cuenta\(20) & (\Reloj1Seg|Add0~39\ $ (GND))) # (!\Reloj1Seg|cuenta\(20) & (!\Reloj1Seg|Add0~39\ & VCC))
-- \Reloj1Seg|Add0~41\ = CARRY((\Reloj1Seg|cuenta\(20) & !\Reloj1Seg|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1Seg|cuenta\(20),
	datad => VCC,
	cin => \Reloj1Seg|Add0~39\,
	combout => \Reloj1Seg|Add0~40_combout\,
	cout => \Reloj1Seg|Add0~41\);

-- Location: LCCOMB_X8_Y6_N10
\Reloj1Seg|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|cuenta~2_combout\ = (!\Reloj1Seg|Equal0~8_combout\ & \Reloj1Seg|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj1Seg|Equal0~8_combout\,
	datad => \Reloj1Seg|Add0~40_combout\,
	combout => \Reloj1Seg|cuenta~2_combout\);

-- Location: FF_X8_Y6_N11
\Reloj1Seg|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Reloj1Seg|cuenta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(20));

-- Location: LCCOMB_X7_Y6_N14
\Reloj1Seg|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~42_combout\ = (\Reloj1Seg|cuenta\(21) & (!\Reloj1Seg|Add0~41\)) # (!\Reloj1Seg|cuenta\(21) & ((\Reloj1Seg|Add0~41\) # (GND)))
-- \Reloj1Seg|Add0~43\ = CARRY((!\Reloj1Seg|Add0~41\) # (!\Reloj1Seg|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1Seg|cuenta\(21),
	datad => VCC,
	cin => \Reloj1Seg|Add0~41\,
	combout => \Reloj1Seg|Add0~42_combout\,
	cout => \Reloj1Seg|Add0~43\);

-- Location: LCCOMB_X7_Y6_N28
\Reloj1Seg|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|cuenta~1_combout\ = (\Reloj1Seg|Add0~42_combout\ & !\Reloj1Seg|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj1Seg|Add0~42_combout\,
	datad => \Reloj1Seg|Equal0~8_combout\,
	combout => \Reloj1Seg|cuenta~1_combout\);

-- Location: FF_X7_Y6_N29
\Reloj1Seg|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Reloj1Seg|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(21));

-- Location: LCCOMB_X7_Y6_N16
\Reloj1Seg|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~44_combout\ = (\Reloj1Seg|cuenta\(22) & (\Reloj1Seg|Add0~43\ $ (GND))) # (!\Reloj1Seg|cuenta\(22) & (!\Reloj1Seg|Add0~43\ & VCC))
-- \Reloj1Seg|Add0~45\ = CARRY((\Reloj1Seg|cuenta\(22) & !\Reloj1Seg|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1Seg|cuenta\(22),
	datad => VCC,
	cin => \Reloj1Seg|Add0~43\,
	combout => \Reloj1Seg|Add0~44_combout\,
	cout => \Reloj1Seg|Add0~45\);

-- Location: LCCOMB_X8_Y6_N8
\Reloj1Seg|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|cuenta~0_combout\ = (!\Reloj1Seg|Equal0~8_combout\ & \Reloj1Seg|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1Seg|Equal0~8_combout\,
	datac => \Reloj1Seg|Add0~44_combout\,
	combout => \Reloj1Seg|cuenta~0_combout\);

-- Location: FF_X8_Y6_N9
\Reloj1Seg|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Reloj1Seg|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(22));

-- Location: LCCOMB_X7_Y6_N18
\Reloj1Seg|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~46_combout\ = (\Reloj1Seg|cuenta\(23) & (!\Reloj1Seg|Add0~45\)) # (!\Reloj1Seg|cuenta\(23) & ((\Reloj1Seg|Add0~45\) # (GND)))
-- \Reloj1Seg|Add0~47\ = CARRY((!\Reloj1Seg|Add0~45\) # (!\Reloj1Seg|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1Seg|cuenta\(23),
	datad => VCC,
	cin => \Reloj1Seg|Add0~45\,
	combout => \Reloj1Seg|Add0~46_combout\,
	cout => \Reloj1Seg|Add0~47\);

-- Location: FF_X7_Y6_N19
\Reloj1Seg|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Reloj1Seg|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(23));

-- Location: LCCOMB_X7_Y6_N20
\Reloj1Seg|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~48_combout\ = (\Reloj1Seg|cuenta\(24) & (\Reloj1Seg|Add0~47\ $ (GND))) # (!\Reloj1Seg|cuenta\(24) & (!\Reloj1Seg|Add0~47\ & VCC))
-- \Reloj1Seg|Add0~49\ = CARRY((\Reloj1Seg|cuenta\(24) & !\Reloj1Seg|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1Seg|cuenta\(24),
	datad => VCC,
	cin => \Reloj1Seg|Add0~47\,
	combout => \Reloj1Seg|Add0~48_combout\,
	cout => \Reloj1Seg|Add0~49\);

-- Location: LCCOMB_X8_Y6_N18
\Reloj1Seg|cuenta~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|cuenta~12_combout\ = (\Reloj1Seg|Add0~48_combout\ & !\Reloj1Seg|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1Seg|Add0~48_combout\,
	datac => \Reloj1Seg|Equal0~8_combout\,
	combout => \Reloj1Seg|cuenta~12_combout\);

-- Location: FF_X8_Y6_N19
\Reloj1Seg|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Reloj1Seg|cuenta~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(24));

-- Location: LCCOMB_X7_Y6_N22
\Reloj1Seg|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~50_combout\ = (\Reloj1Seg|cuenta\(25) & (!\Reloj1Seg|Add0~49\)) # (!\Reloj1Seg|cuenta\(25) & ((\Reloj1Seg|Add0~49\) # (GND)))
-- \Reloj1Seg|Add0~51\ = CARRY((!\Reloj1Seg|Add0~49\) # (!\Reloj1Seg|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1Seg|cuenta\(25),
	datad => VCC,
	cin => \Reloj1Seg|Add0~49\,
	combout => \Reloj1Seg|Add0~50_combout\,
	cout => \Reloj1Seg|Add0~51\);

-- Location: FF_X7_Y6_N23
\Reloj1Seg|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Reloj1Seg|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(25));

-- Location: LCCOMB_X7_Y6_N24
\Reloj1Seg|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~52_combout\ = (\Reloj1Seg|cuenta\(26) & (\Reloj1Seg|Add0~51\ $ (GND))) # (!\Reloj1Seg|cuenta\(26) & (!\Reloj1Seg|Add0~51\ & VCC))
-- \Reloj1Seg|Add0~53\ = CARRY((\Reloj1Seg|cuenta\(26) & !\Reloj1Seg|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1Seg|cuenta\(26),
	datad => VCC,
	cin => \Reloj1Seg|Add0~51\,
	combout => \Reloj1Seg|Add0~52_combout\,
	cout => \Reloj1Seg|Add0~53\);

-- Location: FF_X7_Y6_N25
\Reloj1Seg|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Reloj1Seg|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(26));

-- Location: LCCOMB_X7_Y6_N26
\Reloj1Seg|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Add0~54_combout\ = \Reloj1Seg|cuenta\(27) $ (\Reloj1Seg|Add0~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1Seg|cuenta\(27),
	cin => \Reloj1Seg|Add0~53\,
	combout => \Reloj1Seg|Add0~54_combout\);

-- Location: FF_X7_Y6_N27
\Reloj1Seg|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Reloj1Seg|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|cuenta\(27));

-- Location: LCCOMB_X8_Y6_N24
\Reloj1Seg|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Equal0~7_combout\ = (!\Reloj1Seg|cuenta\(25) & (\Reloj1Seg|cuenta\(24) & (!\Reloj1Seg|cuenta\(27) & !\Reloj1Seg|cuenta\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1Seg|cuenta\(25),
	datab => \Reloj1Seg|cuenta\(24),
	datac => \Reloj1Seg|cuenta\(27),
	datad => \Reloj1Seg|cuenta\(26),
	combout => \Reloj1Seg|Equal0~7_combout\);

-- Location: LCCOMB_X7_Y7_N2
\Reloj1Seg|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Equal0~6_combout\ = (!\Reloj1Seg|cuenta\(3) & (!\Reloj1Seg|cuenta\(2) & (!\Reloj1Seg|cuenta\(0) & !\Reloj1Seg|cuenta\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1Seg|cuenta\(3),
	datab => \Reloj1Seg|cuenta\(2),
	datac => \Reloj1Seg|cuenta\(0),
	datad => \Reloj1Seg|cuenta\(1),
	combout => \Reloj1Seg|Equal0~6_combout\);

-- Location: LCCOMB_X8_Y6_N26
\Reloj1Seg|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Equal0~1_combout\ = (\Reloj1Seg|cuenta\(18) & (\Reloj1Seg|cuenta\(16) & (!\Reloj1Seg|cuenta\(17) & \Reloj1Seg|cuenta\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1Seg|cuenta\(18),
	datab => \Reloj1Seg|cuenta\(16),
	datac => \Reloj1Seg|cuenta\(17),
	datad => \Reloj1Seg|cuenta\(19),
	combout => \Reloj1Seg|Equal0~1_combout\);

-- Location: LCCOMB_X8_Y6_N20
\Reloj1Seg|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Equal0~0_combout\ = (\Reloj1Seg|cuenta\(20) & (!\Reloj1Seg|cuenta\(23) & (\Reloj1Seg|cuenta\(22) & \Reloj1Seg|cuenta\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1Seg|cuenta\(20),
	datab => \Reloj1Seg|cuenta\(23),
	datac => \Reloj1Seg|cuenta\(22),
	datad => \Reloj1Seg|cuenta\(21),
	combout => \Reloj1Seg|Equal0~0_combout\);

-- Location: LCCOMB_X8_Y6_N4
\Reloj1Seg|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Equal0~2_combout\ = (!\Reloj1Seg|cuenta\(15) & (\Reloj1Seg|cuenta\(14) & (\Reloj1Seg|cuenta\(13) & \Reloj1Seg|cuenta\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1Seg|cuenta\(15),
	datab => \Reloj1Seg|cuenta\(14),
	datac => \Reloj1Seg|cuenta\(13),
	datad => \Reloj1Seg|cuenta\(12),
	combout => \Reloj1Seg|Equal0~2_combout\);

-- Location: LCCOMB_X8_Y6_N16
\Reloj1Seg|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Equal0~3_combout\ = (!\Reloj1Seg|cuenta\(8) & (\Reloj1Seg|cuenta\(11) & (!\Reloj1Seg|cuenta\(10) & !\Reloj1Seg|cuenta\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1Seg|cuenta\(8),
	datab => \Reloj1Seg|cuenta\(11),
	datac => \Reloj1Seg|cuenta\(10),
	datad => \Reloj1Seg|cuenta\(9),
	combout => \Reloj1Seg|Equal0~3_combout\);

-- Location: LCCOMB_X8_Y6_N2
\Reloj1Seg|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Equal0~4_combout\ = (\Reloj1Seg|Equal0~1_combout\ & (\Reloj1Seg|Equal0~0_combout\ & (\Reloj1Seg|Equal0~2_combout\ & \Reloj1Seg|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1Seg|Equal0~1_combout\,
	datab => \Reloj1Seg|Equal0~0_combout\,
	datac => \Reloj1Seg|Equal0~2_combout\,
	datad => \Reloj1Seg|Equal0~3_combout\,
	combout => \Reloj1Seg|Equal0~4_combout\);

-- Location: LCCOMB_X8_Y6_N22
\Reloj1Seg|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|Equal0~8_combout\ = (\Reloj1Seg|Equal0~5_combout\ & (\Reloj1Seg|Equal0~7_combout\ & (\Reloj1Seg|Equal0~6_combout\ & \Reloj1Seg|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1Seg|Equal0~5_combout\,
	datab => \Reloj1Seg|Equal0~7_combout\,
	datac => \Reloj1Seg|Equal0~6_combout\,
	datad => \Reloj1Seg|Equal0~4_combout\,
	combout => \Reloj1Seg|Equal0~8_combout\);

-- Location: LCCOMB_X9_Y6_N18
\Reloj1Seg|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|salida~0_combout\ = \Reloj1Seg|salida~q\ $ (\Reloj1Seg|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj1Seg|salida~q\,
	datad => \Reloj1Seg|Equal0~8_combout\,
	combout => \Reloj1Seg|salida~0_combout\);

-- Location: LCCOMB_X9_Y6_N0
\Reloj1Seg|salida~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1Seg|salida~feeder_combout\ = \Reloj1Seg|salida~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1Seg|salida~0_combout\,
	combout => \Reloj1Seg|salida~feeder_combout\);

-- Location: FF_X9_Y6_N1
\Reloj1Seg|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Reloj1Seg|salida~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1Seg|salida~q\);

-- Location: CLKCTRL_G0
\Reloj1Seg|salida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reloj1Seg|salida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reloj1Seg|salida~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y19_N28
\Contador_Tiempo|Num_Tiempo~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador_Tiempo|Num_Tiempo~1_combout\ = (!\Contador_Tiempo|Num_Tiempo\(0) & !\Contador_Tiempo|Num_Tiempo\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Contador_Tiempo|Num_Tiempo\(0),
	datad => \Contador_Tiempo|Num_Tiempo\(3),
	combout => \Contador_Tiempo|Num_Tiempo~1_combout\);

-- Location: IOIBUF_X0_Y9_N8
\Sensores_In[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sensores_In(3),
	o => \Sensores_In[3]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\Sensores_In[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sensores_In(2),
	o => \Sensores_In[2]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\Sensores_In[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sensores_In(1),
	o => \Sensores_In[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\Sensores_In[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sensores_In(0),
	o => \Sensores_In[0]~input_o\);

-- Location: LCCOMB_X23_Y18_N12
\Controlador_Sensores|process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Controlador_Sensores|process_2~0_combout\ = (\Sensores_In[3]~input_o\ & ((\Sensores_In[2]~input_o\) # ((\Sensores_In[1]~input_o\ & \Sensores_In[0]~input_o\)))) # (!\Sensores_In[3]~input_o\ & (((\Sensores_In[1]~input_o\ & \Sensores_In[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensores_In[3]~input_o\,
	datab => \Sensores_In[2]~input_o\,
	datac => \Sensores_In[1]~input_o\,
	datad => \Sensores_In[0]~input_o\,
	combout => \Controlador_Sensores|process_2~0_combout\);

-- Location: LCCOMB_X23_Y18_N28
\Controlador_Sensores|cuenta[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Controlador_Sensores|cuenta[0]~4_combout\ = !\Controlador_Sensores|cuenta\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Controlador_Sensores|cuenta\(0),
	combout => \Controlador_Sensores|cuenta[0]~4_combout\);

-- Location: LCCOMB_X23_Y18_N0
\Controlador_Sensores|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Controlador_Sensores|Add0~0_combout\ = \Controlador_Sensores|cuenta_prioritaria\(0) $ (VCC)
-- \Controlador_Sensores|Add0~1\ = CARRY(\Controlador_Sensores|cuenta_prioritaria\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controlador_Sensores|cuenta_prioritaria\(0),
	datad => VCC,
	combout => \Controlador_Sensores|Add0~0_combout\,
	cout => \Controlador_Sensores|Add0~1\);

-- Location: LCCOMB_X22_Y18_N28
\MaquinaEstados|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MaquinaEstados|Selector4~0_combout\ = (!\Controlador_Sensores|Senal_Prior~q\ & (\MaquinaEstados|edo_pres.S3~q\ & ((\Controlador_Sensores|Senal_Sensor~q\) # (\Contador_Tiempo|t~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controlador_Sensores|Senal_Sensor~q\,
	datab => \Controlador_Sensores|Senal_Prior~q\,
	datac => \MaquinaEstados|edo_pres.S3~q\,
	datad => \Contador_Tiempo|t~q\,
	combout => \MaquinaEstados|Selector4~0_combout\);

-- Location: FF_X22_Y18_N29
\MaquinaEstados|edo_pres.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \MaquinaEstados|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MaquinaEstados|edo_pres.S4~q\);

-- Location: LCCOMB_X22_Y18_N10
\MaquinaEstados|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MaquinaEstados|Selector2~0_combout\ = (!\Controlador_Sensores|Senal_Prior~q\ & (!\Controlador_Sensores|Senal_Sensor~q\ & !\Contador_Tiempo|t~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controlador_Sensores|Senal_Prior~q\,
	datac => \Controlador_Sensores|Senal_Sensor~q\,
	datad => \Contador_Tiempo|t~q\,
	combout => \MaquinaEstados|Selector2~0_combout\);

-- Location: LCCOMB_X22_Y18_N22
\MaquinaEstados|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MaquinaEstados|Selector5~0_combout\ = (\MaquinaEstados|edo_pres.S0~q\ & (((\MaquinaEstados|edo_pres.S1~q\ & \MaquinaEstados|Selector2~0_combout\)))) # (!\MaquinaEstados|edo_pres.S0~q\ & ((\Contador_Tiempo|t~q\) # ((\MaquinaEstados|edo_pres.S1~q\ & 
-- \MaquinaEstados|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MaquinaEstados|edo_pres.S0~q\,
	datab => \Contador_Tiempo|t~q\,
	datac => \MaquinaEstados|edo_pres.S1~q\,
	datad => \MaquinaEstados|Selector2~0_combout\,
	combout => \MaquinaEstados|Selector5~0_combout\);

-- Location: FF_X22_Y18_N23
\MaquinaEstados|edo_pres.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \MaquinaEstados|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MaquinaEstados|edo_pres.S1~q\);

-- Location: LCCOMB_X22_Y18_N18
\Selector|Mostrar_Displays~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Mostrar_Displays~0_combout\ = (\MaquinaEstados|edo_pres.S3~q\ & ((\MaquinaEstados|edo_pres.S4~q\) # ((\MaquinaEstados|edo_pres.S2~q\)))) # (!\MaquinaEstados|edo_pres.S3~q\ & (\MaquinaEstados|edo_pres.S1~q\ $ (((!\MaquinaEstados|edo_pres.S4~q\ & 
-- !\MaquinaEstados|edo_pres.S2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MaquinaEstados|edo_pres.S3~q\,
	datab => \MaquinaEstados|edo_pres.S4~q\,
	datac => \MaquinaEstados|edo_pres.S2~q\,
	datad => \MaquinaEstados|edo_pres.S1~q\,
	combout => \Selector|Mostrar_Displays~0_combout\);

-- Location: LCCOMB_X23_Y18_N16
\Controlador_Sensores|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Controlador_Sensores|Equal1~0_combout\ = (\Sensores_In[3]~input_o\ & (\Sensores_In[2]~input_o\ & (\Sensores_In[1]~input_o\ & \Sensores_In[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensores_In[3]~input_o\,
	datab => \Sensores_In[2]~input_o\,
	datac => \Sensores_In[1]~input_o\,
	datad => \Sensores_In[0]~input_o\,
	combout => \Controlador_Sensores|Equal1~0_combout\);

-- Location: IOIBUF_X30_Y0_N8
\BotonPaso~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BotonPaso,
	o => \BotonPaso~input_o\);

-- Location: LCCOMB_X22_Y18_N14
\Controlador_Sensores|Btn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Controlador_Sensores|Btn~0_combout\ = !\Controlador_Sensores|Btn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Controlador_Sensores|Btn~q\,
	combout => \Controlador_Sensores|Btn~0_combout\);

-- Location: FF_X22_Y18_N15
\Controlador_Sensores|Btn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_BotonPaso~input_o\,
	d => \Controlador_Sensores|Btn~0_combout\,
	clrn => \Controlador_Sensores|ALT_INV_Senal_Prior~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controlador_Sensores|Btn~q\);

-- Location: LCCOMB_X23_Y18_N22
\Controlador_Sensores|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Controlador_Sensores|process_1~0_combout\ = (\Controlador_Sensores|Equal1~0_combout\) # (\Controlador_Sensores|Btn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controlador_Sensores|Equal1~0_combout\,
	datad => \Controlador_Sensores|Btn~q\,
	combout => \Controlador_Sensores|process_1~0_combout\);

-- Location: FF_X23_Y18_N1
\Controlador_Sensores|cuenta_prioritaria[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Controlador_Sensores|Add0~0_combout\,
	clrn => \Selector|ALT_INV_Mostrar_Displays~0_combout\,
	ena => \Controlador_Sensores|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controlador_Sensores|cuenta_prioritaria\(0));

-- Location: LCCOMB_X23_Y18_N2
\Controlador_Sensores|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Controlador_Sensores|Add0~2_combout\ = (\Controlador_Sensores|cuenta_prioritaria\(1) & (!\Controlador_Sensores|Add0~1\)) # (!\Controlador_Sensores|cuenta_prioritaria\(1) & ((\Controlador_Sensores|Add0~1\) # (GND)))
-- \Controlador_Sensores|Add0~3\ = CARRY((!\Controlador_Sensores|Add0~1\) # (!\Controlador_Sensores|cuenta_prioritaria\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Controlador_Sensores|cuenta_prioritaria\(1),
	datad => VCC,
	cin => \Controlador_Sensores|Add0~1\,
	combout => \Controlador_Sensores|Add0~2_combout\,
	cout => \Controlador_Sensores|Add0~3\);

-- Location: LCCOMB_X23_Y18_N24
\Controlador_Sensores|cuenta_prioritaria~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Controlador_Sensores|cuenta_prioritaria~1_combout\ = (\Controlador_Sensores|Add0~2_combout\ & ((!\Controlador_Sensores|cuenta_prioritaria\(0)) # (!\Controlador_Sensores|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controlador_Sensores|Equal2~0_combout\,
	datab => \Controlador_Sensores|cuenta_prioritaria\(0),
	datad => \Controlador_Sensores|Add0~2_combout\,
	combout => \Controlador_Sensores|cuenta_prioritaria~1_combout\);

-- Location: FF_X23_Y18_N25
\Controlador_Sensores|cuenta_prioritaria[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Controlador_Sensores|cuenta_prioritaria~1_combout\,
	clrn => \Selector|ALT_INV_Mostrar_Displays~0_combout\,
	ena => \Controlador_Sensores|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controlador_Sensores|cuenta_prioritaria\(1));

-- Location: LCCOMB_X23_Y18_N4
\Controlador_Sensores|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Controlador_Sensores|Add0~4_combout\ = (\Controlador_Sensores|cuenta_prioritaria\(2) & (\Controlador_Sensores|Add0~3\ $ (GND))) # (!\Controlador_Sensores|cuenta_prioritaria\(2) & (!\Controlador_Sensores|Add0~3\ & VCC))
-- \Controlador_Sensores|Add0~5\ = CARRY((\Controlador_Sensores|cuenta_prioritaria\(2) & !\Controlador_Sensores|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Controlador_Sensores|cuenta_prioritaria\(2),
	datad => VCC,
	cin => \Controlador_Sensores|Add0~3\,
	combout => \Controlador_Sensores|Add0~4_combout\,
	cout => \Controlador_Sensores|Add0~5\);

-- Location: FF_X23_Y18_N5
\Controlador_Sensores|cuenta_prioritaria[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Controlador_Sensores|Add0~4_combout\,
	clrn => \Selector|ALT_INV_Mostrar_Displays~0_combout\,
	ena => \Controlador_Sensores|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controlador_Sensores|cuenta_prioritaria\(2));

-- Location: LCCOMB_X23_Y18_N6
\Controlador_Sensores|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Controlador_Sensores|Add0~6_combout\ = (\Controlador_Sensores|cuenta_prioritaria\(3) & (!\Controlador_Sensores|Add0~5\)) # (!\Controlador_Sensores|cuenta_prioritaria\(3) & ((\Controlador_Sensores|Add0~5\) # (GND)))
-- \Controlador_Sensores|Add0~7\ = CARRY((!\Controlador_Sensores|Add0~5\) # (!\Controlador_Sensores|cuenta_prioritaria\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Controlador_Sensores|cuenta_prioritaria\(3),
	datad => VCC,
	cin => \Controlador_Sensores|Add0~5\,
	combout => \Controlador_Sensores|Add0~6_combout\,
	cout => \Controlador_Sensores|Add0~7\);

-- Location: LCCOMB_X23_Y18_N30
\Controlador_Sensores|cuenta_prioritaria~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Controlador_Sensores|cuenta_prioritaria~0_combout\ = (\Controlador_Sensores|Add0~6_combout\ & ((!\Controlador_Sensores|cuenta_prioritaria\(0)) # (!\Controlador_Sensores|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controlador_Sensores|Equal2~0_combout\,
	datab => \Controlador_Sensores|cuenta_prioritaria\(0),
	datad => \Controlador_Sensores|Add0~6_combout\,
	combout => \Controlador_Sensores|cuenta_prioritaria~0_combout\);

-- Location: FF_X23_Y18_N31
\Controlador_Sensores|cuenta_prioritaria[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Controlador_Sensores|cuenta_prioritaria~0_combout\,
	clrn => \Selector|ALT_INV_Mostrar_Displays~0_combout\,
	ena => \Controlador_Sensores|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controlador_Sensores|cuenta_prioritaria\(3));

-- Location: LCCOMB_X23_Y18_N8
\Controlador_Sensores|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Controlador_Sensores|Add0~8_combout\ = \Controlador_Sensores|cuenta_prioritaria\(4) $ (!\Controlador_Sensores|Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Controlador_Sensores|cuenta_prioritaria\(4),
	cin => \Controlador_Sensores|Add0~7\,
	combout => \Controlador_Sensores|Add0~8_combout\);

-- Location: FF_X23_Y18_N9
\Controlador_Sensores|cuenta_prioritaria[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Controlador_Sensores|Add0~8_combout\,
	clrn => \Selector|ALT_INV_Mostrar_Displays~0_combout\,
	ena => \Controlador_Sensores|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controlador_Sensores|cuenta_prioritaria\(4));

-- Location: LCCOMB_X23_Y18_N10
\Controlador_Sensores|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Controlador_Sensores|Equal2~0_combout\ = (\Controlador_Sensores|cuenta_prioritaria\(3) & (!\Controlador_Sensores|cuenta_prioritaria\(2) & (!\Controlador_Sensores|cuenta_prioritaria\(4) & !\Controlador_Sensores|cuenta_prioritaria\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controlador_Sensores|cuenta_prioritaria\(3),
	datab => \Controlador_Sensores|cuenta_prioritaria\(2),
	datac => \Controlador_Sensores|cuenta_prioritaria\(4),
	datad => \Controlador_Sensores|cuenta_prioritaria\(1),
	combout => \Controlador_Sensores|Equal2~0_combout\);

-- Location: LCCOMB_X23_Y18_N26
\Controlador_Sensores|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Controlador_Sensores|Equal2~1_combout\ = (\Controlador_Sensores|cuenta_prioritaria\(0) & \Controlador_Sensores|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controlador_Sensores|cuenta_prioritaria\(0),
	datad => \Controlador_Sensores|Equal2~0_combout\,
	combout => \Controlador_Sensores|Equal2~1_combout\);

-- Location: FF_X23_Y18_N27
\Controlador_Sensores|Senal_Prior\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Controlador_Sensores|Equal2~1_combout\,
	clrn => \Selector|ALT_INV_Mostrar_Displays~0_combout\,
	ena => \Controlador_Sensores|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controlador_Sensores|Senal_Prior~q\);

-- Location: LCCOMB_X22_Y18_N30
\MaquinaEstados|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MaquinaEstados|Selector2~1_combout\ = (\MaquinaEstados|edo_pres.S2~q\ & (((\MaquinaEstados|edo_pres.S3~q\ & \MaquinaEstados|Selector2~0_combout\)) # (!\Controlador_Sensores|Senal_Prior~q\))) # (!\MaquinaEstados|edo_pres.S2~q\ & 
-- (((\MaquinaEstados|edo_pres.S3~q\ & \MaquinaEstados|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MaquinaEstados|edo_pres.S2~q\,
	datab => \Controlador_Sensores|Senal_Prior~q\,
	datac => \MaquinaEstados|edo_pres.S3~q\,
	datad => \MaquinaEstados|Selector2~0_combout\,
	combout => \MaquinaEstados|Selector2~1_combout\);

-- Location: FF_X22_Y18_N31
\MaquinaEstados|edo_pres.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \MaquinaEstados|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MaquinaEstados|edo_pres.S3~q\);

-- Location: LCCOMB_X22_Y18_N26
\Selector|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Equal0~0_combout\ = (\MaquinaEstados|edo_pres.S2~q\) # ((\MaquinaEstados|edo_pres.S4~q\) # ((!\MaquinaEstados|edo_pres.S3~q\ & !\MaquinaEstados|edo_pres.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MaquinaEstados|edo_pres.S3~q\,
	datab => \MaquinaEstados|edo_pres.S2~q\,
	datac => \MaquinaEstados|edo_pres.S1~q\,
	datad => \MaquinaEstados|edo_pres.S4~q\,
	combout => \Selector|Equal0~0_combout\);

-- Location: FF_X23_Y18_N29
\Controlador_Sensores|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Controlador_Sensores|cuenta[0]~4_combout\,
	clrn => \Selector|ALT_INV_Equal0~0_combout\,
	ena => \Controlador_Sensores|process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controlador_Sensores|cuenta\(0));

-- Location: LCCOMB_X24_Y18_N24
\Controlador_Sensores|cuenta[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Controlador_Sensores|cuenta[1]~0_combout\ = \Controlador_Sensores|cuenta\(1) $ (((\Controlador_Sensores|process_2~0_combout\ & \Controlador_Sensores|cuenta\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controlador_Sensores|process_2~0_combout\,
	datac => \Controlador_Sensores|cuenta\(1),
	datad => \Controlador_Sensores|cuenta\(0),
	combout => \Controlador_Sensores|cuenta[1]~0_combout\);

-- Location: FF_X24_Y18_N25
\Controlador_Sensores|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Controlador_Sensores|cuenta[1]~0_combout\,
	clrn => \Selector|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controlador_Sensores|cuenta\(1));

-- Location: LCCOMB_X23_Y18_N14
\Controlador_Sensores|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Controlador_Sensores|cuenta~3_combout\ = (\Controlador_Sensores|cuenta\(0) & ((\Controlador_Sensores|cuenta\(2) & ((!\Controlador_Sensores|cuenta\(1)))) # (!\Controlador_Sensores|cuenta\(2) & (\Controlador_Sensores|cuenta\(3) & 
-- \Controlador_Sensores|cuenta\(1))))) # (!\Controlador_Sensores|cuenta\(0) & (((\Controlador_Sensores|cuenta\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controlador_Sensores|cuenta\(3),
	datab => \Controlador_Sensores|cuenta\(0),
	datac => \Controlador_Sensores|cuenta\(2),
	datad => \Controlador_Sensores|cuenta\(1),
	combout => \Controlador_Sensores|cuenta~3_combout\);

-- Location: FF_X23_Y18_N15
\Controlador_Sensores|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Controlador_Sensores|cuenta~3_combout\,
	clrn => \Selector|ALT_INV_Equal0~0_combout\,
	ena => \Controlador_Sensores|process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controlador_Sensores|cuenta\(2));

-- Location: LCCOMB_X24_Y18_N28
\Controlador_Sensores|cuenta[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Controlador_Sensores|cuenta[3]~1_combout\ = (\Controlador_Sensores|cuenta\(2) & (\Controlador_Sensores|cuenta\(0) & \Controlador_Sensores|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controlador_Sensores|cuenta\(2),
	datab => \Controlador_Sensores|cuenta\(0),
	datad => \Controlador_Sensores|cuenta\(1),
	combout => \Controlador_Sensores|cuenta[3]~1_combout\);

-- Location: LCCOMB_X24_Y18_N2
\Controlador_Sensores|cuenta[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Controlador_Sensores|cuenta[3]~2_combout\ = \Controlador_Sensores|cuenta\(3) $ (((\Controlador_Sensores|process_2~0_combout\ & \Controlador_Sensores|cuenta[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controlador_Sensores|process_2~0_combout\,
	datac => \Controlador_Sensores|cuenta\(3),
	datad => \Controlador_Sensores|cuenta[3]~1_combout\,
	combout => \Controlador_Sensores|cuenta[3]~2_combout\);

-- Location: FF_X24_Y18_N3
\Controlador_Sensores|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Controlador_Sensores|cuenta[3]~2_combout\,
	clrn => \Selector|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controlador_Sensores|cuenta\(3));

-- Location: LCCOMB_X23_Y18_N20
\Controlador_Sensores|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Controlador_Sensores|Equal6~0_combout\ = (!\Controlador_Sensores|cuenta\(3) & (\Controlador_Sensores|cuenta\(0) & (!\Controlador_Sensores|cuenta\(2) & \Controlador_Sensores|cuenta\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controlador_Sensores|cuenta\(3),
	datab => \Controlador_Sensores|cuenta\(0),
	datac => \Controlador_Sensores|cuenta\(2),
	datad => \Controlador_Sensores|cuenta\(1),
	combout => \Controlador_Sensores|Equal6~0_combout\);

-- Location: FF_X23_Y18_N21
\Controlador_Sensores|Senal_Sensor\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Controlador_Sensores|Equal6~0_combout\,
	clrn => \Selector|ALT_INV_Equal0~0_combout\,
	ena => \Controlador_Sensores|process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controlador_Sensores|Senal_Sensor~q\);

-- Location: LCCOMB_X22_Y18_N8
\MaquinaEstados|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MaquinaEstados|Selector0~0_combout\ = (\MaquinaEstados|edo_pres.S1~q\ & (!\Controlador_Sensores|Senal_Prior~q\ & ((\Controlador_Sensores|Senal_Sensor~q\) # (\Contador_Tiempo|t~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controlador_Sensores|Senal_Sensor~q\,
	datab => \Contador_Tiempo|t~q\,
	datac => \MaquinaEstados|edo_pres.S1~q\,
	datad => \Controlador_Sensores|Senal_Prior~q\,
	combout => \MaquinaEstados|Selector0~0_combout\);

-- Location: FF_X22_Y18_N9
\MaquinaEstados|edo_pres.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \MaquinaEstados|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MaquinaEstados|edo_pres.S2~q\);

-- Location: LCCOMB_X22_Y18_N0
\Selector|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Equal5~0_combout\ = (\MaquinaEstados|edo_pres.S2~q\) # (\MaquinaEstados|edo_pres.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MaquinaEstados|edo_pres.S2~q\,
	datad => \MaquinaEstados|edo_pres.S4~q\,
	combout => \Selector|Equal5~0_combout\);

-- Location: FF_X21_Y19_N29
\Contador_Tiempo|Num_Tiempo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Contador_Tiempo|Num_Tiempo~1_combout\,
	clrn => \Selector|ALT_INV_Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador_Tiempo|Num_Tiempo\(0));

-- Location: LCCOMB_X21_Y19_N18
\Contador_Tiempo|Num_Tiempo~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador_Tiempo|Num_Tiempo~2_combout\ = (!\Contador_Tiempo|Num_Tiempo\(3) & (\Contador_Tiempo|Num_Tiempo\(1) $ (\Contador_Tiempo|Num_Tiempo\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_Tiempo|Num_Tiempo\(3),
	datac => \Contador_Tiempo|Num_Tiempo\(1),
	datad => \Contador_Tiempo|Num_Tiempo\(0),
	combout => \Contador_Tiempo|Num_Tiempo~2_combout\);

-- Location: FF_X21_Y19_N19
\Contador_Tiempo|Num_Tiempo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Contador_Tiempo|Num_Tiempo~2_combout\,
	clrn => \Selector|ALT_INV_Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador_Tiempo|Num_Tiempo\(1));

-- Location: LCCOMB_X21_Y19_N12
\Contador_Tiempo|Num_Tiempo~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador_Tiempo|Num_Tiempo~3_combout\ = (!\Contador_Tiempo|Num_Tiempo\(3) & (\Contador_Tiempo|Num_Tiempo\(2) $ (((\Contador_Tiempo|Num_Tiempo\(0) & \Contador_Tiempo|Num_Tiempo\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_Tiempo|Num_Tiempo\(3),
	datab => \Contador_Tiempo|Num_Tiempo\(0),
	datac => \Contador_Tiempo|Num_Tiempo\(2),
	datad => \Contador_Tiempo|Num_Tiempo\(1),
	combout => \Contador_Tiempo|Num_Tiempo~3_combout\);

-- Location: FF_X21_Y19_N13
\Contador_Tiempo|Num_Tiempo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Contador_Tiempo|Num_Tiempo~3_combout\,
	clrn => \Selector|ALT_INV_Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador_Tiempo|Num_Tiempo\(2));

-- Location: LCCOMB_X21_Y19_N10
\Contador_Tiempo|Num_Tiempo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador_Tiempo|Num_Tiempo~0_combout\ = (\Contador_Tiempo|Num_Tiempo\(2) & (\Contador_Tiempo|Num_Tiempo\(0) & (!\Contador_Tiempo|Num_Tiempo\(3) & \Contador_Tiempo|Num_Tiempo\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_Tiempo|Num_Tiempo\(2),
	datab => \Contador_Tiempo|Num_Tiempo\(0),
	datac => \Contador_Tiempo|Num_Tiempo\(3),
	datad => \Contador_Tiempo|Num_Tiempo\(1),
	combout => \Contador_Tiempo|Num_Tiempo~0_combout\);

-- Location: FF_X21_Y19_N11
\Contador_Tiempo|Num_Tiempo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Contador_Tiempo|Num_Tiempo~0_combout\,
	clrn => \Selector|ALT_INV_Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador_Tiempo|Num_Tiempo\(3));

-- Location: LCCOMB_X21_Y19_N8
\Contador_Tiempo|t~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador_Tiempo|t~0_combout\ = (!\Contador_Tiempo|t~q\ & \Contador_Tiempo|Num_Tiempo\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Contador_Tiempo|t~q\,
	datad => \Contador_Tiempo|Num_Tiempo\(3),
	combout => \Contador_Tiempo|t~0_combout\);

-- Location: FF_X21_Y19_N9
\Contador_Tiempo|t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Contador_Tiempo|t~0_combout\,
	clrn => \Selector|ALT_INV_Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador_Tiempo|t~q\);

-- Location: LCCOMB_X22_Y18_N16
\MaquinaEstados|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MaquinaEstados|Selector7~0_combout\ = (\Controlador_Sensores|Senal_Prior~q\) # ((!\MaquinaEstados|edo_pres.S2~q\ & (!\MaquinaEstados|edo_pres.S3~q\ & !\MaquinaEstados|edo_pres.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MaquinaEstados|edo_pres.S2~q\,
	datab => \Controlador_Sensores|Senal_Prior~q\,
	datac => \MaquinaEstados|edo_pres.S3~q\,
	datad => \MaquinaEstados|edo_pres.S1~q\,
	combout => \MaquinaEstados|Selector7~0_combout\);

-- Location: LCCOMB_X22_Y18_N20
\MaquinaEstados|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MaquinaEstados|Selector7~1_combout\ = ((\Contador_Tiempo|t~q\ & !\MaquinaEstados|edo_pres.S0~q\)) # (!\MaquinaEstados|Selector7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Contador_Tiempo|t~q\,
	datac => \MaquinaEstados|edo_pres.S0~q\,
	datad => \MaquinaEstados|Selector7~0_combout\,
	combout => \MaquinaEstados|Selector7~1_combout\);

-- Location: FF_X22_Y18_N21
\MaquinaEstados|edo_pres.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \MaquinaEstados|Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MaquinaEstados|edo_pres.S0~q\);

-- Location: LCCOMB_X13_Y1_N28
\Selector|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|WideOr1~0_combout\ = (\MaquinaEstados|edo_pres.S3~q\) # (\MaquinaEstados|edo_pres.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MaquinaEstados|edo_pres.S3~q\,
	datad => \MaquinaEstados|edo_pres.S4~q\,
	combout => \Selector|WideOr1~0_combout\);

-- Location: LCCOMB_X22_Y1_N28
\Selector|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|WideOr0~0_combout\ = (\MaquinaEstados|edo_pres.S2~q\) # (\MaquinaEstados|edo_pres.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MaquinaEstados|edo_pres.S2~q\,
	datad => \MaquinaEstados|edo_pres.S1~q\,
	combout => \Selector|WideOr0~0_combout\);

-- Location: LCCOMB_X23_Y21_N16
\Selector|Cuenta[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Cuenta[0]~17_combout\ = \Selector|Cuenta\(0) $ (VCC)
-- \Selector|Cuenta[0]~18\ = CARRY(\Selector|Cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector|Cuenta\(0),
	datad => VCC,
	combout => \Selector|Cuenta[0]~17_combout\,
	cout => \Selector|Cuenta[0]~18\);

-- Location: FF_X23_Y21_N17
\Selector|Cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \Selector|Cuenta[0]~17_combout\,
	sclr => \Selector|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Selector|Cuenta\(0));

-- Location: LCCOMB_X23_Y21_N18
\Selector|Cuenta[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Cuenta[1]~19_combout\ = (\Selector|Cuenta\(1) & (!\Selector|Cuenta[0]~18\)) # (!\Selector|Cuenta\(1) & ((\Selector|Cuenta[0]~18\) # (GND)))
-- \Selector|Cuenta[1]~20\ = CARRY((!\Selector|Cuenta[0]~18\) # (!\Selector|Cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Selector|Cuenta\(1),
	datad => VCC,
	cin => \Selector|Cuenta[0]~18\,
	combout => \Selector|Cuenta[1]~19_combout\,
	cout => \Selector|Cuenta[1]~20\);

-- Location: FF_X23_Y21_N19
\Selector|Cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \Selector|Cuenta[1]~19_combout\,
	sclr => \Selector|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Selector|Cuenta\(1));

-- Location: LCCOMB_X23_Y21_N20
\Selector|Cuenta[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Cuenta[2]~21_combout\ = (\Selector|Cuenta\(2) & (\Selector|Cuenta[1]~20\ $ (GND))) # (!\Selector|Cuenta\(2) & (!\Selector|Cuenta[1]~20\ & VCC))
-- \Selector|Cuenta[2]~22\ = CARRY((\Selector|Cuenta\(2) & !\Selector|Cuenta[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Selector|Cuenta\(2),
	datad => VCC,
	cin => \Selector|Cuenta[1]~20\,
	combout => \Selector|Cuenta[2]~21_combout\,
	cout => \Selector|Cuenta[2]~22\);

-- Location: FF_X23_Y21_N21
\Selector|Cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \Selector|Cuenta[2]~21_combout\,
	sclr => \Selector|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Selector|Cuenta\(2));

-- Location: LCCOMB_X23_Y21_N22
\Selector|Cuenta[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Cuenta[3]~23_combout\ = (\Selector|Cuenta\(3) & (!\Selector|Cuenta[2]~22\)) # (!\Selector|Cuenta\(3) & ((\Selector|Cuenta[2]~22\) # (GND)))
-- \Selector|Cuenta[3]~24\ = CARRY((!\Selector|Cuenta[2]~22\) # (!\Selector|Cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Selector|Cuenta\(3),
	datad => VCC,
	cin => \Selector|Cuenta[2]~22\,
	combout => \Selector|Cuenta[3]~23_combout\,
	cout => \Selector|Cuenta[3]~24\);

-- Location: FF_X23_Y21_N23
\Selector|Cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \Selector|Cuenta[3]~23_combout\,
	sclr => \Selector|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Selector|Cuenta\(3));

-- Location: LCCOMB_X23_Y21_N24
\Selector|Cuenta[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Cuenta[4]~25_combout\ = (\Selector|Cuenta\(4) & (\Selector|Cuenta[3]~24\ $ (GND))) # (!\Selector|Cuenta\(4) & (!\Selector|Cuenta[3]~24\ & VCC))
-- \Selector|Cuenta[4]~26\ = CARRY((\Selector|Cuenta\(4) & !\Selector|Cuenta[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Selector|Cuenta\(4),
	datad => VCC,
	cin => \Selector|Cuenta[3]~24\,
	combout => \Selector|Cuenta[4]~25_combout\,
	cout => \Selector|Cuenta[4]~26\);

-- Location: FF_X23_Y21_N25
\Selector|Cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \Selector|Cuenta[4]~25_combout\,
	sclr => \Selector|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Selector|Cuenta\(4));

-- Location: LCCOMB_X23_Y21_N26
\Selector|Cuenta[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Cuenta[5]~27_combout\ = (\Selector|Cuenta\(5) & (!\Selector|Cuenta[4]~26\)) # (!\Selector|Cuenta\(5) & ((\Selector|Cuenta[4]~26\) # (GND)))
-- \Selector|Cuenta[5]~28\ = CARRY((!\Selector|Cuenta[4]~26\) # (!\Selector|Cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Selector|Cuenta\(5),
	datad => VCC,
	cin => \Selector|Cuenta[4]~26\,
	combout => \Selector|Cuenta[5]~27_combout\,
	cout => \Selector|Cuenta[5]~28\);

-- Location: FF_X23_Y21_N27
\Selector|Cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \Selector|Cuenta[5]~27_combout\,
	sclr => \Selector|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Selector|Cuenta\(5));

-- Location: LCCOMB_X23_Y21_N28
\Selector|Cuenta[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Cuenta[6]~29_combout\ = (\Selector|Cuenta\(6) & (\Selector|Cuenta[5]~28\ $ (GND))) # (!\Selector|Cuenta\(6) & (!\Selector|Cuenta[5]~28\ & VCC))
-- \Selector|Cuenta[6]~30\ = CARRY((\Selector|Cuenta\(6) & !\Selector|Cuenta[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Selector|Cuenta\(6),
	datad => VCC,
	cin => \Selector|Cuenta[5]~28\,
	combout => \Selector|Cuenta[6]~29_combout\,
	cout => \Selector|Cuenta[6]~30\);

-- Location: FF_X23_Y21_N29
\Selector|Cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \Selector|Cuenta[6]~29_combout\,
	sclr => \Selector|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Selector|Cuenta\(6));

-- Location: LCCOMB_X23_Y21_N30
\Selector|Cuenta[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Cuenta[7]~31_combout\ = (\Selector|Cuenta\(7) & (!\Selector|Cuenta[6]~30\)) # (!\Selector|Cuenta\(7) & ((\Selector|Cuenta[6]~30\) # (GND)))
-- \Selector|Cuenta[7]~32\ = CARRY((!\Selector|Cuenta[6]~30\) # (!\Selector|Cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Selector|Cuenta\(7),
	datad => VCC,
	cin => \Selector|Cuenta[6]~30\,
	combout => \Selector|Cuenta[7]~31_combout\,
	cout => \Selector|Cuenta[7]~32\);

-- Location: FF_X23_Y21_N31
\Selector|Cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \Selector|Cuenta[7]~31_combout\,
	sclr => \Selector|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Selector|Cuenta\(7));

-- Location: LCCOMB_X23_Y20_N0
\Selector|Cuenta[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Cuenta[8]~33_combout\ = (\Selector|Cuenta\(8) & (\Selector|Cuenta[7]~32\ $ (GND))) # (!\Selector|Cuenta\(8) & (!\Selector|Cuenta[7]~32\ & VCC))
-- \Selector|Cuenta[8]~34\ = CARRY((\Selector|Cuenta\(8) & !\Selector|Cuenta[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Selector|Cuenta\(8),
	datad => VCC,
	cin => \Selector|Cuenta[7]~32\,
	combout => \Selector|Cuenta[8]~33_combout\,
	cout => \Selector|Cuenta[8]~34\);

-- Location: FF_X23_Y20_N1
\Selector|Cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \Selector|Cuenta[8]~33_combout\,
	sclr => \Selector|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Selector|Cuenta\(8));

-- Location: LCCOMB_X23_Y20_N2
\Selector|Cuenta[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Cuenta[9]~35_combout\ = (\Selector|Cuenta\(9) & (!\Selector|Cuenta[8]~34\)) # (!\Selector|Cuenta\(9) & ((\Selector|Cuenta[8]~34\) # (GND)))
-- \Selector|Cuenta[9]~36\ = CARRY((!\Selector|Cuenta[8]~34\) # (!\Selector|Cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Selector|Cuenta\(9),
	datad => VCC,
	cin => \Selector|Cuenta[8]~34\,
	combout => \Selector|Cuenta[9]~35_combout\,
	cout => \Selector|Cuenta[9]~36\);

-- Location: FF_X23_Y20_N3
\Selector|Cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \Selector|Cuenta[9]~35_combout\,
	sclr => \Selector|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Selector|Cuenta\(9));

-- Location: LCCOMB_X23_Y20_N4
\Selector|Cuenta[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Cuenta[10]~37_combout\ = (\Selector|Cuenta\(10) & (\Selector|Cuenta[9]~36\ $ (GND))) # (!\Selector|Cuenta\(10) & (!\Selector|Cuenta[9]~36\ & VCC))
-- \Selector|Cuenta[10]~38\ = CARRY((\Selector|Cuenta\(10) & !\Selector|Cuenta[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Selector|Cuenta\(10),
	datad => VCC,
	cin => \Selector|Cuenta[9]~36\,
	combout => \Selector|Cuenta[10]~37_combout\,
	cout => \Selector|Cuenta[10]~38\);

-- Location: FF_X23_Y20_N5
\Selector|Cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \Selector|Cuenta[10]~37_combout\,
	sclr => \Selector|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Selector|Cuenta\(10));

-- Location: LCCOMB_X23_Y20_N6
\Selector|Cuenta[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Cuenta[11]~39_combout\ = (\Selector|Cuenta\(11) & (!\Selector|Cuenta[10]~38\)) # (!\Selector|Cuenta\(11) & ((\Selector|Cuenta[10]~38\) # (GND)))
-- \Selector|Cuenta[11]~40\ = CARRY((!\Selector|Cuenta[10]~38\) # (!\Selector|Cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Selector|Cuenta\(11),
	datad => VCC,
	cin => \Selector|Cuenta[10]~38\,
	combout => \Selector|Cuenta[11]~39_combout\,
	cout => \Selector|Cuenta[11]~40\);

-- Location: FF_X23_Y20_N7
\Selector|Cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \Selector|Cuenta[11]~39_combout\,
	sclr => \Selector|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Selector|Cuenta\(11));

-- Location: LCCOMB_X23_Y20_N8
\Selector|Cuenta[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Cuenta[12]~41_combout\ = (\Selector|Cuenta\(12) & (\Selector|Cuenta[11]~40\ $ (GND))) # (!\Selector|Cuenta\(12) & (!\Selector|Cuenta[11]~40\ & VCC))
-- \Selector|Cuenta[12]~42\ = CARRY((\Selector|Cuenta\(12) & !\Selector|Cuenta[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Selector|Cuenta\(12),
	datad => VCC,
	cin => \Selector|Cuenta[11]~40\,
	combout => \Selector|Cuenta[12]~41_combout\,
	cout => \Selector|Cuenta[12]~42\);

-- Location: FF_X23_Y20_N9
\Selector|Cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \Selector|Cuenta[12]~41_combout\,
	sclr => \Selector|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Selector|Cuenta\(12));

-- Location: LCCOMB_X23_Y20_N10
\Selector|Cuenta[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Cuenta[13]~43_combout\ = (\Selector|Cuenta\(13) & (!\Selector|Cuenta[12]~42\)) # (!\Selector|Cuenta\(13) & ((\Selector|Cuenta[12]~42\) # (GND)))
-- \Selector|Cuenta[13]~44\ = CARRY((!\Selector|Cuenta[12]~42\) # (!\Selector|Cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Selector|Cuenta\(13),
	datad => VCC,
	cin => \Selector|Cuenta[12]~42\,
	combout => \Selector|Cuenta[13]~43_combout\,
	cout => \Selector|Cuenta[13]~44\);

-- Location: FF_X23_Y20_N11
\Selector|Cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \Selector|Cuenta[13]~43_combout\,
	sclr => \Selector|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Selector|Cuenta\(13));

-- Location: LCCOMB_X23_Y20_N12
\Selector|Cuenta[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Cuenta[14]~45_combout\ = (\Selector|Cuenta\(14) & (\Selector|Cuenta[13]~44\ $ (GND))) # (!\Selector|Cuenta\(14) & (!\Selector|Cuenta[13]~44\ & VCC))
-- \Selector|Cuenta[14]~46\ = CARRY((\Selector|Cuenta\(14) & !\Selector|Cuenta[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Selector|Cuenta\(14),
	datad => VCC,
	cin => \Selector|Cuenta[13]~44\,
	combout => \Selector|Cuenta[14]~45_combout\,
	cout => \Selector|Cuenta[14]~46\);

-- Location: FF_X23_Y20_N13
\Selector|Cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \Selector|Cuenta[14]~45_combout\,
	sclr => \Selector|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Selector|Cuenta\(14));

-- Location: LCCOMB_X23_Y20_N30
\Selector|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|LessThan0~2_combout\ = (!\Selector|Cuenta\(13) & (!\Selector|Cuenta\(11) & (!\Selector|Cuenta\(12) & !\Selector|Cuenta\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector|Cuenta\(13),
	datab => \Selector|Cuenta\(11),
	datac => \Selector|Cuenta\(12),
	datad => \Selector|Cuenta\(14),
	combout => \Selector|LessThan0~2_combout\);

-- Location: LCCOMB_X23_Y20_N14
\Selector|Cuenta[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Cuenta[15]~47_combout\ = (\Selector|Cuenta\(15) & (!\Selector|Cuenta[14]~46\)) # (!\Selector|Cuenta\(15) & ((\Selector|Cuenta[14]~46\) # (GND)))
-- \Selector|Cuenta[15]~48\ = CARRY((!\Selector|Cuenta[14]~46\) # (!\Selector|Cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Selector|Cuenta\(15),
	datad => VCC,
	cin => \Selector|Cuenta[14]~46\,
	combout => \Selector|Cuenta[15]~47_combout\,
	cout => \Selector|Cuenta[15]~48\);

-- Location: FF_X23_Y20_N15
\Selector|Cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \Selector|Cuenta[15]~47_combout\,
	sclr => \Selector|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Selector|Cuenta\(15));

-- Location: LCCOMB_X23_Y20_N16
\Selector|Cuenta[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Cuenta[16]~49_combout\ = \Selector|Cuenta[15]~48\ $ (!\Selector|Cuenta\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Selector|Cuenta\(16),
	cin => \Selector|Cuenta[15]~48\,
	combout => \Selector|Cuenta[16]~49_combout\);

-- Location: FF_X23_Y20_N17
\Selector|Cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \Selector|Cuenta[16]~49_combout\,
	sclr => \Selector|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Selector|Cuenta\(16));

-- Location: LCCOMB_X23_Y21_N8
\Selector|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|LessThan0~0_combout\ = ((!\Selector|Cuenta\(5) & !\Selector|Cuenta\(6))) # (!\Selector|Cuenta\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector|Cuenta\(7),
	datac => \Selector|Cuenta\(5),
	datad => \Selector|Cuenta\(6),
	combout => \Selector|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y20_N28
\Selector|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|LessThan0~1_combout\ = (((!\Selector|Cuenta\(8) & \Selector|LessThan0~0_combout\)) # (!\Selector|Cuenta\(10))) # (!\Selector|Cuenta\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector|Cuenta\(9),
	datab => \Selector|Cuenta\(8),
	datac => \Selector|Cuenta\(10),
	datad => \Selector|LessThan0~0_combout\,
	combout => \Selector|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y20_N24
\Selector|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|LessThan0~3_combout\ = (\Selector|Cuenta\(16) & (\Selector|Cuenta\(15) & ((!\Selector|LessThan0~1_combout\) # (!\Selector|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector|LessThan0~2_combout\,
	datab => \Selector|Cuenta\(16),
	datac => \Selector|Cuenta\(15),
	datad => \Selector|LessThan0~1_combout\,
	combout => \Selector|LessThan0~3_combout\);

-- Location: LCCOMB_X23_Y20_N26
\Selector|Seleccion~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Seleccion~0_combout\ = \Selector|Seleccion~q\ $ (\Selector|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector|Seleccion~q\,
	datad => \Selector|LessThan0~3_combout\,
	combout => \Selector|Seleccion~0_combout\);

-- Location: FF_X23_Y20_N27
\Selector|Seleccion\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \Selector|Seleccion~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Selector|Seleccion~q\);

-- Location: LCCOMB_X21_Y18_N16
\Cuenta_NoPaso_Peatones|Q_intNP[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cuenta_NoPaso_Peatones|Q_intNP[0]~5_combout\ = \Cuenta_NoPaso_Peatones|Q_intNP\(0) $ (VCC)
-- \Cuenta_NoPaso_Peatones|Q_intNP[0]~6\ = CARRY(\Cuenta_NoPaso_Peatones|Q_intNP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cuenta_NoPaso_Peatones|Q_intNP\(0),
	datad => VCC,
	combout => \Cuenta_NoPaso_Peatones|Q_intNP[0]~5_combout\,
	cout => \Cuenta_NoPaso_Peatones|Q_intNP[0]~6\);

-- Location: LCCOMB_X19_Y18_N30
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X21_Y18_N4
\Cuenta_NoPaso_Peatones|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cuenta_NoPaso_Peatones|Add1~0_combout\ = \Cuenta_NoPaso_Peatones|numeroNP\(0) $ (GND)
-- \Cuenta_NoPaso_Peatones|Add1~1\ = CARRY(!\Cuenta_NoPaso_Peatones|numeroNP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_NoPaso_Peatones|numeroNP\(0),
	datad => VCC,
	combout => \Cuenta_NoPaso_Peatones|Add1~0_combout\,
	cout => \Cuenta_NoPaso_Peatones|Add1~1\);

-- Location: LCCOMB_X21_Y18_N26
\Cuenta_NoPaso_Peatones|numeroNP~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cuenta_NoPaso_Peatones|numeroNP~3_combout\ = (!\Cuenta_NoPaso_Peatones|Add1~0_combout\ & ((!\Cuenta_NoPaso_Peatones|Equal2~0_combout\) # (!\Cuenta_NoPaso_Peatones|numeroNP\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cuenta_NoPaso_Peatones|numeroNP\(1),
	datac => \Cuenta_NoPaso_Peatones|Add1~0_combout\,
	datad => \Cuenta_NoPaso_Peatones|Equal2~0_combout\,
	combout => \Cuenta_NoPaso_Peatones|numeroNP~3_combout\);

-- Location: FF_X21_Y18_N27
\Cuenta_NoPaso_Peatones|numeroNP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Cuenta_NoPaso_Peatones|numeroNP~3_combout\,
	clrn => \Selector|ALT_INV_Mostrar_Displays~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cuenta_NoPaso_Peatones|numeroNP\(0));

-- Location: LCCOMB_X21_Y18_N6
\Cuenta_NoPaso_Peatones|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cuenta_NoPaso_Peatones|Add1~2_combout\ = (\Cuenta_NoPaso_Peatones|numeroNP\(1) & (!\Cuenta_NoPaso_Peatones|Add1~1\)) # (!\Cuenta_NoPaso_Peatones|numeroNP\(1) & (\Cuenta_NoPaso_Peatones|Add1~1\ & VCC))
-- \Cuenta_NoPaso_Peatones|Add1~3\ = CARRY((\Cuenta_NoPaso_Peatones|numeroNP\(1) & !\Cuenta_NoPaso_Peatones|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cuenta_NoPaso_Peatones|numeroNP\(1),
	datad => VCC,
	cin => \Cuenta_NoPaso_Peatones|Add1~1\,
	combout => \Cuenta_NoPaso_Peatones|Add1~2_combout\,
	cout => \Cuenta_NoPaso_Peatones|Add1~3\);

-- Location: LCCOMB_X21_Y18_N8
\Cuenta_NoPaso_Peatones|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cuenta_NoPaso_Peatones|Add1~4_combout\ = (\Cuenta_NoPaso_Peatones|numeroNP\(2) & (\Cuenta_NoPaso_Peatones|Add1~3\ $ (GND))) # (!\Cuenta_NoPaso_Peatones|numeroNP\(2) & ((GND) # (!\Cuenta_NoPaso_Peatones|Add1~3\)))
-- \Cuenta_NoPaso_Peatones|Add1~5\ = CARRY((!\Cuenta_NoPaso_Peatones|Add1~3\) # (!\Cuenta_NoPaso_Peatones|numeroNP\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cuenta_NoPaso_Peatones|numeroNP\(2),
	datad => VCC,
	cin => \Cuenta_NoPaso_Peatones|Add1~3\,
	combout => \Cuenta_NoPaso_Peatones|Add1~4_combout\,
	cout => \Cuenta_NoPaso_Peatones|Add1~5\);

-- Location: LCCOMB_X21_Y18_N14
\Cuenta_NoPaso_Peatones|numeroNP~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cuenta_NoPaso_Peatones|numeroNP~2_combout\ = (!\Cuenta_NoPaso_Peatones|Add1~4_combout\ & ((!\Cuenta_NoPaso_Peatones|Equal2~0_combout\) # (!\Cuenta_NoPaso_Peatones|numeroNP\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cuenta_NoPaso_Peatones|numeroNP\(1),
	datac => \Cuenta_NoPaso_Peatones|Add1~4_combout\,
	datad => \Cuenta_NoPaso_Peatones|Equal2~0_combout\,
	combout => \Cuenta_NoPaso_Peatones|numeroNP~2_combout\);

-- Location: FF_X21_Y18_N15
\Cuenta_NoPaso_Peatones|numeroNP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Cuenta_NoPaso_Peatones|numeroNP~2_combout\,
	clrn => \Selector|ALT_INV_Mostrar_Displays~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cuenta_NoPaso_Peatones|numeroNP\(2));

-- Location: LCCOMB_X21_Y18_N10
\Cuenta_NoPaso_Peatones|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cuenta_NoPaso_Peatones|Add1~6_combout\ = (\Cuenta_NoPaso_Peatones|numeroNP\(3) & (\Cuenta_NoPaso_Peatones|Add1~5\ & VCC)) # (!\Cuenta_NoPaso_Peatones|numeroNP\(3) & (!\Cuenta_NoPaso_Peatones|Add1~5\))
-- \Cuenta_NoPaso_Peatones|Add1~7\ = CARRY((!\Cuenta_NoPaso_Peatones|numeroNP\(3) & !\Cuenta_NoPaso_Peatones|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cuenta_NoPaso_Peatones|numeroNP\(3),
	datad => VCC,
	cin => \Cuenta_NoPaso_Peatones|Add1~5\,
	combout => \Cuenta_NoPaso_Peatones|Add1~6_combout\,
	cout => \Cuenta_NoPaso_Peatones|Add1~7\);

-- Location: FF_X21_Y18_N11
\Cuenta_NoPaso_Peatones|numeroNP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Cuenta_NoPaso_Peatones|Add1~6_combout\,
	clrn => \Selector|ALT_INV_Mostrar_Displays~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cuenta_NoPaso_Peatones|numeroNP\(3));

-- Location: LCCOMB_X21_Y18_N12
\Cuenta_NoPaso_Peatones|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cuenta_NoPaso_Peatones|Add1~8_combout\ = \Cuenta_NoPaso_Peatones|Add1~7\ $ (!\Cuenta_NoPaso_Peatones|numeroNP\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Cuenta_NoPaso_Peatones|numeroNP\(4),
	cin => \Cuenta_NoPaso_Peatones|Add1~7\,
	combout => \Cuenta_NoPaso_Peatones|Add1~8_combout\);

-- Location: LCCOMB_X21_Y18_N2
\Cuenta_NoPaso_Peatones|numeroNP~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cuenta_NoPaso_Peatones|numeroNP~1_combout\ = (!\Cuenta_NoPaso_Peatones|Add1~8_combout\ & ((!\Cuenta_NoPaso_Peatones|numeroNP\(1)) # (!\Cuenta_NoPaso_Peatones|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cuenta_NoPaso_Peatones|Equal2~0_combout\,
	datac => \Cuenta_NoPaso_Peatones|numeroNP\(1),
	datad => \Cuenta_NoPaso_Peatones|Add1~8_combout\,
	combout => \Cuenta_NoPaso_Peatones|numeroNP~1_combout\);

-- Location: FF_X21_Y18_N3
\Cuenta_NoPaso_Peatones|numeroNP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Cuenta_NoPaso_Peatones|numeroNP~1_combout\,
	clrn => \Selector|ALT_INV_Mostrar_Displays~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cuenta_NoPaso_Peatones|numeroNP\(4));

-- Location: LCCOMB_X21_Y18_N28
\Cuenta_NoPaso_Peatones|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cuenta_NoPaso_Peatones|Equal2~0_combout\ = (!\Cuenta_NoPaso_Peatones|numeroNP\(3) & (\Cuenta_NoPaso_Peatones|numeroNP\(2) & (!\Cuenta_NoPaso_Peatones|numeroNP\(0) & \Cuenta_NoPaso_Peatones|numeroNP\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_NoPaso_Peatones|numeroNP\(3),
	datab => \Cuenta_NoPaso_Peatones|numeroNP\(2),
	datac => \Cuenta_NoPaso_Peatones|numeroNP\(0),
	datad => \Cuenta_NoPaso_Peatones|numeroNP\(4),
	combout => \Cuenta_NoPaso_Peatones|Equal2~0_combout\);

-- Location: LCCOMB_X21_Y18_N0
\Cuenta_NoPaso_Peatones|numeroNP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cuenta_NoPaso_Peatones|numeroNP~0_combout\ = (!\Cuenta_NoPaso_Peatones|Add1~2_combout\ & ((!\Cuenta_NoPaso_Peatones|numeroNP\(1)) # (!\Cuenta_NoPaso_Peatones|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cuenta_NoPaso_Peatones|Equal2~0_combout\,
	datac => \Cuenta_NoPaso_Peatones|numeroNP\(1),
	datad => \Cuenta_NoPaso_Peatones|Add1~2_combout\,
	combout => \Cuenta_NoPaso_Peatones|numeroNP~0_combout\);

-- Location: FF_X21_Y18_N1
\Cuenta_NoPaso_Peatones|numeroNP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Cuenta_NoPaso_Peatones|numeroNP~0_combout\,
	clrn => \Selector|ALT_INV_Mostrar_Displays~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cuenta_NoPaso_Peatones|numeroNP\(1));

-- Location: LCCOMB_X21_Y18_N30
\Cuenta_NoPaso_Peatones|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cuenta_NoPaso_Peatones|Equal2~1_combout\ = (\Cuenta_NoPaso_Peatones|numeroNP\(1) & \Cuenta_NoPaso_Peatones|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cuenta_NoPaso_Peatones|numeroNP\(1),
	datad => \Cuenta_NoPaso_Peatones|Equal2~0_combout\,
	combout => \Cuenta_NoPaso_Peatones|Equal2~1_combout\);

-- Location: FF_X21_Y18_N17
\Cuenta_NoPaso_Peatones|Q_intNP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Cuenta_NoPaso_Peatones|Q_intNP[0]~5_combout\,
	asdata => \~GND~combout\,
	clrn => \Selector|ALT_INV_Mostrar_Displays~0_combout\,
	sload => \Cuenta_NoPaso_Peatones|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cuenta_NoPaso_Peatones|Q_intNP\(0));

-- Location: LCCOMB_X21_Y18_N18
\Cuenta_NoPaso_Peatones|Q_intNP[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cuenta_NoPaso_Peatones|Q_intNP[1]~7_combout\ = (\Cuenta_NoPaso_Peatones|Q_intNP\(1) & (\Cuenta_NoPaso_Peatones|Q_intNP[0]~6\ $ (GND))) # (!\Cuenta_NoPaso_Peatones|Q_intNP\(1) & (!\Cuenta_NoPaso_Peatones|Q_intNP[0]~6\ & VCC))
-- \Cuenta_NoPaso_Peatones|Q_intNP[1]~8\ = CARRY((\Cuenta_NoPaso_Peatones|Q_intNP\(1) & !\Cuenta_NoPaso_Peatones|Q_intNP[0]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cuenta_NoPaso_Peatones|Q_intNP\(1),
	datad => VCC,
	cin => \Cuenta_NoPaso_Peatones|Q_intNP[0]~6\,
	combout => \Cuenta_NoPaso_Peatones|Q_intNP[1]~7_combout\,
	cout => \Cuenta_NoPaso_Peatones|Q_intNP[1]~8\);

-- Location: FF_X21_Y18_N19
\Cuenta_NoPaso_Peatones|Q_intNP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Cuenta_NoPaso_Peatones|Q_intNP[1]~7_combout\,
	asdata => \~GND~combout\,
	clrn => \Selector|ALT_INV_Mostrar_Displays~0_combout\,
	sload => \Cuenta_NoPaso_Peatones|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cuenta_NoPaso_Peatones|Q_intNP\(1));

-- Location: LCCOMB_X21_Y18_N20
\Cuenta_NoPaso_Peatones|Q_intNP[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cuenta_NoPaso_Peatones|Q_intNP[2]~9_combout\ = (\Cuenta_NoPaso_Peatones|Q_intNP\(2) & (!\Cuenta_NoPaso_Peatones|Q_intNP[1]~8\)) # (!\Cuenta_NoPaso_Peatones|Q_intNP\(2) & ((\Cuenta_NoPaso_Peatones|Q_intNP[1]~8\) # (GND)))
-- \Cuenta_NoPaso_Peatones|Q_intNP[2]~10\ = CARRY((!\Cuenta_NoPaso_Peatones|Q_intNP[1]~8\) # (!\Cuenta_NoPaso_Peatones|Q_intNP\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_NoPaso_Peatones|Q_intNP\(2),
	datad => VCC,
	cin => \Cuenta_NoPaso_Peatones|Q_intNP[1]~8\,
	combout => \Cuenta_NoPaso_Peatones|Q_intNP[2]~9_combout\,
	cout => \Cuenta_NoPaso_Peatones|Q_intNP[2]~10\);

-- Location: FF_X21_Y18_N21
\Cuenta_NoPaso_Peatones|Q_intNP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Cuenta_NoPaso_Peatones|Q_intNP[2]~9_combout\,
	asdata => \~GND~combout\,
	clrn => \Selector|ALT_INV_Mostrar_Displays~0_combout\,
	sload => \Cuenta_NoPaso_Peatones|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cuenta_NoPaso_Peatones|Q_intNP\(2));

-- Location: LCCOMB_X21_Y18_N22
\Cuenta_NoPaso_Peatones|Q_intNP[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cuenta_NoPaso_Peatones|Q_intNP[3]~11_combout\ = (\Cuenta_NoPaso_Peatones|Q_intNP\(3) & (\Cuenta_NoPaso_Peatones|Q_intNP[2]~10\ & VCC)) # (!\Cuenta_NoPaso_Peatones|Q_intNP\(3) & (!\Cuenta_NoPaso_Peatones|Q_intNP[2]~10\))
-- \Cuenta_NoPaso_Peatones|Q_intNP[3]~12\ = CARRY((!\Cuenta_NoPaso_Peatones|Q_intNP\(3) & !\Cuenta_NoPaso_Peatones|Q_intNP[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_NoPaso_Peatones|Q_intNP\(3),
	datad => VCC,
	cin => \Cuenta_NoPaso_Peatones|Q_intNP[2]~10\,
	combout => \Cuenta_NoPaso_Peatones|Q_intNP[3]~11_combout\,
	cout => \Cuenta_NoPaso_Peatones|Q_intNP[3]~12\);

-- Location: FF_X21_Y18_N23
\Cuenta_NoPaso_Peatones|Q_intNP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Cuenta_NoPaso_Peatones|Q_intNP[3]~11_combout\,
	asdata => \~GND~combout\,
	clrn => \Selector|ALT_INV_Mostrar_Displays~0_combout\,
	sload => \Cuenta_NoPaso_Peatones|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cuenta_NoPaso_Peatones|Q_intNP\(3));

-- Location: LCCOMB_X21_Y18_N24
\Cuenta_NoPaso_Peatones|Q_intNP[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cuenta_NoPaso_Peatones|Q_intNP[4]~13_combout\ = \Cuenta_NoPaso_Peatones|Q_intNP[3]~12\ $ (\Cuenta_NoPaso_Peatones|Q_intNP\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Cuenta_NoPaso_Peatones|Q_intNP\(4),
	cin => \Cuenta_NoPaso_Peatones|Q_intNP[3]~12\,
	combout => \Cuenta_NoPaso_Peatones|Q_intNP[4]~13_combout\);

-- Location: FF_X21_Y18_N25
\Cuenta_NoPaso_Peatones|Q_intNP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Cuenta_NoPaso_Peatones|Q_intNP[4]~13_combout\,
	asdata => \~GND~combout\,
	clrn => \Selector|ALT_INV_Mostrar_Displays~0_combout\,
	sload => \Cuenta_NoPaso_Peatones|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cuenta_NoPaso_Peatones|Q_intNP\(4));

-- Location: LCCOMB_X22_Y21_N6
\Selector|Decenas_NP|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Decenas_NP|Mux1~0_combout\ = (\Cuenta_NoPaso_Peatones|Q_intNP\(3) & (((\Cuenta_NoPaso_Peatones|Q_intNP\(2) & \Cuenta_NoPaso_Peatones|Q_intNP\(1))) # (!\Cuenta_NoPaso_Peatones|Q_intNP\(4)))) # (!\Cuenta_NoPaso_Peatones|Q_intNP\(3) & 
-- ((\Cuenta_NoPaso_Peatones|Q_intNP\(4)) # ((!\Cuenta_NoPaso_Peatones|Q_intNP\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_NoPaso_Peatones|Q_intNP\(3),
	datab => \Cuenta_NoPaso_Peatones|Q_intNP\(4),
	datac => \Cuenta_NoPaso_Peatones|Q_intNP\(2),
	datad => \Cuenta_NoPaso_Peatones|Q_intNP\(1),
	combout => \Selector|Decenas_NP|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y18_N16
\Cuenta_Paso_Peatones|Q_intP[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cuenta_Paso_Peatones|Q_intP[0]~5_combout\ = \Cuenta_Paso_Peatones|Q_intP\(0) $ (VCC)
-- \Cuenta_Paso_Peatones|Q_intP[0]~6\ = CARRY(\Cuenta_Paso_Peatones|Q_intP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cuenta_Paso_Peatones|Q_intP\(0),
	datad => VCC,
	combout => \Cuenta_Paso_Peatones|Q_intP[0]~5_combout\,
	cout => \Cuenta_Paso_Peatones|Q_intP[0]~6\);

-- Location: LCCOMB_X22_Y18_N24
\Selector|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Equal2~0_combout\ = (\MaquinaEstados|edo_pres.S1~q\) # ((\MaquinaEstados|edo_pres.S2~q\) # ((\MaquinaEstados|edo_pres.S3~q\) # (\MaquinaEstados|edo_pres.S4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MaquinaEstados|edo_pres.S1~q\,
	datab => \MaquinaEstados|edo_pres.S2~q\,
	datac => \MaquinaEstados|edo_pres.S3~q\,
	datad => \MaquinaEstados|edo_pres.S4~q\,
	combout => \Selector|Equal2~0_combout\);

-- Location: LCCOMB_X19_Y18_N28
\Cuenta_Paso_Peatones|numeroP~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cuenta_Paso_Peatones|numeroP~2_combout\ = (!\Cuenta_Paso_Peatones|numeroP\(0) & (((\Cuenta_Paso_Peatones|numeroP\(2)) # (!\Cuenta_Paso_Peatones|numeroP\(3))) # (!\Cuenta_Paso_Peatones|numeroP\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_Paso_Peatones|numeroP\(1),
	datab => \Cuenta_Paso_Peatones|numeroP\(2),
	datac => \Cuenta_Paso_Peatones|numeroP\(0),
	datad => \Cuenta_Paso_Peatones|numeroP\(3),
	combout => \Cuenta_Paso_Peatones|numeroP~2_combout\);

-- Location: FF_X19_Y18_N29
\Cuenta_Paso_Peatones|numeroP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Cuenta_Paso_Peatones|numeroP~2_combout\,
	clrn => \Selector|ALT_INV_Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cuenta_Paso_Peatones|numeroP\(0));

-- Location: LCCOMB_X19_Y18_N14
\Cuenta_Paso_Peatones|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cuenta_Paso_Peatones|Add1~0_combout\ = \Cuenta_Paso_Peatones|numeroP\(2) $ (((\Cuenta_Paso_Peatones|numeroP\(1) & \Cuenta_Paso_Peatones|numeroP\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_Paso_Peatones|numeroP\(1),
	datac => \Cuenta_Paso_Peatones|numeroP\(2),
	datad => \Cuenta_Paso_Peatones|numeroP\(0),
	combout => \Cuenta_Paso_Peatones|Add1~0_combout\);

-- Location: FF_X19_Y18_N15
\Cuenta_Paso_Peatones|numeroP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Cuenta_Paso_Peatones|Add1~0_combout\,
	clrn => \Selector|ALT_INV_Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cuenta_Paso_Peatones|numeroP\(2));

-- Location: LCCOMB_X19_Y18_N26
\Cuenta_Paso_Peatones|numeroP~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cuenta_Paso_Peatones|numeroP~1_combout\ = (\Cuenta_Paso_Peatones|numeroP\(0) & (((!\Cuenta_Paso_Peatones|numeroP\(1))))) # (!\Cuenta_Paso_Peatones|numeroP\(0) & (\Cuenta_Paso_Peatones|numeroP\(1) & ((\Cuenta_Paso_Peatones|numeroP\(2)) # 
-- (!\Cuenta_Paso_Peatones|numeroP\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_Paso_Peatones|numeroP\(2),
	datab => \Cuenta_Paso_Peatones|numeroP\(0),
	datac => \Cuenta_Paso_Peatones|numeroP\(1),
	datad => \Cuenta_Paso_Peatones|numeroP\(3),
	combout => \Cuenta_Paso_Peatones|numeroP~1_combout\);

-- Location: FF_X19_Y18_N27
\Cuenta_Paso_Peatones|numeroP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Cuenta_Paso_Peatones|numeroP~1_combout\,
	clrn => \Selector|ALT_INV_Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cuenta_Paso_Peatones|numeroP\(1));

-- Location: LCCOMB_X19_Y18_N12
\Cuenta_Paso_Peatones|numeroP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cuenta_Paso_Peatones|numeroP~0_combout\ = (\Cuenta_Paso_Peatones|numeroP\(1) & ((\Cuenta_Paso_Peatones|numeroP\(3) & ((\Cuenta_Paso_Peatones|numeroP\(2)))) # (!\Cuenta_Paso_Peatones|numeroP\(3) & (\Cuenta_Paso_Peatones|numeroP\(0) & 
-- !\Cuenta_Paso_Peatones|numeroP\(2))))) # (!\Cuenta_Paso_Peatones|numeroP\(1) & (((\Cuenta_Paso_Peatones|numeroP\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_Paso_Peatones|numeroP\(1),
	datab => \Cuenta_Paso_Peatones|numeroP\(0),
	datac => \Cuenta_Paso_Peatones|numeroP\(3),
	datad => \Cuenta_Paso_Peatones|numeroP\(2),
	combout => \Cuenta_Paso_Peatones|numeroP~0_combout\);

-- Location: FF_X19_Y18_N13
\Cuenta_Paso_Peatones|numeroP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Cuenta_Paso_Peatones|numeroP~0_combout\,
	clrn => \Selector|ALT_INV_Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cuenta_Paso_Peatones|numeroP\(3));

-- Location: LCCOMB_X19_Y18_N8
\Cuenta_Paso_Peatones|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cuenta_Paso_Peatones|Equal1~0_combout\ = (\Cuenta_Paso_Peatones|numeroP\(3) & (!\Cuenta_Paso_Peatones|numeroP\(2) & (\Cuenta_Paso_Peatones|numeroP\(1) & !\Cuenta_Paso_Peatones|numeroP\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_Paso_Peatones|numeroP\(3),
	datab => \Cuenta_Paso_Peatones|numeroP\(2),
	datac => \Cuenta_Paso_Peatones|numeroP\(1),
	datad => \Cuenta_Paso_Peatones|numeroP\(0),
	combout => \Cuenta_Paso_Peatones|Equal1~0_combout\);

-- Location: FF_X19_Y18_N17
\Cuenta_Paso_Peatones|Q_intP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Cuenta_Paso_Peatones|Q_intP[0]~5_combout\,
	asdata => \~GND~combout\,
	clrn => \Selector|ALT_INV_Equal2~0_combout\,
	sload => \Cuenta_Paso_Peatones|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cuenta_Paso_Peatones|Q_intP\(0));

-- Location: LCCOMB_X19_Y18_N18
\Cuenta_Paso_Peatones|Q_intP[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cuenta_Paso_Peatones|Q_intP[1]~7_combout\ = (\Cuenta_Paso_Peatones|Q_intP\(1) & (\Cuenta_Paso_Peatones|Q_intP[0]~6\ $ (GND))) # (!\Cuenta_Paso_Peatones|Q_intP\(1) & (!\Cuenta_Paso_Peatones|Q_intP[0]~6\ & VCC))
-- \Cuenta_Paso_Peatones|Q_intP[1]~8\ = CARRY((\Cuenta_Paso_Peatones|Q_intP\(1) & !\Cuenta_Paso_Peatones|Q_intP[0]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cuenta_Paso_Peatones|Q_intP\(1),
	datad => VCC,
	cin => \Cuenta_Paso_Peatones|Q_intP[0]~6\,
	combout => \Cuenta_Paso_Peatones|Q_intP[1]~7_combout\,
	cout => \Cuenta_Paso_Peatones|Q_intP[1]~8\);

-- Location: FF_X19_Y18_N19
\Cuenta_Paso_Peatones|Q_intP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Cuenta_Paso_Peatones|Q_intP[1]~7_combout\,
	asdata => \~GND~combout\,
	clrn => \Selector|ALT_INV_Equal2~0_combout\,
	sload => \Cuenta_Paso_Peatones|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cuenta_Paso_Peatones|Q_intP\(1));

-- Location: LCCOMB_X19_Y18_N20
\Cuenta_Paso_Peatones|Q_intP[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cuenta_Paso_Peatones|Q_intP[2]~9_combout\ = (\Cuenta_Paso_Peatones|Q_intP\(2) & ((GND) # (!\Cuenta_Paso_Peatones|Q_intP[1]~8\))) # (!\Cuenta_Paso_Peatones|Q_intP\(2) & (\Cuenta_Paso_Peatones|Q_intP[1]~8\ $ (GND)))
-- \Cuenta_Paso_Peatones|Q_intP[2]~10\ = CARRY((\Cuenta_Paso_Peatones|Q_intP\(2)) # (!\Cuenta_Paso_Peatones|Q_intP[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cuenta_Paso_Peatones|Q_intP\(2),
	datad => VCC,
	cin => \Cuenta_Paso_Peatones|Q_intP[1]~8\,
	combout => \Cuenta_Paso_Peatones|Q_intP[2]~9_combout\,
	cout => \Cuenta_Paso_Peatones|Q_intP[2]~10\);

-- Location: FF_X19_Y18_N21
\Cuenta_Paso_Peatones|Q_intP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Cuenta_Paso_Peatones|Q_intP[2]~9_combout\,
	asdata => \~GND~combout\,
	clrn => \Selector|ALT_INV_Equal2~0_combout\,
	sload => \Cuenta_Paso_Peatones|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cuenta_Paso_Peatones|Q_intP\(2));

-- Location: LCCOMB_X19_Y18_N22
\Cuenta_Paso_Peatones|Q_intP[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cuenta_Paso_Peatones|Q_intP[3]~11_combout\ = (\Cuenta_Paso_Peatones|Q_intP\(3) & (\Cuenta_Paso_Peatones|Q_intP[2]~10\ $ (GND))) # (!\Cuenta_Paso_Peatones|Q_intP\(3) & (!\Cuenta_Paso_Peatones|Q_intP[2]~10\ & VCC))
-- \Cuenta_Paso_Peatones|Q_intP[3]~12\ = CARRY((\Cuenta_Paso_Peatones|Q_intP\(3) & !\Cuenta_Paso_Peatones|Q_intP[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_Paso_Peatones|Q_intP\(3),
	datad => VCC,
	cin => \Cuenta_Paso_Peatones|Q_intP[2]~10\,
	combout => \Cuenta_Paso_Peatones|Q_intP[3]~11_combout\,
	cout => \Cuenta_Paso_Peatones|Q_intP[3]~12\);

-- Location: FF_X19_Y18_N23
\Cuenta_Paso_Peatones|Q_intP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Cuenta_Paso_Peatones|Q_intP[3]~11_combout\,
	asdata => \~GND~combout\,
	clrn => \Selector|ALT_INV_Equal2~0_combout\,
	sload => \Cuenta_Paso_Peatones|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cuenta_Paso_Peatones|Q_intP\(3));

-- Location: LCCOMB_X19_Y18_N24
\Cuenta_Paso_Peatones|Q_intP[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cuenta_Paso_Peatones|Q_intP[4]~13_combout\ = \Cuenta_Paso_Peatones|Q_intP[3]~12\ $ (\Cuenta_Paso_Peatones|Q_intP\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Cuenta_Paso_Peatones|Q_intP\(4),
	cin => \Cuenta_Paso_Peatones|Q_intP[3]~12\,
	combout => \Cuenta_Paso_Peatones|Q_intP[4]~13_combout\);

-- Location: FF_X19_Y18_N25
\Cuenta_Paso_Peatones|Q_intP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1Seg|salida~clkctrl_outclk\,
	d => \Cuenta_Paso_Peatones|Q_intP[4]~13_combout\,
	asdata => \~GND~combout\,
	clrn => \Selector|ALT_INV_Equal2~0_combout\,
	sload => \Cuenta_Paso_Peatones|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cuenta_Paso_Peatones|Q_intP\(4));

-- Location: LCCOMB_X22_Y22_N18
\BCD_Paso_Peatones|num_BCD[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_Paso_Peatones|num_BCD[3]~2_combout\ = (\Cuenta_Paso_Peatones|Q_intP\(3) & (!\Cuenta_Paso_Peatones|Q_intP\(2) & (!\Cuenta_Paso_Peatones|Q_intP\(1) & \Cuenta_Paso_Peatones|Q_intP\(4)))) # (!\Cuenta_Paso_Peatones|Q_intP\(3) & 
-- (\Cuenta_Paso_Peatones|Q_intP\(1) & (\Cuenta_Paso_Peatones|Q_intP\(2) $ (!\Cuenta_Paso_Peatones|Q_intP\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_Paso_Peatones|Q_intP\(2),
	datab => \Cuenta_Paso_Peatones|Q_intP\(3),
	datac => \Cuenta_Paso_Peatones|Q_intP\(1),
	datad => \Cuenta_Paso_Peatones|Q_intP\(4),
	combout => \BCD_Paso_Peatones|num_BCD[3]~2_combout\);

-- Location: LCCOMB_X22_Y22_N26
\BCD_Paso_Peatones|num_BCD[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_Paso_Peatones|num_BCD[1]~0_combout\ = (\Cuenta_Paso_Peatones|Q_intP\(3) & (\Cuenta_Paso_Peatones|Q_intP\(1) $ (((!\Cuenta_Paso_Peatones|Q_intP\(2) & \Cuenta_Paso_Peatones|Q_intP\(4)))))) # (!\Cuenta_Paso_Peatones|Q_intP\(3) & 
-- ((\Cuenta_Paso_Peatones|Q_intP\(2) & ((\Cuenta_Paso_Peatones|Q_intP\(4)) # (!\Cuenta_Paso_Peatones|Q_intP\(1)))) # (!\Cuenta_Paso_Peatones|Q_intP\(2) & ((\Cuenta_Paso_Peatones|Q_intP\(1)) # (!\Cuenta_Paso_Peatones|Q_intP\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_Paso_Peatones|Q_intP\(2),
	datab => \Cuenta_Paso_Peatones|Q_intP\(3),
	datac => \Cuenta_Paso_Peatones|Q_intP\(1),
	datad => \Cuenta_Paso_Peatones|Q_intP\(4),
	combout => \BCD_Paso_Peatones|num_BCD[1]~0_combout\);

-- Location: LCCOMB_X22_Y22_N8
\BCD_Paso_Peatones|num_BCD[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_Paso_Peatones|num_BCD[2]~1_combout\ = (\Cuenta_Paso_Peatones|Q_intP\(2) & (!\Cuenta_Paso_Peatones|Q_intP\(4) & ((\Cuenta_Paso_Peatones|Q_intP\(3)) # (!\Cuenta_Paso_Peatones|Q_intP\(1))))) # (!\Cuenta_Paso_Peatones|Q_intP\(2) & 
-- (\Cuenta_Paso_Peatones|Q_intP\(4) & ((\Cuenta_Paso_Peatones|Q_intP\(1)) # (!\Cuenta_Paso_Peatones|Q_intP\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_Paso_Peatones|Q_intP\(2),
	datab => \Cuenta_Paso_Peatones|Q_intP\(3),
	datac => \Cuenta_Paso_Peatones|Q_intP\(1),
	datad => \Cuenta_Paso_Peatones|Q_intP\(4),
	combout => \BCD_Paso_Peatones|num_BCD[2]~1_combout\);

-- Location: LCCOMB_X21_Y21_N6
\Selector|Unidades_P|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Unidades_P|Mux6~0_combout\ = (\BCD_Paso_Peatones|num_BCD[1]~0_combout\ & (\BCD_Paso_Peatones|num_BCD[2]~1_combout\ $ (((\Cuenta_Paso_Peatones|Q_intP\(0) & !\BCD_Paso_Peatones|num_BCD[3]~2_combout\))))) # 
-- (!\BCD_Paso_Peatones|num_BCD[1]~0_combout\ & (((\BCD_Paso_Peatones|num_BCD[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_Paso_Peatones|Q_intP\(0),
	datab => \BCD_Paso_Peatones|num_BCD[3]~2_combout\,
	datac => \BCD_Paso_Peatones|num_BCD[1]~0_combout\,
	datad => \BCD_Paso_Peatones|num_BCD[2]~1_combout\,
	combout => \Selector|Unidades_P|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y21_N24
\BCD_NoPaso_Peatones|num_BCD[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_NoPaso_Peatones|num_BCD[1]~0_combout\ = (\Cuenta_NoPaso_Peatones|Q_intNP\(3) & ((\Cuenta_NoPaso_Peatones|Q_intNP\(4) & ((\Cuenta_NoPaso_Peatones|Q_intNP\(2)) # (!\Cuenta_NoPaso_Peatones|Q_intNP\(1)))) # (!\Cuenta_NoPaso_Peatones|Q_intNP\(4) & 
-- ((\Cuenta_NoPaso_Peatones|Q_intNP\(1)) # (!\Cuenta_NoPaso_Peatones|Q_intNP\(2)))))) # (!\Cuenta_NoPaso_Peatones|Q_intNP\(3) & (\Cuenta_NoPaso_Peatones|Q_intNP\(1) $ (((!\Cuenta_NoPaso_Peatones|Q_intNP\(4) & \Cuenta_NoPaso_Peatones|Q_intNP\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_NoPaso_Peatones|Q_intNP\(3),
	datab => \Cuenta_NoPaso_Peatones|Q_intNP\(4),
	datac => \Cuenta_NoPaso_Peatones|Q_intNP\(2),
	datad => \Cuenta_NoPaso_Peatones|Q_intNP\(1),
	combout => \BCD_NoPaso_Peatones|num_BCD[1]~0_combout\);

-- Location: LCCOMB_X22_Y21_N18
\BCD_NoPaso_Peatones|num_BCD[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_NoPaso_Peatones|num_BCD[2]~1_combout\ = (\Cuenta_NoPaso_Peatones|Q_intNP\(4) & ((\Cuenta_NoPaso_Peatones|Q_intNP\(2)) # ((\Cuenta_NoPaso_Peatones|Q_intNP\(3) & \Cuenta_NoPaso_Peatones|Q_intNP\(1))))) # (!\Cuenta_NoPaso_Peatones|Q_intNP\(4) & 
-- (((!\Cuenta_NoPaso_Peatones|Q_intNP\(3) & !\Cuenta_NoPaso_Peatones|Q_intNP\(1))) # (!\Cuenta_NoPaso_Peatones|Q_intNP\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_NoPaso_Peatones|Q_intNP\(3),
	datab => \Cuenta_NoPaso_Peatones|Q_intNP\(4),
	datac => \Cuenta_NoPaso_Peatones|Q_intNP\(2),
	datad => \Cuenta_NoPaso_Peatones|Q_intNP\(1),
	combout => \BCD_NoPaso_Peatones|num_BCD[2]~1_combout\);

-- Location: LCCOMB_X22_Y21_N8
\BCD_NoPaso_Peatones|num_BCD[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_NoPaso_Peatones|num_BCD[3]~2_combout\ = (\Cuenta_NoPaso_Peatones|Q_intNP\(3) & (\Cuenta_NoPaso_Peatones|Q_intNP\(1) & (\Cuenta_NoPaso_Peatones|Q_intNP\(4) $ (!\Cuenta_NoPaso_Peatones|Q_intNP\(2))))) # (!\Cuenta_NoPaso_Peatones|Q_intNP\(3) & 
-- (!\Cuenta_NoPaso_Peatones|Q_intNP\(4) & (\Cuenta_NoPaso_Peatones|Q_intNP\(2) & !\Cuenta_NoPaso_Peatones|Q_intNP\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_NoPaso_Peatones|Q_intNP\(3),
	datab => \Cuenta_NoPaso_Peatones|Q_intNP\(4),
	datac => \Cuenta_NoPaso_Peatones|Q_intNP\(2),
	datad => \Cuenta_NoPaso_Peatones|Q_intNP\(1),
	combout => \BCD_NoPaso_Peatones|num_BCD[3]~2_combout\);

-- Location: LCCOMB_X21_Y21_N28
\Selector|Unidades_NP|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Unidades_NP|Mux6~0_combout\ = (\BCD_NoPaso_Peatones|num_BCD[1]~0_combout\ & (\BCD_NoPaso_Peatones|num_BCD[2]~1_combout\ $ (((\BCD_NoPaso_Peatones|num_BCD[3]~2_combout\) # (!\Cuenta_NoPaso_Peatones|Q_intNP\(0)))))) # 
-- (!\BCD_NoPaso_Peatones|num_BCD[1]~0_combout\ & (((\BCD_NoPaso_Peatones|num_BCD[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_NoPaso_Peatones|num_BCD[1]~0_combout\,
	datab => \BCD_NoPaso_Peatones|num_BCD[2]~1_combout\,
	datac => \BCD_NoPaso_Peatones|num_BCD[3]~2_combout\,
	datad => \Cuenta_NoPaso_Peatones|Q_intNP\(0),
	combout => \Selector|Unidades_NP|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y21_N8
\Selector|Segmentos[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Segmentos[0]~0_combout\ = (\Selector|Mostrar_Displays~0_combout\ & (\Selector|Unidades_P|Mux6~0_combout\ & ((!\Selector|Seleccion~q\)))) # (!\Selector|Mostrar_Displays~0_combout\ & (((\Selector|Unidades_NP|Mux6~0_combout\) # 
-- (\Selector|Seleccion~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector|Unidades_P|Mux6~0_combout\,
	datab => \Selector|Unidades_NP|Mux6~0_combout\,
	datac => \Selector|Mostrar_Displays~0_combout\,
	datad => \Selector|Seleccion~q\,
	combout => \Selector|Segmentos[0]~0_combout\);

-- Location: LCCOMB_X22_Y22_N24
\Selector|Decenas_P|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Decenas_P|Mux1~0_combout\ = (\Cuenta_Paso_Peatones|Q_intP\(3) & ((\Cuenta_Paso_Peatones|Q_intP\(2)) # ((!\Cuenta_Paso_Peatones|Q_intP\(4))))) # (!\Cuenta_Paso_Peatones|Q_intP\(3) & ((\Cuenta_Paso_Peatones|Q_intP\(4)) # 
-- ((!\Cuenta_Paso_Peatones|Q_intP\(2) & \Cuenta_Paso_Peatones|Q_intP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_Paso_Peatones|Q_intP\(2),
	datab => \Cuenta_Paso_Peatones|Q_intP\(3),
	datac => \Cuenta_Paso_Peatones|Q_intP\(1),
	datad => \Cuenta_Paso_Peatones|Q_intP\(4),
	combout => \Selector|Decenas_P|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y21_N18
\Selector|Segmentos[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Segmentos[0]~1_combout\ = (\Selector|Seleccion~q\ & ((\Selector|Segmentos[0]~0_combout\ & (!\Selector|Decenas_NP|Mux1~0_combout\)) # (!\Selector|Segmentos[0]~0_combout\ & ((!\Selector|Decenas_P|Mux1~0_combout\))))) # (!\Selector|Seleccion~q\ & 
-- (((\Selector|Segmentos[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector|Decenas_NP|Mux1~0_combout\,
	datab => \Selector|Seleccion~q\,
	datac => \Selector|Segmentos[0]~0_combout\,
	datad => \Selector|Decenas_P|Mux1~0_combout\,
	combout => \Selector|Segmentos[0]~1_combout\);

-- Location: LCCOMB_X21_Y21_N30
\Selector|Unidades_P|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Unidades_P|Mux5~0_combout\ = (\BCD_Paso_Peatones|num_BCD[3]~2_combout\ & (((\BCD_Paso_Peatones|num_BCD[2]~1_combout\) # (!\BCD_Paso_Peatones|num_BCD[1]~0_combout\)))) # (!\BCD_Paso_Peatones|num_BCD[3]~2_combout\ & 
-- (\BCD_Paso_Peatones|num_BCD[2]~1_combout\ & (\Cuenta_Paso_Peatones|Q_intP\(0) $ (!\BCD_Paso_Peatones|num_BCD[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_Paso_Peatones|Q_intP\(0),
	datab => \BCD_Paso_Peatones|num_BCD[3]~2_combout\,
	datac => \BCD_Paso_Peatones|num_BCD[1]~0_combout\,
	datad => \BCD_Paso_Peatones|num_BCD[2]~1_combout\,
	combout => \Selector|Unidades_P|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y21_N20
\Selector|Unidades_NP|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Unidades_NP|Mux5~0_combout\ = (\BCD_NoPaso_Peatones|num_BCD[2]~1_combout\ & (!\BCD_NoPaso_Peatones|num_BCD[1]~0_combout\ & (\BCD_NoPaso_Peatones|num_BCD[3]~2_combout\))) # (!\BCD_NoPaso_Peatones|num_BCD[2]~1_combout\ & 
-- ((\BCD_NoPaso_Peatones|num_BCD[3]~2_combout\) # (\BCD_NoPaso_Peatones|num_BCD[1]~0_combout\ $ (!\Cuenta_NoPaso_Peatones|Q_intNP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_NoPaso_Peatones|num_BCD[1]~0_combout\,
	datab => \BCD_NoPaso_Peatones|num_BCD[2]~1_combout\,
	datac => \BCD_NoPaso_Peatones|num_BCD[3]~2_combout\,
	datad => \Cuenta_NoPaso_Peatones|Q_intNP\(0),
	combout => \Selector|Unidades_NP|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y21_N0
\Selector|Segmentos[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Segmentos[1]~2_combout\ = (!\Selector|Seleccion~q\ & ((\Selector|Mostrar_Displays~0_combout\ & (\Selector|Unidades_P|Mux5~0_combout\)) # (!\Selector|Mostrar_Displays~0_combout\ & ((\Selector|Unidades_NP|Mux5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector|Unidades_P|Mux5~0_combout\,
	datab => \Selector|Unidades_NP|Mux5~0_combout\,
	datac => \Selector|Mostrar_Displays~0_combout\,
	datad => \Selector|Seleccion~q\,
	combout => \Selector|Segmentos[1]~2_combout\);

-- Location: LCCOMB_X22_Y22_N4
\Selector|Decenas_P|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Decenas_P|Mux1~1_combout\ = (\Cuenta_Paso_Peatones|Q_intP\(4) & ((\Cuenta_Paso_Peatones|Q_intP\(2) & ((\Cuenta_Paso_Peatones|Q_intP\(3)) # (\Cuenta_Paso_Peatones|Q_intP\(1)))) # (!\Cuenta_Paso_Peatones|Q_intP\(2) & 
-- (!\Cuenta_Paso_Peatones|Q_intP\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_Paso_Peatones|Q_intP\(2),
	datab => \Cuenta_Paso_Peatones|Q_intP\(3),
	datac => \Cuenta_Paso_Peatones|Q_intP\(1),
	datad => \Cuenta_Paso_Peatones|Q_intP\(4),
	combout => \Selector|Decenas_P|Mux1~1_combout\);

-- Location: LCCOMB_X22_Y21_N16
\Selector|Decenas_NP|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Decenas_NP|Mux1~1_combout\ = (!\Cuenta_NoPaso_Peatones|Q_intNP\(4) & ((\Cuenta_NoPaso_Peatones|Q_intNP\(3) & ((\Cuenta_NoPaso_Peatones|Q_intNP\(2)) # (\Cuenta_NoPaso_Peatones|Q_intNP\(1)))) # (!\Cuenta_NoPaso_Peatones|Q_intNP\(3) & 
-- (!\Cuenta_NoPaso_Peatones|Q_intNP\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_NoPaso_Peatones|Q_intNP\(3),
	datab => \Cuenta_NoPaso_Peatones|Q_intNP\(4),
	datac => \Cuenta_NoPaso_Peatones|Q_intNP\(2),
	datad => \Cuenta_NoPaso_Peatones|Q_intNP\(1),
	combout => \Selector|Decenas_NP|Mux1~1_combout\);

-- Location: LCCOMB_X22_Y21_N4
\Selector|Unidades_NP|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Unidades_NP|Mux4~2_combout\ = (\Cuenta_NoPaso_Peatones|Q_intNP\(3) & (\Cuenta_NoPaso_Peatones|Q_intNP\(4) & (!\Cuenta_NoPaso_Peatones|Q_intNP\(2) & \Cuenta_NoPaso_Peatones|Q_intNP\(1)))) # (!\Cuenta_NoPaso_Peatones|Q_intNP\(3) & 
-- (!\Cuenta_NoPaso_Peatones|Q_intNP\(1) & (\Cuenta_NoPaso_Peatones|Q_intNP\(4) $ (!\Cuenta_NoPaso_Peatones|Q_intNP\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_NoPaso_Peatones|Q_intNP\(3),
	datab => \Cuenta_NoPaso_Peatones|Q_intNP\(4),
	datac => \Cuenta_NoPaso_Peatones|Q_intNP\(2),
	datad => \Cuenta_NoPaso_Peatones|Q_intNP\(1),
	combout => \Selector|Unidades_NP|Mux4~2_combout\);

-- Location: LCCOMB_X22_Y21_N14
\Selector|Segmentos[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Segmentos[2]~13_combout\ = (\Selector|Seleccion~q\ & (((!\Selector|Mostrar_Displays~0_combout\)))) # (!\Selector|Seleccion~q\ & ((\Selector|Mostrar_Displays~0_combout\) # ((\Selector|Unidades_NP|Mux4~2_combout\ & 
-- !\Cuenta_NoPaso_Peatones|Q_intNP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector|Seleccion~q\,
	datab => \Selector|Unidades_NP|Mux4~2_combout\,
	datac => \Cuenta_NoPaso_Peatones|Q_intNP\(0),
	datad => \Selector|Mostrar_Displays~0_combout\,
	combout => \Selector|Segmentos[2]~13_combout\);

-- Location: LCCOMB_X22_Y22_N12
\Selector|Unidades_P|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Unidades_P|Mux4~2_combout\ = (\Cuenta_Paso_Peatones|Q_intP\(3) & (!\Cuenta_Paso_Peatones|Q_intP\(1) & (\Cuenta_Paso_Peatones|Q_intP\(2) $ (!\Cuenta_Paso_Peatones|Q_intP\(4))))) # (!\Cuenta_Paso_Peatones|Q_intP\(3) & 
-- (\Cuenta_Paso_Peatones|Q_intP\(2) & (\Cuenta_Paso_Peatones|Q_intP\(1) & !\Cuenta_Paso_Peatones|Q_intP\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_Paso_Peatones|Q_intP\(2),
	datab => \Cuenta_Paso_Peatones|Q_intP\(3),
	datac => \Cuenta_Paso_Peatones|Q_intP\(1),
	datad => \Cuenta_Paso_Peatones|Q_intP\(4),
	combout => \Selector|Unidades_P|Mux4~2_combout\);

-- Location: LCCOMB_X23_Y21_N12
\Selector|Segmentos[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Segmentos[2]~14_combout\ = (\Selector|Segmentos[2]~13_combout\ & (((!\Cuenta_Paso_Peatones|Q_intP\(0) & \Selector|Unidades_P|Mux4~2_combout\)) # (!\Selector|Mostrar_Displays~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector|Segmentos[2]~13_combout\,
	datab => \Selector|Mostrar_Displays~0_combout\,
	datac => \Cuenta_Paso_Peatones|Q_intP\(0),
	datad => \Selector|Unidades_P|Mux4~2_combout\,
	combout => \Selector|Segmentos[2]~14_combout\);

-- Location: LCCOMB_X22_Y21_N30
\Selector|Segmentos[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Segmentos[2]~3_combout\ = (\Selector|Segmentos[2]~14_combout\ & (((\Selector|Decenas_NP|Mux1~1_combout\) # (!\Selector|Seleccion~q\)))) # (!\Selector|Segmentos[2]~14_combout\ & (\Selector|Decenas_P|Mux1~1_combout\ & ((\Selector|Seleccion~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector|Decenas_P|Mux1~1_combout\,
	datab => \Selector|Decenas_NP|Mux1~1_combout\,
	datac => \Selector|Segmentos[2]~14_combout\,
	datad => \Selector|Seleccion~q\,
	combout => \Selector|Segmentos[2]~3_combout\);

-- Location: LCCOMB_X21_Y21_N26
\Selector|Unidades_NP|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Unidades_NP|Mux3~0_combout\ = (\BCD_NoPaso_Peatones|num_BCD[1]~0_combout\ & (\BCD_NoPaso_Peatones|num_BCD[2]~1_combout\ $ (((\BCD_NoPaso_Peatones|num_BCD[3]~2_combout\) # (!\Cuenta_NoPaso_Peatones|Q_intNP\(0)))))) # 
-- (!\BCD_NoPaso_Peatones|num_BCD[1]~0_combout\ & ((\BCD_NoPaso_Peatones|num_BCD[3]~2_combout\) # ((!\BCD_NoPaso_Peatones|num_BCD[2]~1_combout\ & \Cuenta_NoPaso_Peatones|Q_intNP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_NoPaso_Peatones|num_BCD[1]~0_combout\,
	datab => \BCD_NoPaso_Peatones|num_BCD[2]~1_combout\,
	datac => \BCD_NoPaso_Peatones|num_BCD[3]~2_combout\,
	datad => \Cuenta_NoPaso_Peatones|Q_intNP\(0),
	combout => \Selector|Unidades_NP|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y21_N12
\Selector|Unidades_P|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Unidades_P|Mux3~0_combout\ = (\BCD_Paso_Peatones|num_BCD[1]~0_combout\ & (\BCD_Paso_Peatones|num_BCD[2]~1_combout\ $ (((\Cuenta_Paso_Peatones|Q_intP\(0) & !\BCD_Paso_Peatones|num_BCD[3]~2_combout\))))) # 
-- (!\BCD_Paso_Peatones|num_BCD[1]~0_combout\ & ((\BCD_Paso_Peatones|num_BCD[3]~2_combout\) # ((\Cuenta_Paso_Peatones|Q_intP\(0) & \BCD_Paso_Peatones|num_BCD[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_Paso_Peatones|Q_intP\(0),
	datab => \BCD_Paso_Peatones|num_BCD[3]~2_combout\,
	datac => \BCD_Paso_Peatones|num_BCD[1]~0_combout\,
	datad => \BCD_Paso_Peatones|num_BCD[2]~1_combout\,
	combout => \Selector|Unidades_P|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y21_N22
\Selector|Segmentos[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Segmentos[3]~4_combout\ = (\Selector|Mostrar_Displays~0_combout\ & (!\Selector|Seleccion~q\ & ((\Selector|Unidades_P|Mux3~0_combout\)))) # (!\Selector|Mostrar_Displays~0_combout\ & ((\Selector|Seleccion~q\) # 
-- ((\Selector|Unidades_NP|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector|Mostrar_Displays~0_combout\,
	datab => \Selector|Seleccion~q\,
	datac => \Selector|Unidades_NP|Mux3~0_combout\,
	datad => \Selector|Unidades_P|Mux3~0_combout\,
	combout => \Selector|Segmentos[3]~4_combout\);

-- Location: LCCOMB_X21_Y21_N4
\Selector|Segmentos[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Segmentos[3]~5_combout\ = (\Selector|Seleccion~q\ & ((\Selector|Segmentos[3]~4_combout\ & (!\Selector|Decenas_NP|Mux1~0_combout\)) # (!\Selector|Segmentos[3]~4_combout\ & ((!\Selector|Decenas_P|Mux1~0_combout\))))) # (!\Selector|Seleccion~q\ & 
-- (((\Selector|Segmentos[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector|Decenas_NP|Mux1~0_combout\,
	datab => \Selector|Seleccion~q\,
	datac => \Selector|Segmentos[3]~4_combout\,
	datad => \Selector|Decenas_P|Mux1~0_combout\,
	combout => \Selector|Segmentos[3]~5_combout\);

-- Location: LCCOMB_X22_Y22_N22
\BCD_Paso_Peatones|num_BCD[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_Paso_Peatones|num_BCD[4]~3_combout\ = (\Cuenta_Paso_Peatones|Q_intP\(2) & ((\Cuenta_Paso_Peatones|Q_intP\(3)) # ((\Cuenta_Paso_Peatones|Q_intP\(1) & \Cuenta_Paso_Peatones|Q_intP\(4))))) # (!\Cuenta_Paso_Peatones|Q_intP\(2) & 
-- ((\Cuenta_Paso_Peatones|Q_intP\(3) & ((!\Cuenta_Paso_Peatones|Q_intP\(4)))) # (!\Cuenta_Paso_Peatones|Q_intP\(3) & ((\Cuenta_Paso_Peatones|Q_intP\(1)) # (\Cuenta_Paso_Peatones|Q_intP\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_Paso_Peatones|Q_intP\(2),
	datab => \Cuenta_Paso_Peatones|Q_intP\(3),
	datac => \Cuenta_Paso_Peatones|Q_intP\(1),
	datad => \Cuenta_Paso_Peatones|Q_intP\(4),
	combout => \BCD_Paso_Peatones|num_BCD[4]~3_combout\);

-- Location: LCCOMB_X22_Y21_N0
\BCD_NoPaso_Peatones|num_BCD[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_NoPaso_Peatones|num_BCD[4]~3_combout\ = (\Cuenta_NoPaso_Peatones|Q_intNP\(3) & ((\Cuenta_NoPaso_Peatones|Q_intNP\(4) & (\Cuenta_NoPaso_Peatones|Q_intNP\(2) & \Cuenta_NoPaso_Peatones|Q_intNP\(1))) # (!\Cuenta_NoPaso_Peatones|Q_intNP\(4) & 
-- ((\Cuenta_NoPaso_Peatones|Q_intNP\(2)) # (\Cuenta_NoPaso_Peatones|Q_intNP\(1)))))) # (!\Cuenta_NoPaso_Peatones|Q_intNP\(3) & ((\Cuenta_NoPaso_Peatones|Q_intNP\(4)) # ((!\Cuenta_NoPaso_Peatones|Q_intNP\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_NoPaso_Peatones|Q_intNP\(3),
	datab => \Cuenta_NoPaso_Peatones|Q_intNP\(4),
	datac => \Cuenta_NoPaso_Peatones|Q_intNP\(2),
	datad => \Cuenta_NoPaso_Peatones|Q_intNP\(1),
	combout => \BCD_NoPaso_Peatones|num_BCD[4]~3_combout\);

-- Location: LCCOMB_X22_Y22_N10
\Selector|Unidades_P|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Unidades_P|Mux2~2_combout\ = (\Cuenta_Paso_Peatones|Q_intP\(2) & (!\Cuenta_Paso_Peatones|Q_intP\(4) & (\Cuenta_Paso_Peatones|Q_intP\(3) $ (!\Cuenta_Paso_Peatones|Q_intP\(1))))) # (!\Cuenta_Paso_Peatones|Q_intP\(2) & 
-- (!\Cuenta_Paso_Peatones|Q_intP\(3) & (\Cuenta_Paso_Peatones|Q_intP\(1) & \Cuenta_Paso_Peatones|Q_intP\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_Paso_Peatones|Q_intP\(2),
	datab => \Cuenta_Paso_Peatones|Q_intP\(3),
	datac => \Cuenta_Paso_Peatones|Q_intP\(1),
	datad => \Cuenta_Paso_Peatones|Q_intP\(4),
	combout => \Selector|Unidades_P|Mux2~2_combout\);

-- Location: LCCOMB_X22_Y21_N10
\Selector|Unidades_NP|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Unidades_NP|Mux2~2_combout\ = (\Cuenta_NoPaso_Peatones|Q_intNP\(4) & (!\Cuenta_NoPaso_Peatones|Q_intNP\(2) & (\Cuenta_NoPaso_Peatones|Q_intNP\(3) $ (\Cuenta_NoPaso_Peatones|Q_intNP\(1))))) # (!\Cuenta_NoPaso_Peatones|Q_intNP\(4) & 
-- (\Cuenta_NoPaso_Peatones|Q_intNP\(3) & (\Cuenta_NoPaso_Peatones|Q_intNP\(2) & \Cuenta_NoPaso_Peatones|Q_intNP\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_NoPaso_Peatones|Q_intNP\(3),
	datab => \Cuenta_NoPaso_Peatones|Q_intNP\(4),
	datac => \Cuenta_NoPaso_Peatones|Q_intNP\(2),
	datad => \Cuenta_NoPaso_Peatones|Q_intNP\(1),
	combout => \Selector|Unidades_NP|Mux2~2_combout\);

-- Location: LCCOMB_X22_Y21_N28
\Selector|Segmentos[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Segmentos[4]~11_combout\ = (\Selector|Mostrar_Displays~0_combout\ & (((!\Selector|Seleccion~q\)))) # (!\Selector|Mostrar_Displays~0_combout\ & ((\Selector|Unidades_NP|Mux2~2_combout\) # ((\Cuenta_NoPaso_Peatones|Q_intNP\(0)) # 
-- (\Selector|Seleccion~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector|Unidades_NP|Mux2~2_combout\,
	datab => \Selector|Mostrar_Displays~0_combout\,
	datac => \Cuenta_NoPaso_Peatones|Q_intNP\(0),
	datad => \Selector|Seleccion~q\,
	combout => \Selector|Segmentos[4]~11_combout\);

-- Location: LCCOMB_X23_Y21_N10
\Selector|Segmentos[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Segmentos[4]~12_combout\ = (\Selector|Segmentos[4]~11_combout\ & ((\Selector|Unidades_P|Mux2~2_combout\) # ((\Cuenta_Paso_Peatones|Q_intP\(0)) # (!\Selector|Mostrar_Displays~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector|Unidades_P|Mux2~2_combout\,
	datab => \Selector|Mostrar_Displays~0_combout\,
	datac => \Cuenta_Paso_Peatones|Q_intP\(0),
	datad => \Selector|Segmentos[4]~11_combout\,
	combout => \Selector|Segmentos[4]~12_combout\);

-- Location: LCCOMB_X23_Y21_N0
\Selector|Segmentos[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Segmentos[4]~6_combout\ = (\Selector|Seleccion~q\ & ((\Selector|Segmentos[4]~12_combout\ & ((!\BCD_NoPaso_Peatones|num_BCD[4]~3_combout\))) # (!\Selector|Segmentos[4]~12_combout\ & (!\BCD_Paso_Peatones|num_BCD[4]~3_combout\)))) # 
-- (!\Selector|Seleccion~q\ & (((\Selector|Segmentos[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector|Seleccion~q\,
	datab => \BCD_Paso_Peatones|num_BCD[4]~3_combout\,
	datac => \BCD_NoPaso_Peatones|num_BCD[4]~3_combout\,
	datad => \Selector|Segmentos[4]~12_combout\,
	combout => \Selector|Segmentos[4]~6_combout\);

-- Location: LCCOMB_X21_Y21_N14
\Selector|Unidades_P|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Unidades_P|Mux1~0_combout\ = (\Cuenta_Paso_Peatones|Q_intP\(0) & ((\BCD_Paso_Peatones|num_BCD[3]~2_combout\ $ (!\BCD_Paso_Peatones|num_BCD[2]~1_combout\)) # (!\BCD_Paso_Peatones|num_BCD[1]~0_combout\))) # (!\Cuenta_Paso_Peatones|Q_intP\(0) & 
-- ((\BCD_Paso_Peatones|num_BCD[2]~1_combout\ & (\BCD_Paso_Peatones|num_BCD[3]~2_combout\)) # (!\BCD_Paso_Peatones|num_BCD[2]~1_combout\ & ((!\BCD_Paso_Peatones|num_BCD[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_Paso_Peatones|Q_intP\(0),
	datab => \BCD_Paso_Peatones|num_BCD[3]~2_combout\,
	datac => \BCD_Paso_Peatones|num_BCD[1]~0_combout\,
	datad => \BCD_Paso_Peatones|num_BCD[2]~1_combout\,
	combout => \Selector|Unidades_P|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y21_N22
\Selector|Unidades_NP|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Unidades_NP|Mux1~0_combout\ = (\BCD_NoPaso_Peatones|num_BCD[2]~1_combout\ & (((!\BCD_NoPaso_Peatones|num_BCD[3]~2_combout\ & \Cuenta_NoPaso_Peatones|Q_intNP\(0))) # (!\BCD_NoPaso_Peatones|num_BCD[1]~0_combout\))) # 
-- (!\BCD_NoPaso_Peatones|num_BCD[2]~1_combout\ & ((\BCD_NoPaso_Peatones|num_BCD[3]~2_combout\) # ((\Cuenta_NoPaso_Peatones|Q_intNP\(0) & !\BCD_NoPaso_Peatones|num_BCD[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_NoPaso_Peatones|num_BCD[3]~2_combout\,
	datab => \BCD_NoPaso_Peatones|num_BCD[2]~1_combout\,
	datac => \Cuenta_NoPaso_Peatones|Q_intNP\(0),
	datad => \BCD_NoPaso_Peatones|num_BCD[1]~0_combout\,
	combout => \Selector|Unidades_NP|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y21_N20
\Selector|Segmentos[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Segmentos[5]~7_combout\ = (\Selector|Mostrar_Displays~0_combout\ & (\Selector|Unidades_P|Mux1~0_combout\ & ((!\Selector|Seleccion~q\)))) # (!\Selector|Mostrar_Displays~0_combout\ & (((\Selector|Unidades_NP|Mux1~0_combout\) # 
-- (\Selector|Seleccion~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector|Unidades_P|Mux1~0_combout\,
	datab => \Selector|Mostrar_Displays~0_combout\,
	datac => \Selector|Unidades_NP|Mux1~0_combout\,
	datad => \Selector|Seleccion~q\,
	combout => \Selector|Segmentos[5]~7_combout\);

-- Location: LCCOMB_X22_Y21_N26
\Selector|Decenas_NP|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Decenas_NP|Mux1~2_combout\ = ((\Cuenta_NoPaso_Peatones|Q_intNP\(3) & ((!\Cuenta_NoPaso_Peatones|Q_intNP\(1)) # (!\Cuenta_NoPaso_Peatones|Q_intNP\(2))))) # (!\Cuenta_NoPaso_Peatones|Q_intNP\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_NoPaso_Peatones|Q_intNP\(3),
	datab => \Cuenta_NoPaso_Peatones|Q_intNP\(4),
	datac => \Cuenta_NoPaso_Peatones|Q_intNP\(2),
	datad => \Cuenta_NoPaso_Peatones|Q_intNP\(1),
	combout => \Selector|Decenas_NP|Mux1~2_combout\);

-- Location: LCCOMB_X22_Y22_N20
\Selector|Decenas_P|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Decenas_P|Mux1~2_combout\ = (\Cuenta_Paso_Peatones|Q_intP\(4)) # ((!\Cuenta_Paso_Peatones|Q_intP\(3) & ((\Cuenta_Paso_Peatones|Q_intP\(2)) # (!\Cuenta_Paso_Peatones|Q_intP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_Paso_Peatones|Q_intP\(2),
	datab => \Cuenta_Paso_Peatones|Q_intP\(3),
	datac => \Cuenta_Paso_Peatones|Q_intP\(1),
	datad => \Cuenta_Paso_Peatones|Q_intP\(4),
	combout => \Selector|Decenas_P|Mux1~2_combout\);

-- Location: LCCOMB_X23_Y21_N2
\Selector|Segmentos[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Segmentos[5]~8_combout\ = (\Selector|Seleccion~q\ & ((\Selector|Segmentos[5]~7_combout\ & (\Selector|Decenas_NP|Mux1~2_combout\)) # (!\Selector|Segmentos[5]~7_combout\ & ((\Selector|Decenas_P|Mux1~2_combout\))))) # (!\Selector|Seleccion~q\ & 
-- (\Selector|Segmentos[5]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector|Seleccion~q\,
	datab => \Selector|Segmentos[5]~7_combout\,
	datac => \Selector|Decenas_NP|Mux1~2_combout\,
	datad => \Selector|Decenas_P|Mux1~2_combout\,
	combout => \Selector|Segmentos[5]~8_combout\);

-- Location: LCCOMB_X22_Y21_N12
\BCD_NoPaso_Peatones|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_NoPaso_Peatones|LessThan0~0_combout\ = (!\Cuenta_NoPaso_Peatones|Q_intNP\(4) & ((\Cuenta_NoPaso_Peatones|Q_intNP\(3)) # (!\Cuenta_NoPaso_Peatones|Q_intNP\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_NoPaso_Peatones|Q_intNP\(3),
	datac => \Cuenta_NoPaso_Peatones|Q_intNP\(2),
	datad => \Cuenta_NoPaso_Peatones|Q_intNP\(4),
	combout => \BCD_NoPaso_Peatones|LessThan0~0_combout\);

-- Location: LCCOMB_X21_Y21_N10
\Selector|Unidades_P|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Unidades_P|Mux0~0_combout\ = (\BCD_Paso_Peatones|num_BCD[1]~0_combout\ & ((\BCD_Paso_Peatones|num_BCD[3]~2_combout\ $ (\BCD_Paso_Peatones|num_BCD[2]~1_combout\)))) # (!\BCD_Paso_Peatones|num_BCD[1]~0_combout\ & 
-- (!\BCD_Paso_Peatones|num_BCD[3]~2_combout\ & ((!\BCD_Paso_Peatones|num_BCD[2]~1_combout\) # (!\Cuenta_Paso_Peatones|Q_intP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cuenta_Paso_Peatones|Q_intP\(0),
	datab => \BCD_Paso_Peatones|num_BCD[3]~2_combout\,
	datac => \BCD_Paso_Peatones|num_BCD[1]~0_combout\,
	datad => \BCD_Paso_Peatones|num_BCD[2]~1_combout\,
	combout => \Selector|Unidades_P|Mux0~0_combout\);

-- Location: LCCOMB_X21_Y21_N16
\Selector|Unidades_NP|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Unidades_NP|Mux0~0_combout\ = (\BCD_NoPaso_Peatones|num_BCD[1]~0_combout\ & (\BCD_NoPaso_Peatones|num_BCD[2]~1_combout\ $ ((!\BCD_NoPaso_Peatones|num_BCD[3]~2_combout\)))) # (!\BCD_NoPaso_Peatones|num_BCD[1]~0_combout\ & 
-- (!\BCD_NoPaso_Peatones|num_BCD[3]~2_combout\ & ((\BCD_NoPaso_Peatones|num_BCD[2]~1_combout\) # (!\Cuenta_NoPaso_Peatones|Q_intNP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_NoPaso_Peatones|num_BCD[1]~0_combout\,
	datab => \BCD_NoPaso_Peatones|num_BCD[2]~1_combout\,
	datac => \BCD_NoPaso_Peatones|num_BCD[3]~2_combout\,
	datad => \Cuenta_NoPaso_Peatones|Q_intNP\(0),
	combout => \Selector|Unidades_NP|Mux0~0_combout\);

-- Location: LCCOMB_X21_Y21_N24
\Selector|Segmentos[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Segmentos[6]~9_combout\ = (\Selector|Mostrar_Displays~0_combout\ & (!\Selector|Unidades_P|Mux0~0_combout\ & ((!\Selector|Seleccion~q\)))) # (!\Selector|Mostrar_Displays~0_combout\ & (((\Selector|Seleccion~q\) # 
-- (!\Selector|Unidades_NP|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector|Unidades_P|Mux0~0_combout\,
	datab => \Selector|Unidades_NP|Mux0~0_combout\,
	datac => \Selector|Mostrar_Displays~0_combout\,
	datad => \Selector|Seleccion~q\,
	combout => \Selector|Segmentos[6]~9_combout\);

-- Location: LCCOMB_X22_Y22_N30
\BCD_Paso_Peatones|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_Paso_Peatones|LessThan0~0_combout\ = (\Cuenta_Paso_Peatones|Q_intP\(4) & ((\Cuenta_Paso_Peatones|Q_intP\(2)) # (!\Cuenta_Paso_Peatones|Q_intP\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cuenta_Paso_Peatones|Q_intP\(3),
	datac => \Cuenta_Paso_Peatones|Q_intP\(2),
	datad => \Cuenta_Paso_Peatones|Q_intP\(4),
	combout => \BCD_Paso_Peatones|LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y21_N2
\Selector|Segmentos[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector|Segmentos[6]~10_combout\ = (\Selector|Segmentos[6]~9_combout\ & (((!\Selector|Seleccion~q\)) # (!\BCD_NoPaso_Peatones|LessThan0~0_combout\))) # (!\Selector|Segmentos[6]~9_combout\ & (((!\BCD_Paso_Peatones|LessThan0~0_combout\ & 
-- \Selector|Seleccion~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_NoPaso_Peatones|LessThan0~0_combout\,
	datab => \Selector|Segmentos[6]~9_combout\,
	datac => \BCD_Paso_Peatones|LessThan0~0_combout\,
	datad => \Selector|Seleccion~q\,
	combout => \Selector|Segmentos[6]~10_combout\);

ww_Leds_Semaforos(0) <= \Leds_Semaforos[0]~output_o\;

ww_Leds_Semaforos(1) <= \Leds_Semaforos[1]~output_o\;

ww_Leds_Semaforos(2) <= \Leds_Semaforos[2]~output_o\;

ww_Leds_Semaforos(3) <= \Leds_Semaforos[3]~output_o\;

ww_Leds_Semaforos(4) <= \Leds_Semaforos[4]~output_o\;

ww_Leds_Semaforos(5) <= \Leds_Semaforos[5]~output_o\;

ww_Leds_Semaforos(6) <= \Leds_Semaforos[6]~output_o\;

ww_Leds_Semaforos(7) <= \Leds_Semaforos[7]~output_o\;

ww_Displays(0) <= \Displays[0]~output_o\;

ww_Displays(1) <= \Displays[1]~output_o\;

ww_Segmentos(0) <= \Segmentos[0]~output_o\;

ww_Segmentos(1) <= \Segmentos[1]~output_o\;

ww_Segmentos(2) <= \Segmentos[2]~output_o\;

ww_Segmentos(3) <= \Segmentos[3]~output_o\;

ww_Segmentos(4) <= \Segmentos[4]~output_o\;

ww_Segmentos(5) <= \Segmentos[5]~output_o\;

ww_Segmentos(6) <= \Segmentos[6]~output_o\;
END structure;


