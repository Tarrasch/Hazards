-- nohazard.vhd

library IEEE;
use IEEE.std_logic_1164.all;

Entity nohazard is
  port( x, y : in std_logic;
        f : out std_logic
      );
End Entity;

Architecture nohazard_bhv of nohazard is
signal ny : std_logic;
begin
  ny <= not y after 10 ns;
  f <= not (x and ny) after 10 ns;
end Architecture ;

