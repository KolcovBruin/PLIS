----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.05.2021 16:30:28
-- Design Name: 
-- Module Name: MUX_4to1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

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
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX_4to1 is
    Port ( CNT : in std_logic_vector(3 downto 0);
			--  strobe : in STD_LOGIC;
           I : in std_logic_vector(15 downto 0);

           O1 : out STD_LOGIC);
end MUX_4to1;

architecture Behavioral of MUX_4to1 is

begin


with CNT select 
O1 <=I(0) when "0000",
         I(1) when "0001",
         I(2) when "0010",
         I(3) when "0011",
			I(4) when "0100",
         I(5) when "0101",
         I(6) when "0110",
         I(7) when "0111",
			I(8) when "1000",
         I(9) when "1001",
         I(10) when "1010",
         I(11) when "1011",
			I(12) when "1100",
         I(13) when "1101",
         I(14) when "1110",
         I(15) when "1111";

end Behavioral;
