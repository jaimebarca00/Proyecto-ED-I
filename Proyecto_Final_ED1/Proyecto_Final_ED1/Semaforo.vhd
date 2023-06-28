library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity Semaforo is

  port(
		-- Input ports
			BotonPaso,Clock : in std_logic;
			Sensores_In : in std_logic_vector (3 downto 0);	
		-- Output ports
			Leds_Semaforos : out std_logic_vector (7 downto 0);
			Displays : out  std_logic_vector (1 downto 0); 
			Segmentos : out  std_logic_vector (6 downto 0)
		 );	
		 
end Semaforo;


architecture Sem of Semaforo is

component div_frec

	port(
		-- Input ports
		clk: in  std_logic;
		Nciclos: in	integer;			
		
		-- Output ports
		f: out std_logic);

end component;

component Control_Sensores 
	port (
	--Input Ports
		Sensores_In : in std_logic_vector(3 downto 0); --Sensores (3 downto 2) Secundaria (1 downto 0) Primaria
		--La tarjeta recibe un 0 cuando el sensor detecta algo, si no detecta nada, recibe un 1 (uno).
		BotonPaso : in std_logic; -- O cuando no hay señal del boton y 1 cuando hay señal del boton.
		clk: in std_logic; --Clk de 1 seg
		cambio: in natural range 0 to 2;
	--Output Ports
		S_C,Prior: out std_logic);
end component;


component Cont_Sem 

	port (
	--Input Ports
		clk : in std_logic; --Clk de 1 seg
		cambio: in natural range 0 to 2;--Es 2 cuando "tiempo" no debe cambiar, 1 cuando debe cambiar (Estados S1 Y S3) 
		--y 0 cuando el estado es S0.(En S0 tiempo tambien cambia)
											
	--Output Ports
		Tiempo: out std_logic);
		
end component;


component Cont_Peatonal_NP  --Cuenta de espera del paso peatonal

	port ( 
	--Input Ports
		clk: in std_logic; --Clk de 1 seg
		cambio: in natural range 0 to 2;
	--Output Ports
		Q_NP: out std_logic_vector(4 downto 0);
		Num_NP: out natural);
		
end component;

component Cont_Peatonal_P  --Cuenta para el paso peatonal

	port ( 
	--Input Ports
		clk: in std_logic; --Clk de 1 seg
		cambio: in natural range 0 to 2;
	--Output Ports
		Q_P: out std_logic_vector(4 downto 0);
		Num_P: out natural);
	
end component;

component Maquina_Estados_Sem 

	port(
		-- Input ports									
			Prior,T,S_C,clk	: in  std_logic;
		
		-- Output ports
			Cambio_Estado : out natural range 0 to 2;
			Semaforos : out std_logic_vector (9 downto 0));
		
	--Explicación Codigo
	--Entradas	
		-- Prior(Determina si se debe dar paso prioritario a los peatones) (Lo determina el Control_Sensor)
			-- 0 - No dar el paso prioritario , 1 - Dar el paso prioritario		
		-- T(Indica si se cumplio el tiempo para el estado) 
			--	0 - Mantener estado , 1 - Cambio estado		
		--S_C(Señal del sensor de carros)
			-- 0 - No hay carros , 1 - Si hay carros
	--Salidas	
		--Semaforos guarda las salidas de los semaforos.
			-- Rojo: 00 , Amarillo: 01 , Verde: 11
			--Semaforos (1-0) Sem_P (Semaforo peatonal)  
			--Semaforos (3-2)	LP2	(Luces sem principal 2) 	Horizontal der
			--Semaforos (5-4)	LP1	(Luces sem principal 1)		Horizontal Izq
			--Semaforos (7-6)	LS2	(Luces sem secundario 2)	Vertical Arriba
			--Semaforos (9-8)	LS1	(Luces sem secundario 1)	Vertical Abajo
		--Cambio_Estado
			--Es 2 cuando "tiempo" no debe cambiar, 1 cuando debe cambiar (Estados S1 Y S3) y 0 cuando el estado es S0.
			--(En S0 tiempo tambien cambia)
			
end component;


component Bin_a_BCD 

	generic(
		N_Bits  : integer :=  5; -- Cantidad de bits del numero binario.
		NB_Salida: integer := 8  -- Cantidad de bits de salida en formato BCD.
	);
	port(
		num_bin: in  std_logic_vector(N_Bits-1   downto 0);
		num_BCD: out std_logic_vector(NB_Salida-1 downto 0)
	);
end component;




component Selector_7Seg
		
		port ( 
		--Input Ports
			Reloj: in std_logic;
			Cambio_Estado : in natural range 0 to 2;
--			Num_NP : in natural range 0 to 25; --cambiar a natural ( en integer fallaba la simulacion)
--			Num_P : in natural range 0 to 11;	-- cambiar a natural
			num_BCD: in std_logic_vector (15 downto 0);
			Semaforos : in std_logic_vector (9 downto 0);
		--Output Ports	
			Displays : out  std_logic_vector (1 downto 0);
         Segmentos : out  std_logic_vector (6 downto 0);
			Leds_Sem : out std_logic_vector (7 downto 0) -- Primer par de semaforos (7 downto 5) En orden V A R
																		--Segundo par de semaforos (4 downto 2) En orden V A R
																		--Semaforo peatonal (1 downto 0) V R
			);
         
end component;






--Divisor de frecuencia

signal Freq_deseada_1seg : integer := 25000000; -- 50M / 2*1hz Periodo 1seg FPGA
--signal Freq_deseada_1seg : integer := 1000; --  2k / 2hz = 1000 Periodo 1 seg Simulación
signal Clk_1seg : std_logic;

--Control Sensores

signal S_C : std_logic;
signal Prior : std_logic;


--Contador Tiempo y Maquina de estados

signal Cambio_Estado : natural range 0 to 2; --Es 0 cuando "tiempo" no debe cambiar, y 1 cuando debe cambiar (Estados S1 Y S3)
signal Tiempo : std_logic; --Determina si se debe cambiar de tiempo o no.
signal Leds_Sem : std_logic_vector (9 downto 0);


--Cuenta Peatonal

signal Num_NP : natural range 0 to 25 := 25;
signal Num_P :  natural range 0 to 11 := 11;

signal Q_CuentaPeatonal : std_logic_vector (9 downto 0);
signal BCD : std_logic_vector (15 downto 0) := "0000000000000000";


begin

	Reloj1Seg :div_frec port map(Clock,Freq_deseada_1seg,Clk_1seg);
	
	Controlador_Sensores: Control_Sensores port map(Sensores_In,BotonPaso,Clk_1seg,Cambio_Estado,S_C,Prior);
	
	Contador_Tiempo :Cont_Sem port map(Clk_1seg,Cambio_Estado,Tiempo);

	MaquinaEstados : Maquina_Estados_Sem port map(Prior,Tiempo,S_C,Clk_1seg,Cambio_Estado,Leds_Sem);

	Cuenta_NoPaso_Peatones : Cont_Peatonal_NP port map(Clk_1seg,Cambio_Estado,Q_CuentaPeatonal(9 downto 5),Num_NP);
		
	Cuenta_Paso_Peatones : Cont_Peatonal_P port map(Clk_1seg,Cambio_Estado,Q_CuentaPeatonal(4 downto 0),Num_P);
		
	BCD_NoPaso_Peatones : Bin_a_BCD port map(Q_CuentaPeatonal(9 downto 5),BCD(15 downto 8));
		
	BCD_Paso_Peatones : Bin_a_BCD port map(Q_CuentaPeatonal(4 downto 0),BCD(7 downto 0));

	Selector :Selector_7Seg port map(Clock,Cambio_Estado,BCD,Leds_Sem,Displays,Segmentos,Leds_Semaforos); 
	  

end Sem;