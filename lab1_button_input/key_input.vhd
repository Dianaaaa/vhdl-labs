library ieee;
use ieee.std_logic_1164.all;

entity Key_Input is
	port
	(
		row: out std_logic_vector(3 downto 0);
		COL: in std_logic_vector(3 downto 0);
		independent_keys: in std_logic_vector(3 downto 0);
		seg1: inout std_logic_vector(6 downto 0);
		seg2: inout std_logic_vector(7 downto 0);
		clk: in std_logic
	);
end Key_Input;

architecture Key_Input_Arch of Key_Input is
constant cnt_200hz: integer := 60000;
constant cnt_200hz_t: integer := 120000;
signal clk_cnt: integer range 0 to 120000;
signal row_cnt: integer range 0 to 4;
signal state: integer range 0 to 3 := 0;
signal key: std_logic_vector(15 downto 0);
signal key_r: std_logic_vector(15 downto 0);
signal key_out: std_logic_vector(15 downto 0);
signal key_out_r: std_logic_vector(15 downto 0);
signal key_pulse: std_logic_vector(15 downto 0);
signal clk_200hz: std_logic := '1';

signal ind_keys: std_logic_vector(3 downto 0);
signal ind_keys_r: std_logic_vector(3 downto 0);
signal key_pulse2: std_logic_vector(3 downto 0);


begin
	process(clk)
	begin
	if clk'event and clk = '1' then
		if clk_cnt = cnt_200hz then
			clk_200hz <= '0';
			
		elsif clk_cnt = cnt_200hz_t then
			clk_200hz <= '1';
			clk_cnt <= 0;
		end if;
		clk_cnt <= clk_cnt + 1;
	end if;
	end process;
	
	process(clk_200hz)
	begin
	if clk_200hz'event and clk_200hz = '1' then
		case state is
			when 0 => state <= 1; row <= "0111"; 
			when 1 => state <= 2; row <= "1011";
			when 2 => state <= 3; row <= "1101";
			when 3 => state <= 0; row <= "1110";
		end case;
		key_out_r <= key_out;
		ind_keys_r <= ind_keys;
	elsif clk_200hz'event and clk_200hz = '0' then
		if state = 0 then key_out(15 downto 12) <= COL; end if;
		if state = 1 then key_out(11 downto 8) <= COL; end if;
		if state = 2 then key_out(7 downto 4) <= COL; end if;
		if state = 3 then key_out(3 downto 0) <= COL; end if;
		
		ind_keys <= independent_keys;
		
		key_pulse <= (key_out_r and (not key_out));
		key_pulse2 <= (ind_keys_r and (not ind_keys));
	end if;
	end process;
	
	
	process(clk)
	begin
	if clk'event and clk='1' then
		case key_pulse is
			when "1000000000000000" => seg1 <= "1111110"; seg2 <= "01100000"; --1
			when "0100000000000000" => seg1 <= "1111110"; seg2 <= "11011010"; --2
			when "0010000000000000" => seg1 <= "1111110"; seg2 <= "11110010"; --3
			when "0001000000000000" => seg1 <= "1111110"; seg2 <= "01100110"; --4
			when "0000100000000000" => seg1 <= "1111110"; seg2 <= "10110110"; --5
			when "0000010000000000" => seg1 <= "1111110"; seg2 <= "10111110"; --6
			when "0000001000000000" => seg1 <= "1111110"; seg2 <= "11100000"; --7
			when "0000000100000000" => seg1 <= "1111110"; seg2 <= "11111110"; --8
			when "0000000010000000" => seg1 <= "1111110"; seg2 <= "11110110"; --9
			when "0000000001000000" => seg1 <= "0110000"; seg2 <= "11111100"; --10
			when "0000000000100000" => seg1 <= "0110000"; seg2 <= "01100000"; --11
			when "0000000000010000" => seg1 <= "0110000"; seg2 <= "11011010"; --12
			when "0000000000001000" => seg1 <= "0110000"; seg2 <= "11110010"; --13
			when "0000000000000100" => seg1 <= "0110000"; seg2 <= "01100110"; --14
			when "0000000000000010" => seg1 <= "0110000"; seg2 <= "10110110"; --15
			when "0000000000000001" => seg1 <= "0110000"; seg2 <= "10111110"; --16
			when others => seg1 <= seg1; seg2 <= seg2;
		end case;
		
		case key_pulse2 is 
			when "1000" => seg1 <= "1111110"; seg2 <= "01100001"; --1
			when "0100" => seg1 <= "1111110"; seg2 <= "11011011"; --2
			when "0010" => seg1 <= "1111110"; seg2 <= "11110011"; --3
			when "0001" => seg1 <= "1111110"; seg2 <= "01100111"; --4
			when others => seg1 <= seg1; seg2 <= seg2;
		end case;
	end if;
	end process;
	
end Key_Input_Arch;
	
	
	
		
			
		
	
	

		
		