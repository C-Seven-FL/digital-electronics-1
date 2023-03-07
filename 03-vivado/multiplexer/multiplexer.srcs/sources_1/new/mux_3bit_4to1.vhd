----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2023 02:08:29 PM
-- Design Name: 
-- Module Name: mux_3bit_4to1 - Behavioral
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

entity mux_3bit_4to1 is
  port (
     a : in std_logic_vector(3 downto 0);
     b : in std_logic_vector(3 downto 0);
     c : in std_logic_vector(3 downto 0);
     d : in std_logic_vector(3 downto 0);
     f : out std_logic
  );
end entity mux_3bit_4to1;

architecture behavioral of mux_3bit_4to1 is

begin

  f_o <= a_i when (addr_i = "000" and en_i = '1') else
       b_i when (addr_i = "001" and en_i = '1') else
       c_i when (addr_i = "010" and en_i = '1') else
       d_i;                 -- All other combinations
       
end architecture Behavioral;
