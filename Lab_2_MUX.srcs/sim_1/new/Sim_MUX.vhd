----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.05.2021 17:13:37
-- Design Name: 
-- Module Name: Sim_MUX - Behavioral
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

entity Sim_MUX is
 -- Port (
 -- clk : in s);
end Sim_MUX;

architecture Behavioral of Sim_MUX is


signal clk : std_logic := '0';
signal X, Y,Z,K,L  : std_logic := '0';
signal cnt :std_logic_vector(4 downto 0):="00000";
   signal XxornYxorZmKvL : std_logic;
begin
clk <= not clk after 5ps;


p1 : entity work.System
      port map(X, Y,Z,K,L, XxornYxorZmKvL);
 process(clk)
begin
       if rising_edge(clk) then
       X<=cnt(0);
       Y<=cnt(1);
       Z<=cnt(2);
       K<=cnt(3);
       L<=cnt(4);
            
        cnt<=cnt+1;
        
       end if;
      
end process;
	
 

end Behavioral;