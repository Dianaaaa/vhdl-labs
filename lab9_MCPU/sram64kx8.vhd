-- SRAM的行为模型

use std.textio.all;

Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- 模块外部接口定义
entity sram64kx8 is
  generic (rom_data_file_name: string := "sram64kx8.dat");  -- 缺省的初始化数据文件名

  port (ncs1, cs2: in std_logic;                        -- 片选信号(ncs1是低电平有效，cs2是高电平有效) 
        addr     : in std_logic_vector( 15 downto 0 );  -- 地址总线
        data     : inout std_logic_vector( 7 downto 0 );-- 数据总线（双向）
        nwe      : in std_logic;                        -- 写使能（低电平有效）
        noe      : in std_logic;                        -- 读使能（低电平有效）
        reset    : in std_logic -- dummy
       );
end sram64kx8;

-- 模块（行为）结构定义
architecture sram_behaviour of sram64kx8 is
	signal address : integer range 0 to 63;
	type memory_array is                                -- 定义RAM的数据存储数组类型
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
			address <= to_integer(unsigned(addr));    -- 获取地址，并转换成整数
            
            -- 读写操作（注意：写操作优先级高于读操作）
            if nwe = '0' then
                -- 处理写命令
                mem( address ) <= data(7 downto 0);  -- 数据总线内容存入RAM内部数组
               data <= "ZZZZZZZZ";  -- 输出高阻（数据总线由外部驱动）
			elsif nwe = '1' then
                if noe = '0' then
                    -- 读操作
                  data <= mem( address );
               else 
                  data <= "ZZZZZZZZ";
               end if;
            else
               data <= "ZZZZZZZZ";
            end if;
        else
            -- 片选没有选中
            data <= "ZZZZZZZZ";
        end if;
	end process;
		
end sram_behaviour;


