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
	signal mem: memory_array := ("10110011", --0
									"11100010", --1
									"10111111", --2
									"11110101", --3
									"11000100", --4
									"00000000", --5
									"00000000", --6
									"00000000", --7
									"00000000", --8
									"00000000", --9
									"00000000", --10
									"00000000", --11
									"00000000", --12
									"00000000", --13
									"00000000", --14
									"00000000", --15
									"00000000", --16
									"00000000", --17
									"00000000", --18
									"00000000", --19
									"00000000", --20
									"00000000", --21
									"00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --22~30
									"00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --31~40
									"00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --41~50
									"00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --51~60
									"00000000", --61
									"00000000", --62
									"00000000"); --63
	
   
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


