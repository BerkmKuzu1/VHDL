library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gates is
port(

    btn0 : in std_logic; --Not Gate
    btn1 : in std_logic; --And Gate
    btn2 : in std_logic; --And Gate
    btn3 : in std_logic; --Or Gate
    btn4 : in std_logic; --Or Gate
    btn5 : in std_logic; --Nand Gate
    btn6 : in std_logic; --Nand Gate
    btn7 : in std_logic; --Nor Gate
    btn8 : in std_logic; --Nor Gate
    btn9 : in std_logic; --Xor Gate
    btn10 : in std_logic; --Xor Gate
    btn11 : in std_logic; --Xnor Gate
    btn12 : in std_logic; --Xnor Gate
    
    led0 : out std_logic; --Not Gate
    led1 : out std_logic; --And Gate
    led2 : out std_logic; --Or Gate
    led3 : out std_logic; --Nand Gate
    led4 : out std_logic; --Nor Gate
    led5 : out std_logic; --Xor Gate
    led6 : out std_logic --Xnor Gate
    
);
end gates;

architecture Behavioral of gates is

begin

    --Not Gate 
    led0 <= not btn0;
    
    --And Gate
    led1 <= btn1 and btn2;
    
    --Or Gate
    led2 <= btn3 and btn4;

    --Nand Gate
    led3 <= not (btn5 and btn6);
    
    --Nor Gate
    led4 <= not (btn7 or btn8);
    
    --Xor Gate
    led5 <= btn9 xor btn10;
    
    --Xnor Gate
    led6 <= btn11 xnor btn12;
    
end Behavioral;
