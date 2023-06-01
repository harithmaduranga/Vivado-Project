----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/30/2023 11:23:22 PM
-- Design Name: 
-- Module Name: Mux_2_way_3_bit_sim - Behavioral
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

entity Mux_2_way_3_bit_sim is
--  Port ( );
end Mux_2_way_3_bit_sim;

architecture Behavioral of Mux_2_way_3_bit_sim is

component Mux_2_way_3_bit
    PORT(
               En : in STD_LOGIC;
               A1 : in STD_LOGIC_VECTOR (2 downto 0);
               A2 : in STD_LOGIC_VECTOR (2 downto 0);
               S : in STD_LOGIC;
               Y : out STD_LOGIC_VECTOR (2 downto 0)
               );
end component;

SIGNAL En, S : STD_LOGIC;
SIGNAL A1, A2, Y: STD_LOGIC_VECTOR(2 downto 0);

begin

UUT : Mux_2_way_3_bit
    PORT MAP(
        En => En,
        S => S,
        A1 => A1,
        A2 => A2,
        Y => Y
    );
    
process
    begin 
    
        En <= '1';
        
        A1 <= "101";
        A2 <= "010";
        
        S <= '1';
        
        WAIT FOR 200ns;
        
        S <= '0';
        
        WAIT FOR 200ns;
        
end process;

end Behavioral;
