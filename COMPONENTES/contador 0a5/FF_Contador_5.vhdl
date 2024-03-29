library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FF_Contador_5 is
	port(
		K : in  std_logic_vector(2 downto 0);
		J : in  std_logic_vector(2 downto 0);
		R : in std_logic;      
		CLK : in std_logic;
		P : in std_logic;
		B : out std_logic_vector(2 downto 0)
	);
end FF_Contador_5;

architecture comp of FF_Contador_5 is    
    component FF is
	    port(
            clk : in  std_logic;
            J : in  std_logic;
            K : in  std_logic;
            PR: in  std_logic;
            CL: in  std_logic;        
            Q : out std_logic;
            Qn : out std_logic
	    );
    end component;    
    signal bn : std_logic;
begin
    x0 : FF
    port map(CLK,J(0),K(0),P,R,B(0),bn);
    
    x1 : FF
    port map(CLK,J(1),K(1),P,R,B(1),bn);
    
    x2 : FF
    port map(CLK,J(2),K(2),P,R,B(2),bn);
    
end architecture;
