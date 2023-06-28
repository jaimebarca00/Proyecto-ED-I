library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Control_Sensores is port (
	--Input Ports
		Sensores_In : in std_logic_vector(3 downto 0); --Sensores (3 downto 2) Secundaria (1 downto 0) Primaria
		--La tarjeta recibe un 0 cuando el sensor detecta algo, si no detecta nada, recibe un 1 (uno).
		BotonPaso : in std_logic; -- O cuando no hay señal del boton y 1 cuando hay señal del boton.
		clk: in std_logic; --Clk de 1 seg
		cambio: in natural range 0 to 2;
	--Output Ports
		S_C,Prior: out std_logic);
end Control_Sensores;


architecture Control of Control_Sensores is

signal cuenta: natural range 0 to 10:= 0;
	signal cuenta_prioritaria : natural range 0 to 22:= 0;
	signal Senal_Sensor : std_logic:= '1' ; --MSB Señal de S_C, LSB Señal de Prior
	signal Senal_Prior : std_logic:= '0';
	signal Btn : std_logic:= '1';
	
	begin

	--El boton de paso funciona igual que cuando todos los sensores mandan que no hay carros,
	--al llegar a 10
	
	process(BotonPaso,cuenta_prioritaria) 
	begin
		if falling_edge(BotonPaso)then
			Btn <= not Btn;
		end if;
		if Senal_prior = '1' then
			Btn <= '1';
		end if;
		
	end process;
	
	--Cambio General a los 11 segundos (mitad del tiempo de NP)
	
	process(clk,cambio) 
	begin
	
		if cambio = 1 or cambio = 2 then
			if rising_edge(clk) then
				if Sensores_In = "1111" or Btn = '0' then --Si lo pido no me importan los sensores, priorizo el paso.
					cuenta_prioritaria <= cuenta_prioritaria + 1;	
					Senal_Prior <= '0';
					if cuenta_prioritaria = 9 then -- Si no se detecta durante 11 segundos 
						cuenta_prioritaria <= 0;
						Senal_Prior <= '1';
					end if;
				end if;
				
				
			end if;
		else
		cuenta_prioritaria <= 0;
		Senal_Prior <= '0';
		end if;
	end process;
	
	--Cambio en cada estado de semaforos en verde S1 Y S3, si no se detecta señal de los sensores durante 5 segundos, S_C = 0
	--y el estado cambia.
	
	process(clk,cambio,Sensores_In,BotonPaso)
	
	begin

	if cambio = 1 then
	
		if Sensores_In(3 downto 2) = "11" or Sensores_In(1 downto 0) = "11" then --No se distinge entre Ciclo sec o primario
				
			if rising_edge(clk) then
					cuenta <= cuenta + 1;	
					Senal_Sensor <= '1';
				if cuenta = 3 then -- Si no se detecta durante 5 segundos 
					cuenta <= 0;
					Senal_Sensor <= '0';
				end if;
			
			end if;
			
		end if;		
	else
	cuenta <= 0;
	Senal_Sensor <= '1';
	end if;
	
	end process;
	
	S_C <= Senal_Sensor;
	Prior <= Senal_Prior;
	
end Control;







	