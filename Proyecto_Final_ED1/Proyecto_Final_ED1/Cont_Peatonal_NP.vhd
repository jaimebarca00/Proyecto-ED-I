library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Cont_Peatonal_NP is port ( --Cuenta de espera del paso peatonal
	--Input Ports
		clk: in std_logic; --Clk de 1 seg
		cambio: in natural range 0 to 2;
	--Output Ports
		Q_NP: out std_logic_vector(4 downto 0);
		Num_NP: out natural);
end Cont_Peatonal_NP;


architecture Cuenta_NP of Cont_Peatonal_NP is
	
	signal Q_intNP : std_logic_vector(4 downto 0) := "10110";
	signal numeroNP : natural range 0 to 23:= 23;
	
	begin
	
	
	
	process (clk,cambio) begin

	
	if (cambio = 1 or cambio = 2) then
	
			if rising_edge(clk)then	
					
				Q_intNP <= Q_intNP - 1;
				numeroNP <= numeroNP - 1; --El numeroNP esta atrasado 1 con respecto al contador.
				
				if numeroNP = 1 then
				Q_intNP <= "10110";
				numeroNP <= 23;
				end if;
				
		end if;

	
	else
	
		Q_intNP <= "10110";
		numeroNP <= 23;
	
	end if;
	end process;
	
	Q_NP <= Q_intNP;
	Num_NP <= numeroNP;
	
end Cuenta_NP;



--	--Input Ports
--		Paso , clk: in std_logic; --Clk de 1 seg
--		--Paso = 0 Si los peatones no pueden pasar, Paso = 1 si los peatones pueden pasar.
--	--Output Ports
--		Q_P: out std_logic_vector(4 downto 0);
--		Num_P: out integer);

--
--	signal Q_intNP : std_logic_vector(4 downto 0) := "11000";
--	signal numeroNP : integer range 0 to 25 := 24;
--	signal cambio : std_logic := '0';
--	
--	begin
--	
--	process (clk,Paso) begin
--
--		if rising_edge(clk)then	
--			if Paso = '0' then
--						
--				Q_intNP <= Q_intNP - 1;
--				numeroNP <= numeroNP - 1;
--									
--			elsif Paso = '1' then
--		
--				if cambio = '0' then
--						Q_intNP <= Q_intNP - 14;
--						numeroNP <= numeroNP - 14;
--						cambio <= not cambio;
--				else
--					Q_intNP <= Q_intNP - 1;
--					numeroNP <= numeroNP - 1;
--					if numeroNP = 0 then
--					cambio <= not cambio;
--					end if;
--					
--				end if;
--			end if;
--		end if;
--	end process ;
--	
--	Q_P <= Q_intNP;
--	Num_P <= numeroNP;