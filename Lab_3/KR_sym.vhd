library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM
--use UNISIM.VComponents.al

entity KR_sym is

end KR_sym;

architecture Behavioral of KR_sym is
signal clk : std_logic := '0';
signal q : std_logic := '0';
begin



p1 : entity work.System
      port map(clk,q);
clk <= not clk after 5ps;
end Behavioral;