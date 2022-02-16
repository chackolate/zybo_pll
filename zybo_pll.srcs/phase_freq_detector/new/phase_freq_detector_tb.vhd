----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/15/2022 05:38:03 PM
-- Design Name: 
-- Module Name: phase_freq_detector_tb - Behavioral
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

entity phase_freq_detector_tb is
	--  Port ( );
end phase_freq_detector_tb;

architecture Behavioral of phase_freq_detector_tb is

	component phase_freq_detector
		port (
			A, B   : in std_logic;
			Qa, Qb : out std_logic);
	end component;

	signal A, B, Qa, Qb   : std_logic;
	constant clk_period_a : time := 3 ns;
	constant clk_period_b : time := 5 ns;

begin

	PFD0 : phase_freq_detector
	port map(
		A  => A,
		B  => B,
		Qa => Qa,
		Qb => Qb
	);

	a_clock : process
	begin
		A <= '1';
		wait for clk_period_a;
		A <= '0';
		wait for clk_period_a;
	end process;

	b_clock : process
	begin
		B <= '1';
		wait for clk_period_b;
		B <= '0';
		wait for clk_period_b;
	end process;

end Behavioral;