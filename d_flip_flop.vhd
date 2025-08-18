library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity d_flip_flop is
port(

    clk : in std_logic;
    reset_n : in std_logic;
    en : in std_logic;
    d : in std_logic;
    q : out std_logic

);
end d_flip_flop;

architecture Behavioral of d_flip_flop is

begin

    process(clk, reset_n)
    begin
        if reset_n = '0' then
            q <= '0';
        elsif rising_edge(clk) then 
            if en = '1' then
                q <= d;
            end if;
        end if;
    end process;

end Behavioral;
