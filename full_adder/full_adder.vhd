library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
  port (
    sw1, sw2, Cin : in  std_logic;
    S         : out std_logic;  
    Cout      : out std_logic   
  );
end full_adder;

architecture behavioral of full_adder is
begin
  
  S <= (sw1 xor sw2) xor Cin;

  Cout <= (sw1 and sw2) or (Cin and (sw1 xor sw2));

end behavioral;
