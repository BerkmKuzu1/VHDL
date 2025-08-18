----------------------------------------------------------------------------------
-- Title: And Gate Example
-- Engineer: Berk Muammer Kuzu
-- Board: Basys3
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and2 is
    Port ( and_in_1_i : in STD_LOGIC;
           and_in_2_i : in STD_LOGIC;
           and_out_1_o : out STD_LOGIC);
end and2;

architecture Behavioral of and2 is

begin

    and_out_1_o <= and_in_1_i and and_in_2_i;
    
end Behavioral;
