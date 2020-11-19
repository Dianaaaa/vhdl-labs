-- SRAM����Ϊģ��

use std.textio.all;

Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- ģ���ⲿ�ӿڶ���
entity sram64kx8 is
  generic (rom_data_file_name: string := "sram64kx8.dat");  -- ȱʡ�ĳ�ʼ�������ļ���

  port (ncs1, cs2: in std_logic;                        -- Ƭѡ�ź�(ncs1�ǵ͵�ƽ��Ч��cs2�Ǹߵ�ƽ��Ч) 
        addr     : in std_logic_vector( 15 downto 0 );  -- ��ַ����
        data     : inout std_logic_vector( 7 downto 0 );-- �������ߣ�˫��
        nwe      : in std_logic;                        -- дʹ�ܣ��͵�ƽ��Ч��
        noe      : in std_logic;                        -- ��ʹ�ܣ��͵�ƽ��Ч��
        reset    : in std_logic -- dummy
       );
end sram64kx8;

-- ģ�飨��Ϊ���ṹ����
architecture sram_behaviour of sram64kx8 is
	signal address : integer range 0 to 63;
	type memory_array is                                -- ����RAM�����ݴ洢��������
        array (integer	range 0 to 63) of std_logic_vector( 7 downto 0 );
	signal mem: memory_array := ("00111110", --0
									"00010100", --1
									"01111111", --2
									"10010101", --3
									"00111110", --4
									"01010101", --5
									"01010011", --6
									"11001100", --7
									"10010011", --8
									"01111110", --9
									"11001110", --10
									"11000100", --11
									"10010101", --12
									"11000110", --13
									"01010101", --14
									"00111101", --15
									"10010100", --16
									"11010001", --17
									"11010001", --18
									"00000101", --19
									"00001111", --20
									"00000000", --21
									"00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --22~30
									"00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --31~40
									"00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --41~50
									"00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --51~60
									"00000000", --61
									"11111111", --62
									"00000001"); --63
	
   
begin
	process(ncs1, cs2, nwe, noe, addr, data)
	begin
		if (ncs1 = '0') and (cs2 = '1') then
			address <= to_integer(unsigned(addr));    -- ��ȡ��ַ����ת��������
            
            -- ��д������ע�⣺д�������ȼ����ڶ�������
            if nwe = '0' then
                -- ����д����
                mem( address ) <= data(7 downto 0);  -- �����������ݴ���RAM�ڲ�����
               data <= "ZZZZZZZZ";  -- ������裨�����������ⲿ������
			elsif nwe = '1' then
                if noe = '0' then
                    -- ������
                  data <= mem( address );
               else 
                  data <= "ZZZZZZZZ";
               end if;
            else
               data <= "ZZZZZZZZ";
            end if;
        else
            -- Ƭѡû��ѡ��
            data <= "ZZZZZZZZ";
        end if;
	end process;
		
end sram_behaviour;


