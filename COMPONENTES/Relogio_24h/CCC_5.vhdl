library ieee;
use ieee.std_logic_1164.all;

entity CCC_5 is
	port(
        X : in std_logic;
        Q : in std_logic_vector(2 downto 0);        
        K : out  std_logic_vector(2 downto 0);
        J : out  std_logic_vector(2 downto 0)
        
	);
end CCC_5;

architecture comp of CCC_5 is
    begin
        K(0) <= '1' and X;        
        J(0) <= '1' and X;
      	K(1) <= (not Q(2) and Q(1) and Q(0)) and X;
      	J(1) <= (not Q(2) and not Q(1) and Q(0)) and X;
      	K(2) <= (not Q(2) or (not Q(1) and Q(0))) and X;
      	J(2) <= (not Q(2) and Q(1) and Q(0)) and X;
end architecture comp;


