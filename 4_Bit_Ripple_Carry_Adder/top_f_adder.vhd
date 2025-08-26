library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity top_f_adder is
Port ( 
A       : in STD_LOGIC_VECTOR (3 downto 0);
B       : in STD_LOGIC_VECTOR (3 downto 0);
Cin     : in STD_LOGIC;
S       : out STD_LOGIC_VECTOR (3 downto 0);
Cout    : out STD_LOGIC);
end top_f_adder;
 
architecture Behavioral of top_f_adder is
 
component FULL_ADDER
Port ( 
A       : in STD_LOGIC;
B       : in STD_LOGIC;
Cin     : in STD_LOGIC;
S       : out STD_LOGIC;
Cout    : out STD_LOGIC);
end component;
 
signal c1,c2,c3: STD_LOGIC;
 
begin
 
FA1: FULL_ADDER port map( 
A(0), 
B(0), 
Cin, 
S(0), 
c1
);

FA2: FULL_ADDER port map( 
A(1), 
B(1), 
c1, 
S(1), 
c2);

FA3: FULL_ADDER port map( 
A(2), 
B(2), 
c2, 
S(2), 
c3);

FA4: FULL_ADDER port map( 
A(3), 
B(3), 
c3, 
S(3), 
Cout);
 
end Behavioral;
