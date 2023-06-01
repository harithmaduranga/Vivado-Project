----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 09:23:55 AM
-- Design Name: 
-- Module Name: Mux_8_way_4_bit_Sim - Behavioral
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

entity Mux_8_way_4_bit_Sim is
--  Port ( );
end Mux_8_way_4_bit_Sim;

architecture Behavioral of Mux_8_way_4_bit_Sim is

component Mux_8_way_4_bit
    PORT(
               En : in STD_LOGIC;
               A1 : in STD_LOGIC_VECTOR (3 downto 0);
               A2 : in STD_LOGIC_VECTOR (3 downto 0);
               A3 : in STD_LOGIC_VECTOR (3 downto 0);
               A4 : in STD_LOGIC_VECTOR (3 downto 0);
               A5 : in STD_LOGIC_VECTOR (3 downto 0);
               A6 : in STD_LOGIC_VECTOR (3 downto 0);
               A7 : in STD_LOGIC_VECTOR (3 downto 0);
               A8 : in STD_LOGIC_VECTOR (3 downto 0);
               S : in STD_LOGIC_VECTOR(2 downto 0);
               Y : out STD_LOGIC_VECTOR (3 downto 0)
               );
end component;

SIGNAL En : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(2 downto 0);
SIGNAL A1, A2, A3, A4, A5, A6, A7, A8, Y: STD_LOGIC_VECTOR(3 downto 0);

begin

UUT : Mux_8_way_4_bit
    PORT MAP(
        En => En,
        S => S,
        A1 => A1,
        A2 => A2,
        A3 => A3,
        A4 => A4,
        A5 => A5,
        A6 => A6,
        A7 => A7,
        A8 => A8,
        Y => Y
    );


process
    begin

        En <= '1';
        
        A1 <= "1000";
        A2 <= "1001";
        A3 <= "1010";
        A4 <= "1011";
        A5 <= "1100";
        A6 <= "1101";
        A7 <= "1110";
        A8 <= "1111";
        
        S <= "010";
        
        WAIT FOR 200ns;
        
        S <= "100";
        
        WAIT FOR 200ns;
        
         S <= "110";
         
         WAIT FOR 200ns;
         
         S <= "001";
         
         WAIT FOR 200ns;
        
end process;

end Behavioral;
