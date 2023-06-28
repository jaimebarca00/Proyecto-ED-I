
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Maquina_Estados_Sem is 

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
		
	end Maquina_Estados_Sem;

architecture maq_est of Maquina_Estados_Sem is
	
	type estados is (S0,S1,S2,S3,S4);
	signal edo_pres, edo_fut: estados;	--edo_pres: Estado presente , edo_fut: Estado futuro
	signal cambio : natural range 0 to 2; --0 y 2 para estados de no transicion, 1 para estados de transicion
	
	begin

	--Asignación del estado con un flanco de subida

	Asignacion_Estado: process (clk) begin
		if rising_edge(clk) then
			edo_pres <= edo_fut;
		end if;
	end process Asignacion_Estado;
	
	--Logica del cambio de estado
	
	process(edo_pres,T,Prior,S_C,clk)
	begin
	
		case edo_pres is
		when S0 =>
				
				cambio <= 0;
				
				if T = '0' then
					edo_fut <= S0;
				else
					edo_fut <= S1;
				end if;
				
		when S1 =>		
				
				cambio <= 1;
				
				if Prior = '0' then	
					
					if (T = '0' and S_C = '1')	then
						edo_fut <= S1;
					else	
						edo_fut <= S2;
					end if;
					
				elsif Prior = '1' then
					edo_fut <= S0;
				end if;
				
		when S2 =>
			
				cambio <= 2;
			
				if Prior = '1' then
					edo_fut <= S0;
				else
					edo_fut <= S3;
				end if;	
				
		when S3 =>
				
				cambio <= 1;
				
				if Prior = '0' then
					if (T = '0' and S_C = '1')	then
						edo_fut <= S3;
					else	
						edo_fut <= S4;
					end if;
					
				elsif Prior = '1' then
					edo_fut <= S0;
				end if;
				
		when S4 =>
					
					cambio <= 2;
					edo_fut <= S0;		
		when others => edo_fut <= S0;
		end case;
		
	end process;

	Cambio_Estado <= cambio;
	
	--Salidas
	
	Salidas: process(edo_pres)
	begin
		case edo_pres is
			when S0 => Semaforos<="0000000011";

			when S1 => Semaforos<="1111000000";

			when S2 => Semaforos<="0101000000";

			when S3 => Semaforos<="0000111100";

			when S4 => Semaforos<="0000010100";

		end case;
	end process;

	
	end maq_est;




--
--
--
--
--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;
--
--entity Maquina_Estados_Sem is 
--
--	port(
--		-- Input ports									
--			Prior,T,S_C,clk	: in  std_logic;
--		
--		-- Output ports
--			Semaforos : out std_logic_vector (9 downto 0));
--		
--	--Explicación Codigo
--	--Entradas	
--		-- Prior(Determina el inicio del programa) 
--			-- 0 - Estado Cero , 1 - Comenzar		
--		-- T(Indica si se cumplio el tiempo para el estado) 
--			--	0 - Mantener estado , 1 - Cambio estado		
--		--S_C(Señal del sensor de carros)
--			-- 0 - No hay carros , 1 - Si hay carros
--	--Salidas	
--		--Semaforos guarda las salidas de los semaforos.
--			-- Rojo: 00 , Amarillo: 01 , Verde: 11
--			--Semaforos (1-0) Sem_P (Semaforo peatonal)  
--			--Semaforos (3-2)	LP2	(Luces sem principal 2) 	Horizontal der
--			--Semaforos (5-4)	LP1	(Luces sem principal 1)		Horizontal Izq
--			--Semaforos (7-6)	LS2	(Luces sem secundario 2)	Vertical Arriba
--			--Semaforos (9-8)	LS1	(Luces sem secundario 1)	Vertical Abajo
--		
--	end Maquina_Estados_Sem;
--
--architecture maq_est of Maquina_Estados_Sem is
--	
--	type estados is (S0,S1,S2,S3,S4);
--	signal edo_pres, edo_fut: estados;	--edo_pres: Estado presente , edo_fut: Estado futuro
--	
--	begin
--
--	--Asignación del estado con un flanco de subida
--
--	Asignacion_Estado: process (clk) begin
--		if rising_edge(clk) then
--			edo_pres <= edo_fut;
--		end if;
--	end process Asignacion_Estado;
--	
--	--Logica del cambio de estado
--	
--	process(edo_pres,Prior,T,S_C)
--	begin
--	
--		case edo_pres is
--		when S0 =>
--				if Prior = '1' then
--					edo_fut <= S1;
--				else
--					edo_fut <= S0;
--				end if;
--				
--		when S1 =>
--				if Prior = '1' then
--					if (T = '0' and S_C = '1')	then
--						edo_fut <= S1;
--					else	
--						edo_fut <= S2;
--					end if;
--					
--				elsif Prior = '0' then
--					edo_fut <= S0;
--				end if;
--				
--		when S2 =>
--				if Prior = '0' then
--					edo_fut <= S0;
--				else
--					edo_fut <= S3;
--				end if;	
--				
--		when S3 =>
--				if Prior = '1' then
--					if (T = '0' and S_C = '1')	then
--						edo_fut <= S3;
--					else	
--						edo_fut <= S4;
--					end if;
--					
--				elsif Prior = '0' then
--					edo_fut <= S0;
--				end if;
--				
--		when S4 =>
--					edo_fut <= S0;		
--		when others => edo_fut <= S0;
--		end case;
--		
--	end process;
--
--	--Salidas
--	
--	Salidas: process(edo_pres)
--	begin
--		case edo_pres is
--			when S0 => Semaforos<="0000000011";
--
--			when S1 => Semaforos<="1111000000";
--
--			when S2 => Semaforos<="0101000000";
--
--			when S3 => Semaforos<="0000111100";
--
--			when S4 => Semaforos<="0000010100";
--
--		end case;
--	end process;
--
--	end maq_est;
--		