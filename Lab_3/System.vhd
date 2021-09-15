----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.05.2021 16:36:03
-- Design Name: 
-- Module Name: System - Behavioral
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

entity System is
    Port ( clk : in STD_LOGIC;
           Q : out STD_LOGIC);
         
end System;

architecture Structural of System is
signal I1 : std_logic_vector(3 downto 0):="0000";
signal I2 : std_logic_vector(3 downto 0):="0000";
signal I3 : std_logic_vector(3 downto 0):="0000";
signal I4 : std_logic_vector(3 downto 0):="0000";
signal I5 : std_logic_vector(3 downto 0):="0000";
signal P1 : std_logic_vector(3 downto 0):="0000";
signal P2 : std_logic_vector(3 downto 0):="0000";
signal P3 : std_logic_vector(3 downto 0):="0000";
signal P4 : std_logic_vector(3 downto 0):="0000";
signal P5 : std_logic_vector(3 downto 0):="0000";
signal INPT : std_logic_vector(15 downto 0);
signal syn : std_logic_vector(5 downto 0);
signal OUTP : std_logic;
signal strobe: std_logic_vector(3 downto 0);
component MUX_4to1 is Port ( CNT : in std_logic_vector(3 downto 0);
			--  strobe : in STD_LOGIC;
           I : in std_logic_vector(15 downto 0);
           O1 : out STD_LOGIC);
           end component;
           component MUX_2to1 is
    Port ( clk: in STD_LOGIC;
			  Inp : in std_logic_vector(3 downto 0);	
           Q : inout std_logic_vector(3 downto 0);
			  syn : out STD_LOGIC:='0');
end component;
component Pare is 
Port ( Input : in std_logic_vector(3 downto 0);	
           Q : out std_logic_vector(3 downto 0) );
           end component;
begin
--"0100"
--Pare_1 : Pare port map (Input=>I1,Q=>P1); 
IN1 : MUX_2to1 port map (clk=>clk,Inp=>P1,Q=>I1,syn=>syn(1));

IN2 : MUX_2to1 port map (clk=>syn(1),Inp=>P2,Q=>I2,syn=>syn(2));
--Pare_2 : Pare port map (Input=>I2,Q=>P2);
IN3 : MUX_2to1 port map (clk=>syn(2),Inp=>P3,Q=>I3,syn=>syn(3));
--Pare_3 : Pare port map (Input=>I3,Q=>P3);
IN4 : MUX_2to1 port map (clk=>syn(3),Inp=>P4,Q=>I4,syn=>syn(4));
--Pare_4 : Pare port map (Input=>I4,Q=>P4);
IN5 : MUX_2to1 port map (clk=>syn(4),Inp=>P5,Q=>I5,syn=>syn(5));
--Pare_5 : Pare port map (Input=>I5,Q=>P5);
--STR : MUX_2to1 port map (clk=>syn(5),Inp=>strobe,Q=>strobe,syn=>syn(6))
--I1 - контрольный сигнал
process (I2,I3,I4,I5)
begin
INPT(0)<=I2(0);
INPT(1)<=I2(1);
INPT(2)<=I2(2);
INPT(3)<=I2(3);
INPT(4)<=I3(0);
INPT(5)<=I3(1);
INPT(6)<=I3(2);
INPT(7)<=I3(3);
INPT(8)<=I4(0);
INPT(9)<=I4(1);
INPT(10)<=I4(2);
INPT(11)<=I4(3);
INPT(12)<=I5(0);
INPT(13)<=I5(1);
INPT(14)<=I5(2);
INPT(15)<=I5(3);
end process;

scheme : MUX_4to1 port map (CNT=>I1,I=>INPT, O1=>OUTP);
Q<=OUTP;


end Structural;