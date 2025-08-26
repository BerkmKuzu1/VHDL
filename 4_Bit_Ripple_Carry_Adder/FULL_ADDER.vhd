library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FULL_ADDER is
port(
A       : in  std_logic;
B       : in  std_logic;
Cin     : in  std_logic;
S       : out std_logic;
Cout    : out std_logic
);
end FULL_ADDER;

architecture Gate_Level of FULL_ADDER is

begin

S       <= A XOR B XOR Cin;
Cout    <= (A and B) OR (Cin AND A) OR (Cin AND B);


end Gate_Level;
