library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Cont_Peatonal_P is port ( --Cuenta para el paso peatonal
	--Input Ports
		clk: in std_logic; --Clk de 1 seg
		cambio: in natural range 0 to 2;
	--Output Ports
		Q_P: out std_logic_vector(4 downto 0);
		Num_P: out natural);
end Cont_Peatonal_P;


architecture Cuenta_P of Cont_Peatonal_P is
	
	signal Q_intP : std_logic_vector(4 downto 0) := "01010";
	signal numeroP : natural range 0 to 11:= 11;
	
	begin
	
	process (clk,cambio) begin

	
	if (cambio = 0) then
	
			if rising_edge(clk)then	
					
				Q_intP <= Q_intP - 1;
				numeroP <= numeroP - 1; --El numeroP esta atrasado 1 con respecto al contador.
				
				if numeroP = 1 then
				Q_intP <= "01010";
				numeroP <= 11;
				end if;
				
				end if;

	
	else
		Q_intP <= "01010";
		numeroP <= 11;
	end if;
	end process;	
	
		Q_P <= Q_intP;
		Num_P <= numeroP;	
	
end Cuenta_P;
