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

entity MUX_2to1 is
    Port ( clk: in STD_LOGIC;
			  Inp : in std_logic_vector(3 downto 0);	
           Q : out std_logic_vector(3 downto 0);
			  syn : out STD_LOGIC:='0');
end MUX_2to1;

architecture Behavioral of MUX_2to1 is
signal outer :std_logic_vector(3 downto 0):="0000";
begin

					process (clk)
					begin
					if rising_edge(clk) then
                outer<=outer+1;
            end if;
				Q<=outer;
				if outer="1111" then
                syn<='1';
					 else 
					 syn<='0';
            end if;
					--Q<=outer;
					end process;
					--syn<='1' when Inp="1111" else
					--'0';
					--Q<=outer;
				 
             --Q<=Inp+1;
				 
				

end Behavioral;
