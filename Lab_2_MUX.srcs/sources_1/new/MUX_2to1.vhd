----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.05.2021 16:30:28
-- Design Name: 
-- Module Name: MUX_2to1 - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX_2to1 is
    Port ( cntr_1 : in STD_LOGIC;
           I1 : in STD_LOGIC;
           I2 : in std_logic;
           O1 : out STD_LOGIC);
end MUX_2to1;

architecture Behavioral of MUX_2to1 is

begin
O1<=I1 when cntr_1='0' else 
I2 when cntr_1='1';

end Behavioral;
