library ieee;
use ieee.std_logic_1164.all;

entity CC_NZ is
	port(
        E   :  in  std_logic_vector(7 downto 0);
        N   :  out std_logic;
        Z   :  out std_logic
	);
end CC_NZ;

architecture comp of CC_NZ is
    begin
        N <= E(7);
        Z <= not (E(0) or E(1) or E(2) or E(3) or E(4) or E(5) or E(6) or E(7));

end architecture;