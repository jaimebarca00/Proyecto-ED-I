library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Cont5 is port (
	--Input Ports
		Start,clk : in std_logic; --Clk de 2 seg
		cambio: in std_logic; --Es 0 cuando "tiempo" no debe cambiar, y 1 cuando debe cambiar (Estados S1 Y S3)
	--Output Ports
		Tiempo: out std_logic);
end Cont5;


architecture cuenta5 of Cont5 is
		
	signal t : std_logic := '0'; --Determina si se debe cambiar de tiempo o no.
	signal Num_Tiempo : integer range 0 to 5 := 0;
	
	begin
	
	process (clk,cambio) begin
	
	if cambio = '1' then
	
		if rising_edge(clk) then
				if Num_Tiempo = 3 then   --Tiempo total de los verdes 10 seg (T: 0 a 1)
					t <= not t;				 --Estados transición (S2 y S4) Luces amarillas (T: 1 a 0) 
												 --Num_Tiempo = 4 es la transición.									
				else
					Num_Tiempo <= Num_Tiempo + 1;
				end if;
		end if;	
	else
	 Num_Tiempo <= 0;
	 t <= '0';
	end if;
	
	end process;

	Tiempo <= t;
	
end cuenta5;
















--
--
--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;
--
--entity Cont5 is port (
--	--Input Ports
--		Start,S_C,clk,cambio: in std_logic; --Clk de 2 seg
--	--Output Ports
--		Tiempo: out std_logic);
--end Cont5;
--
--
--architecture cuenta5 of Cont5 is
--		
--	signal t : std_logic := '0'; --Determina si se debe cambiar de tiempo o no.
--	signal Num_Tiempo : integer range 0 to 5 := 0;
--	
--	begin
--	
--	process (clk,Start,S_C) begin
--
--	
--	if cambio = '1' then
--	
--		if rising_edge(clk) and Start = '1' then
--			
--			if S_C = '0' then
--				t <= '0';
--				Num_Tiempo <= 0;
--			else
--				if Num_Tiempo = 3 then   --Tiempo total de los verdes 10 seg (T: 0 a 1)
--					t <= not t;
--					Num_Tiempo <= Num_Tiempo + 1;
--				
--				elsif Num_Tiempo = 4 then  --Num_Tiempo = 4 es la transición.
--					t <= not t;
--					Num_Tiempo <= Num_Tiempo + 1;
--				elsif Num_Tiempo = 5 then --Estados transición (S2 y S4) Luces amarillas (T: 1 a 0) 					 
--					Num_Tiempo <= 0;
--				else
--					Num_Tiempo <= Num_Tiempo + 1;
--				end if;
--			end if;	
--		elsif rising_edge(clk) and Start = '0' then
--			Num_Tiempo <= 0;
--			t <= '0';
--		end if;	
--	else
--	 t <= '0';
--	end if;
--	
--	end process;
--
--	Tiempo <= t;
--	
--end cuenta5;