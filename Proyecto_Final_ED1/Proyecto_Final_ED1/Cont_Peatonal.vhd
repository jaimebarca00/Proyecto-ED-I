library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Cont_Peatonal is port ( --Cuenta de espera del paso peatonal
	--Input Ports
		clk: in std_logic; --Clk de 1 seg
		cambio: in natural range 0 to 2;
	--Output Ports
		Cuenta_Peatonal : out std_logic_vector(4 downto 0);
		Num: out natural);
end Cont_Peatonal;


architecture Cuenta of Cont_Peatonal is
	
	signal Q_int : std_logic_vector(4 downto 0) := "01010";
	signal numero : natural range 0 to 25:= 11;
	signal Cuenta_int : std_logic:= '0';
	
--	
--		signal Q_intNP: std_logic_vector(4 downto 0); 
--		signal numeroNP : natural range 0 to 25;
--		signal Q_intP: std_logic_vector(4 downto 0); 
--		signal numeroP : natural range 0 to 15;	
--	
begin
		
	process (clk,cambio,Cuenta_int) 
	begin
	
	if rising_edge(clk) then

		if (cambio = 1 or cambio = 2) then

				
					Q_int <= "10110";
					numero <= 23;

				if numero = 1 then
					Q_int <= "10110";
					numero <= 23;
				end if;	
					
		else
		
					Q_int <= "01010";
					numero <= 11;
				
				if numero = 1 then
					Q_int <= "01010";
					numero <= 11;
				end if;
			
		end if;
		
		Q_int <= Q_int - 1;
		numero <= numero - 1;
	end if;
	end process;
	
 Cuenta_Peatonal <= Q_int;
	

	
	
	
--	process (clk,cambio,Cuenta_int) 
--	begin
--	
--	if rising_edge(clk) then
--
--		if (cambio = 1 or cambio = 2) then
--		
--				if Cuenta_int = '0' then
--					Q_int <= "10110";
--					numero <= 23;
--					Cuenta_int <= '1';
--				end if;
--				
--					Q_int <= Q_int - 1;
--					numero <= numero - 1; --El numeroNP esta atrasado 1 con respecto al contador
--
--				if numero = 1 then
--					Q_int <= "10110";
--					numero <= 23;
--				end if;	
--					
--		elsif (cambio = 0) then
--		
--				if Cuenta_int = '1' then
--					Q_int <= "01010";
--					numero <= 11;
--					Cuenta_int <= '0';
--				end if;	
--
--					Q_int <= Q_int - 1;
--					numero <= numero - 1; --El numeroP esta atrasado 1 con respecto al contador.
--				
--				if numero = 1 then
--					Q_int <= "01010";
--					numero <= 11;
--				end if;
--		end if;
--	end if;
--	end process;
--	
-- Cuenta_Peatonal <= Q_int;	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
end Cuenta;














		
--case cambio is
--
--	when 1  =>
--
--			if Cuenta_int = '0' then
--				Q_intNP <= "10110";
--				numeroNP <=22;
--				Cuenta_int <= '1';
--			end if;
--	
--			if rising_edge(clk)then	
--					
--				Q_intNP <=Q_intNP - 1;
--				numeroNP <= numeroNP - 1; --El numeroNP esta atrasado 1 con respecto al contador.
--				
--			end if;
--	
----	when 2  =>
----
----			if Cuenta_int = '0' then
----				Q_intNP <= "10110";
----				numeroNP <= 22;
----				Cuenta_int <= '1';
----			end if;
----	
----			if rising_edge(clk)then	
----					
----				Q_intNP <= Q_intNP - 1;
----				numeroNP <=numeroNP - 1; --El numeroNP esta atrasado 1 con respecto al contador.
----				
----			end if;	
--	
--	when 0 =>
--			if Cuenta_int = '1' then
--				Q_intP <= "01010";
--				numeroP <= 10;
--				Cuenta_int <= '0';
--			end if;
--	
--			if rising_edge(clk)then	
--					
--				Q_intP <= Q_intP - 1;
--				numeroP <= numeroP - 1; --El numeroP esta atrasado 1 con respecto al contador.
--				
--			end if;
--
--	
----	when 0 =>
----		
----	
----			if Cuenta_int = '1' then
----				Q_intP := "01010";
----				numeroP := 10;
----				Cuenta_int <= '0';
----			end if;
----	
----			if rising_edge(clk)then	
----					
----				Q_intP := Q_intP - 1;
----				numeroP := numeroP - 1; --El numeroP esta atrasado 1 con respecto al contador.
----				
----			end if;
--