-- hasard1.vhd

library IEEE;
use IEEE.std_logic_1164.all;

Entity hasard1 is
  port( x, y : in std_logic;
        f : out std_logic
      );
End Entity hasard1;

Architecture hasard1_bhv of hasard1 is
signal f1 : std_logic;
begin
  f1 <= not (x and y) after 10 ns;
  f <= not (f1 and x) after 10 ns;
end Architecture hasard1_bhv;

