library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity System is
    Port ( X : in STD_LOGIC;
           Y : in std_logic;
           Z : in STD_LOGIC;
           K : in std_logic;
           L : in STD_LOGIC;
           Switch_T5 : in std_logic; 
	         Switch_T5 : in std_logic;
	         out_U18 : out std_logic;
          -- clk: in std_logic;
           XxornYxorZmKvL : out STD_LOGIC);
         
end System;

architecture Structural of System is
signal nY,XxnY,ZmK,ZmKvL,XxnYxZmKvL, inY, outer : std_logic;
component MUX_4to1 is Port ( cntr_1 : in STD_LOGIC;
           cntr_2 : in STD_LOGIC;
           I1:in std_logic;
            I2:in std_logic;
             I3:in std_logic;
              I4:in std_logic;
           O1 : out STD_LOGIC);
           end component;
           component MUX_2to1 is
    Port ( cntr_1 : in STD_LOGIC;
           I1 : in STD_LOGIC;
           I2 : in std_logic;
           O1 : out STD_LOGIC);
end component;
begin

inY<=Y when Switch_T5=‘0’ else
not Y when Switch_T5=‘1’;

outer<=‘0’ when Switch_E4=‘0’ else
not XxnYxZmKvL when Switch_E4=‘1’;

out_U18<=outer;
notY : MUX_2to1 port map (cntr_1=>inY,I1=>'1',I2=>'0',O1=>nY);
XxnotY : MUX_4to1 port map (cntr_1=>nY,cntr_2=>X,I1=>'0',I2=>'1',I3=>'1',I4=>'0',O1=>XxnY);
ZmulK : MUX_4to1 port map (cntr_1=>Z,cntr_2=>K,I1=>'0',I2=>'0',I3=>'0',I4=>'1',O1=>ZmK);
ZmulKvL : MUX_4to1 port map (cntr_1=>ZmK,cntr_2=>L,I1=>'0',I2=>'1',I3=>'1',I4=>'1',O1=>ZmKvL);
XxnotYxZmulKvL : MUX_4to1 port map (cntr_1=>XxnY,cntr_2=>ZmKvL,I1=>'0',I2=>'1',I3=>'1',I4=>'0',O1=>XxnYxZmKvL);
XxornYxorZmKvL<=XxnYxZmKvL;


end Structural;
