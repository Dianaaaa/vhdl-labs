library ieee;
use ieee.std_logic_1164.all;

entity key_pressing_detector is
	port(
		clk: in std_logic;
		col: in std_logic_vector(3 downto 0);
		row: out std_logic_vector(3 downto 0);
		independent_keys: in std_logic_vector(3 downto 0);
		key_id: inout std_logic_vector(19 downto 0)
		);


end key_pressing_detector;

architecture key_pressing_detector_arch of key_pressing_detector is
signal clk_cnt:		integer 	range 0 to 120000	;--12MHz,10ms
signal R_get:		integer 	range 0 to 30 		;
signal LED_get:		integer 	range 0 to 30		;
signal num_cnt:		integer		range 0 to 4 		;
signal apa:	boolean 	:= true 			;
signal key_out: 	std_logic_vector(15 downto 0)	;
signal BTN_cache:	std_logic_vector(3 downto 0)	;
begin

	process(clk)
	begin
	if clk'event and clk = '1' then --10ms·ÖÆµ	
		if clk_cnt = 60000 then
			if num_cnt = 4 then 
				num_cnt <= 0;
			else 
				num_cnt <= num_cnt + 1;
			end if;
			apa <= false;
		elsif clk_cnt = 120000 then
			clk_cnt <= 0;
			apa <= true;
		end if;
		clk_cnt <= clk_cnt + 1;
	end if ;
	end process;

	process(apa)
	begin
	if apa'event and apa = false then
		case num_cnt is
			when 0 => ROW <= "0111";
			when 1 => ROW <= "1011";
			when 2 => ROW <= "1101";
			when 3 => ROW <= "1110";
			when others => ROW <= "1111";
		end case;
	end if;
	end process;


	process(apa)
	begin 
	if apa'event and apa = true then
	
		if num_cnt = 0 then key_out(15 downto 12) <= COL; end if;

		if num_cnt = 1 then key_out(11 downto 8) <= COL; end if;

		if num_cnt = 2 then key_out(7 downto 4) <= COL; end if;

		if num_cnt = 3 then key_out(3 downto 0) <= COL; end if;

		if num_cnt = 4 then
		
			case key_out is
			when "0111111111111111" =>	key_id <= "10000000000000000000";--01
			when "1011111111111111" =>	key_id <= "01000000000000000000";--02
			when "1101111111111111" =>	key_id <= "00100000000000000000";--03
			when "1110111111111111" =>	key_id <= "00010000000000000000";--04
			when "1111011111111111" =>	key_id <= "00001000000000000000";--05
			when "1111101111111111" =>	key_id <= "00000100000000000000";--06
			when "1111110111111111" =>	key_id <= "00000010000000000000";--07
			when "1111111011111111" =>	key_id <= "00000001000000000000";--08
			when "1111111101111111" =>	key_id <= "00000000100000000000";--09
			when "1111111110111111" =>	key_id <= "00000000010000000000";--10
			when "1111111111011111" =>	key_id <= "00000000001000000000";--11
			when "1111111111101111" =>	key_id <= "00000000000100000000";--12
			when "1111111111110111" =>	key_id <= "00000000000010000000";--13
			when "1111111111111011" =>	key_id <= "00000000000001000000";--14
			when "1111111111111101" =>	key_id <= "00000000000000100000";--15
			when "1111111111111110" =>	key_id <= "00000000000000010000";--16
			when others 			=>	key_id <= key_id;--unchanged
			end case;
		end if;

		if BTN_cache /=independent_keys then 
			BTN_cache <= independent_keys;
			LED_get <= 0;
		elsif LED_get = 30 then
			LED_get <= 0;
			--led_four <= BTN_cache;
			case BTN_cache is
			when "0111" => key_id <= "00000000000000001000"; --c1
			when "1011" => key_id <= "00000000000000000100"; --c2
			when "1101" => key_id <= "00000000000000000010"; --c3
			when "1110" => key_id <= "00000000000000000001"; --c4
			when others => key_id <= key_id; --unchanged
			end case;
		else 
			LED_get <= LED_get + 1;
		end if;
			
	end if;
	end process;
end key_pressing_detector_arch;