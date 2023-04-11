----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/11/2023 01:33:11 PM
-- Design Name: 
-- Module Name: baud - Behavioral
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

entity baud is

    Port ( clk : in STD_LOGIC;
           baud_sw : in STD_LOGIC_VECTOR(2 downto 0);
           baud_gen : out INTEGER
           );
end baud;

architecture behavioral of baud is
   
begin

    baud_solve : process(clk) is
    begin
        case baud_sw is
            when "000" =>
                baud_gen <= 4800;
            when "001" =>
                baud_gen <= 9600;
            when "010" =>
                baud_gen <= 14400;
            when "011" =>
                baud_gen <= 19200;
            when "100" =>
                baud_gen <= 28800;
            when "101" =>
                baud_gen <= 38400;
            when "110" =>
                baud_gen <= 57600;
            when "111" =>
                baud_gen <= 115200;
            end case;
     end process baud_solve;
        
end Behavioral;
