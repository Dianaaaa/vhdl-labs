library ieee;
use ieee.std_logic_1164.all;
---------------------------------------------------------------
entity Key_Input is 
    port
    (
      	row :		out std_logic_vector(3 downto 0);
      	col :		in 	std_logic_vector(3 downto 0);
		independent_keys:in 	std_logic_vector(3 downto 0);
		seg1 :	inout std_logic_vector(6 downto 0);
		seg2 :  inout std_logic_vector(6 downto 0);
		clk	:		in 	std_logic
    );
end Key_Input;
----------------------------------------------------------------
architecture Key_Input_arch of Key_Input is
component segment_led_decoder is 
	port (
		key_id: in std_logic_vector (19 downto 0);
		seg1: inout std_logic_vector (6 downto 0);
		seg2: inout std_logic_vector (6 downto 0)
		);
end component;

component key_pressing_detector is
	port(
		clk: in std_logic;
		col: in std_logic_vector(3 downto 0);
		row: out std_logic_vector(3 downto 0);
		independent_keys: in std_logic_vector(3 downto 0);
		key_id: inout std_logic_vector(19 downto 0)
		);


end component;

signal key_id: std_logic_vector(19 downto 0);

begin
	detector: key_pressing_detector port map(clk => clk, col => col, row => row, independent_keys => independent_keys, key_id => key_id);
	decoder: segment_led_decoder port map(key_id => key_id, seg1 => seg1, seg2 => seg2);

end	Key_Input_arch;