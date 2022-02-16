----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/15/2022 03:59:12 PM
-- Design Name: 
-- Module Name: phase_freq_detector - Behavioral
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

entity phase_freq_detector is
	port (
		A, B   : in std_logic;
		Qa, Qb : out std_logic);
end phase_freq_detector;

architecture Behavioral of phase_freq_detector is

	component d_flip_flop
		port (
			D     : in std_logic;
			clk   : in std_logic;
			reset : in std_logic;
			Q     : out std_logic);
	end component;

	signal reset    : std_logic;
	signal A_o, B_o : std_logic;

begin

	DFF0 : d_flip_flop
	port map(
		D     => '1',
		clk   => A,
		reset => reset,
		Q     => A_o
	);

	DFF1 : d_flip_flop
	port map(
		D     => '1',
		clk   => B,
		reset => reset,
		Q     => B_o
	);

	reset <= A_o and B_o;
	Qa    <= A_o;
	Qb    <= B_o;

end Behavioral;