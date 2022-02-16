----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/15/2022 04:17:15 PM
-- Design Name: 
-- Module Name: d_flip_flop - Behavioral
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
use IEEE.STD_LOGIC_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity d_flip_flop is
	port (
		D     : in std_logic;
		clk   : in std_logic;
		reset : in std_logic;
		Q     : out std_logic);
end d_flip_flop;

architecture Behavioral of d_flip_flop is

begin

	flip : process (clk, reset)
	begin
		if (reset = '1') then
			Q <= '0';
		elsif (rising_edge(clk)) then
			Q <= D;
		end if;
	end process;

end Behavioral;