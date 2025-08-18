library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4_to_1 is
    Port (
        D0  : in  STD_LOGIC;     
        D1  : in  STD_LOGIC;     
        D2  : in  STD_LOGIC;    
        D3  : in  STD_LOGIC;     
        SEL : in  STD_LOGIC_VECTOR (1 downto 0); 
        Y   : out STD_LOGIC      
    );
end mux_4_to_1;

architecture Behavioral of mux_4_to_1 is
begin

    with SEL select
        Y <= D0 when "00",
             D1 when "01",
             D2 when "10",
             D3 when "11";

end Behavioral;
