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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Sim_MUX is
 -- Port ();
end Sim_MUX;

architecture Behavioral of Sim_MUX is
signal X, Y,Z,K,L  : std_logic := '0';
   signal XxornYxorZmKvL : std_logic;
begin
p1 : entity work.System
      port map(X, Y,Z,K,L, XxornYxorZmKvL);
 process
   begin
      wait for 5 ps;
      X <= not X;
   end process;
	
   process
   begin
      wait for 10 ps;
      Y <= not Y;
   end process;
	
   process
   begin
      wait for 20 ps;
      Z <= not Z;
   end process;
	
   process
   begin
      wait for 40 ps;
      K <= not K;
   end process;
	
   process
   begin
      wait for 80 ps;
      L <= not L;
   end process;
	
 

end Behavioral;
