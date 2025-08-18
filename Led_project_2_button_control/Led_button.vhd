library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Led_button is
port(

    btn1 : in std_logic;
    led1 : out std_logic;
    btn2 : in std_logic;
    led2 : out std_logic

);
end Led_button;

architecture Behavioral of Led_button is

begin

    led1 <= btn1;
    
    led2 <= btn2;

end Behavioral;
