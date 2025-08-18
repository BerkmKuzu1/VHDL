library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Led_practise_1 is
port(
    Led : out std_logic --port definition
);
end Led_practise_1;

architecture Behavioral of Led_practise_1 is

begin

    Led <= '1';

end Behavioral;
