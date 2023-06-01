----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 11:06:24 AM
-- Design Name: 
-- Module Name: Add_Sub_4_bit_Sim - Behavioral
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

entity Add_Sub_4_bit_Sim is
--  Port ( );
end Add_Sub_4_bit_Sim;

architecture Behavioral of Add_Sub_4_bit_Sim is

component Add_Sub_4_bit
    PORT(
               A : in STD_LOGIC_VECTOR (3 downto 0);
               B : in STD_LOGIC_VECTOR (3 downto 0);
               M : in STD_LOGIC;
               S : out STD_LOGIC_VECTOR (3 downto 0);
               C_out : out STD_LOGIC);
end component;

SIGNAL A,B,S : STD_LOGIC_VECTOR(3 downto 0);
SIGNAL M,C_out : STD_LOGIC;

begin

UUT : Add_Sub_4_bit
    PORT MAP(
        A => A,
        B => B,
        M => M,
        S => S,
        C_out => C_out
    );
    
process 
    begin
        
        A <= "1010";
        B <= "0001";
        M <= '0';
        
        WAIT FOR 200ns;
        M <= '1';
        
        WAIT FOR 200ns;
        B <= "0011";
        M <= '0';
        
        WAIT FOR 200ns;
        M <= '1';
        
end process;

end Behavioral;
