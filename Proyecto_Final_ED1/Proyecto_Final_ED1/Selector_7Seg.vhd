library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Selector_7Seg is
		
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
         
end Selector_7Seg;


 architecture Seleccionar of Selector_7Seg is
 
	component BCD_a_7seg is 
    Port ( BCD 		: in  std_logic_vector (3 downto 0);
           Siete_Seg : out  std_logic_vector (6 downto 0)
			 ); 
	end component;
 
	
	signal Cuenta: integer range 0 to 100000;
	signal Seleccion: std_logic := '0';
	signal Mostrar: std_logic_vector(1 downto 0):="00";
	signal U_NP,D_NP,U_P,D_P:std_logic_vector(6 downto 0);
	
Begin

--No paso BCD (15 downto 8)

	Unidades_NP:BCD_a_7seg port map(num_BCD(11 downto 8),U_NP); -- 7 seg a unidades no paso
	Decenas_NP:BCD_a_7seg port map(num_BCD(15 downto 12),D_NP); -- 7 seg a decenas no paso
	
--Paso	(7 Downto 0)
	
	Unidades_P:BCD_a_7seg port map(num_BCD(3 downto 0),U_P); -- 7 seg a unidades paso
	Decenas_P:BCD_a_7seg port map(num_BCD(7 downto 4),D_P); -- 7 seg a decenas paso
	
	Conteo_Clk: Process(Reloj)
	begin
		if falling_edge(Reloj) then 
			if Cuenta < 100000 then
				Cuenta<=Cuenta+1;
			else
				Seleccion<=not Seleccion;
				Cuenta<=0;
			end if;
		end if;
	end process;
	
	Mostrar_Displays: process(Seleccion,U_NP,D_NP,U_P,D_P,Cambio_Estado,Mostrar) 
	begin	
	
		case Seleccion is
		
					when '0' => Mostrar <="10";
					when '1' => Mostrar <="01";
					when others => Mostrar <="11";
					
				end case;
		
		if Cambio_Estado = 1 or Cambio_Estado = 2 then
		
				case Mostrar is	
				
							when "10" => Segmentos <=U_NP;
							when "01" => Segmentos <=D_NP;
							when others => Segmentos <="1111111";
							
				end case;	
		
		elsif Cambio_Estado = 0 then
		
			case Mostrar is	
				
							when "10" => Segmentos <=U_P;
							when "01" => Segmentos <=D_P;
							when others => Segmentos <="1111111";
							
				end case;	
		end if;
				
	end process;		

	Displays<=Mostrar;
	
	Mostrar_Leds: process(Semaforos) 
	begin
	
		case Semaforos is
		
			when "0000000011"  => Leds_Sem <= "00100110"; --LS1,LS2,LP1,LP2: R - Sem_P: V

			when "1111000000"  => Leds_Sem <= "10000101"; --LS1,LS2: V - LP1,LP2: R - Sem_P: R
			
			when "0101000000"  => Leds_Sem <= "01000101"; --LS1,LS2: A - LP1,LP2: R - Sem_P: R
			
			when "0000111100"  => Leds_Sem <= "00110001"; --LS1,LS2: R - LP1,LP2: V - Sem_P: R
			
			when "0000010100"  => Leds_Sem <= "00101001"; --LS1,LS2: R - LP1,LP2: A - Sem_P: R
			
			when others => Leds_Sem <= "00000000";
			
		end case;
		-- Primer par de semaforos (7 downto 5) En orden V A R
																		--Segundo par de semaforos (4 downto 2) En orden V A R
																		--Semaforo peatonal (1 downto 0) V R
	end process;
																		

end Seleccionar;