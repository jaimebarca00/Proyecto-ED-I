library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity BCD_a_7seg is
    Port ( BCD 		: in  std_logic_vector (3 downto 0);
           Siete_Seg 	: out  std_logic_vector (6 downto 0)
			 );
end BCD_a_7seg;

architecture Behavioralbcd of BCD_a_7seg is		

begin
		
	process (BCD)
	variable Salida: std_logic_vector(6 downto 0);

	--gfedcba display anodo comun
		
		begin
		case BCD is
			when "0000" => Salida:="1000000";  
			when "0001" => Salida:="1111001";
			when "0010" => Salida:="0100100";
			when "0011" => Salida:="0110000";
			when "0100" => Salida:="0011001";
			when "0101" => Salida:="0010010";
			when "0110" => Salida:="0000010";
			when "0111" => Salida:="1111000";
			when "1000" => Salida:="0000000";
			when "1001" => Salida:="0010000";
			when others => Salida:="1111111";
		end case;
	
	Siete_Seg<=Salida;	
		
	end process ;
	
end Behavioralbcd;
