library ieee;
use ieee.std_logic_1164.all;

entity segment_led_decoder is 
	port (
		key_id: in std_logic_vector (19 downto 0);
		seg1: inout std_logic_vector (6 downto 0);
		seg2: inout std_logic_vector (6 downto 0)
		);
end segment_led_decoder;

architecture seg_led_decoder_arch of segment_led_decoder is
begin
	process(key_id)
	begin
		case key_id is
		when "10000000000000000000" => seg1 <= "1111110"; seg2 <= "0110000"; --01
		when "01000000000000000000" => seg1 <= "1111110"; seg2 <= "1101101"; --02
		when "00100000000000000000" => seg1 <= "1111110"; seg2 <= "1111001"; --03
		when "00010000000000000000" => seg1 <= "1111110"; seg2 <= "0110011"; --04
		when "00001000000000000000" => seg1 <= "1111110"; seg2 <= "1011011"; --05
		when "00000100000000000000" => seg1 <= "1111110"; seg2 <= "1011111"; --06
		when "00000010000000000000" => seg1 <= "1111110"; seg2 <= "1110000"; --07
		when "00000001000000000000" => seg1 <= "1111110"; seg2 <= "1111111"; --08
		when "00000000100000000000" => seg1 <= "1111110"; seg2 <= "1111011"; --09
		when "00000000010000000000" => seg1 <= "0110000"; seg2 <= "1111110"; --10
		when "00000000001000000000" => seg1 <= "0110000"; seg2 <= "0110000"; --11
		when "00000000000100000000" => seg1 <= "0110000"; seg2 <= "1101101"; --12
		when "00000000000010000000" => seg1 <= "0110000"; seg2 <= "1111001"; --13
		when "00000000000001000000" => seg1 <= "0110000"; seg2 <= "0110011"; --14
		when "00000000000000100000" => seg1 <= "0110000"; seg2 <= "1011011"; --15
		when "00000000000000010000" => seg1 <= "0110000"; seg2 <= "1011111"; --16
		when "00000000000000001000" => seg1 <= "1110111"; seg2 <= "0110000"; --A1
		when "00000000000000000100" => seg1 <= "1110111"; seg2 <= "1101101"; --A2
		when "00000000000000000010" => seg1 <= "1110111"; seg2 <= "1111001"; --A3
		when "00000000000000000001" => seg1 <= "1110111"; seg2 <= "0110011"; --A4
		when others => seg1 <= seg1; seg2 <= seg2;
		end case;
	end process;

end seg_led_decoder_arch;