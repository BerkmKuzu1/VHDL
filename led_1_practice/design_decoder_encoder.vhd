library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_decoder_encoder is
port(

    --Decoder
    enable : in std_logic;
    input : in std_logic_vector(1 downto 0);
    output : out std_logic_vector(3 downto 0);
    
    --Encoder
     l0 : in  STD_LOGIC;
     l1 : in  STD_LOGIC;
     l2 : in  STD_LOGIC;
     l3 : in  STD_LOGIC;
     x  : out STD_LOGIC;
     y  : out STD_LOGIC 
    
);
end design_decoder_encoder;

architecture Behavioral of design_decoder_encoder is

begin
    --Decoder
    with input select 
        output <= "0001" when "00",
                  "0010" when "01",
                  "0100" when "10",
                  "1000" when "11",
                  "0000" when others;
                  
    --Encoder
    process (l0, l1, l2, l3)
        begin
            x <= '0';
            y <= '0';
            
            if l0 = '1' then
                x <= '0';
                y <= '0';
            elsif l1 = '1' then
                x <= '0';
                y <= '1';
            elsif l2 = '1' then
                x <= '1';
                y <= '0';  
            elsif l3 = '1' then    
                x <= '1';       
                y <= '1';       
            end if;
    end process;
           
end Behavioral;
