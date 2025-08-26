LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_4_bit_adder IS
END tb_4_bit_adder;
 
ARCHITECTURE behavior OF tb_4_bit_adder IS
 
 
COMPONENT top_f_adder
PORT(
A       : IN std_logic_vector(3 downto 0);
B       : IN std_logic_vector(3 downto 0);
Cin     : IN std_logic;
S       : OUT std_logic_vector(3 downto 0);
Cout    : OUT std_logic
);
END COMPONENT;
 
signal A    : std_logic_vector(3 downto 0) := (others => '0');
signal B    : std_logic_vector(3 downto 0) := (others => '0');
signal Cin  : std_logic := '0';
 
signal S    : std_logic_vector(3 downto 0);
signal Cout : std_logic;
 
BEGIN
 
uut: top_f_adder PORT MAP (
A       => A,
B       => B,
Cin     => Cin,
S       => S,
Cout    => Cout
);
 
sim_process: process
begin

wait for 100 ns;
A <= "0110";
B <= "1100";
 
wait for 100 ns;
A <= "1111";
B <= "1100";
 
wait for 100 ns;
A <= "0110";
B <= "0111";
 
wait for 100 ns;
A <= "0110";
B <= "1110";
 
wait for 100 ns;
A <= "1111";
B <= "1111";
 
wait;
 
end process;
 
END;
