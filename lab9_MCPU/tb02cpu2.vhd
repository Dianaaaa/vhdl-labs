library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CPU8BIT2 is
    port (  data  : inout   std_logic_vector(7 downto 0);
            adress: out     std_logic_vector(5 downto 0);
            oe    : out     std_logic;
            we    : out     std_logic;
            rst   : in      std_logic;
            clk   : in      std_logic;
            akku_o: out    std_logic_vector(8 downto 0) -- output for debug 
            );
end;

architecture CPU_ARCH of CPU8BIT2 is
    signal    akku  : unsigned(8 downto 0); 
    signal    adreg : unsigned(5 downto 0);   
    signal    pc    : unsigned(5 downto 0); 
    signal    oprand : unsigned(4 downto 0);
    
    signal    states: std_logic_vector(2 downto 0); 
	
	-- lcm function
	function LCM (signal a, b: unsigned) return unsigned is
	variable a1: unsigned(4 downto 0);
	variable b1: unsigned(4 downto 0);
	variable lcm: unsigned(8 downto 0);
	
	variable z: integer range 1 to 31;
	
	begin
		a1 := a;
		b1 := b;
		lcm := to_unsigned((to_integer(a1) * to_integer(b1)), 9);
		
		if (a1 = "00000") then
			return to_unsigned(0, 9);
		elsif (b1 = "00000") then
			return to_unsigned(0, 9);
		end if;
		
		for z in 1 to 30 loop
			if (to_integer(b1) rem z = 0) and (to_integer(a1) rem z = 0) then
				lcm := to_unsigned((to_integer(lcm) / z), 9);
			end if;
		end loop;
		
		return lcm;
	
	end LCM;
	
begin
    process(clk,rst)
    begin
        if (rst = '0') then 
            states  <= "000";
            adreg   <= to_unsigned(0,adreg'length); 
            akku    <= to_unsigned(0, akku'length); 
            pc      <= to_unsigned(0,   pc'length);
            oprand  <= to_unsigned(0, oprand'length); 
        elsif rising_edge(clk) then
            if (states = "000") then 
                adreg   <= unsigned(data(5 downto 0)); 
                oprand  <= unsigned(data(4 downto 0));
                pc      <= adreg + 1;                   
            else    
             
                adreg   <= pc;                          
            end if;

        
            case states is
                when "010" => akku <= unsigned('0'&akku(7 downto 0)) + unsigned('0'&data); 
                                                                             
                when "011" => akku(7 downto 0) <= unsigned(std_logic_vector(akku(7 downto 0)) nor data);   
                when "101" => akku(8) <= '0';                                 
				
				when "100" => akku <= unsigned('0'&akku(7 downto 0)) + unsigned(adreg(4 downto 0)); -- addd a (akku = akku + a)
				when "110" => akku <= lcm(akku(4 downto 0), oprand);  -- lcm a (akku = lcm(akku, a))
                when others => null;                                            
            end case;                        

            
            if (states /= "000") then 
                states <= "000";                        
            elsif (data(7 downto 5) = "110" and akku(8)='1') then 
                states <= "101";                          
            else        
                if data(7 downto 6)="00" then
					states <= "011"; -- nor 00
				elsif data(7 downto 6)="01" then
					states <= "010"; -- add 01
				elsif data(7 downto 6)="10" then
					if data(5) = '0' then
						states <= "001"; -- sta 100
					elsif data(5) = '1' then
						states <= "100"; -- addd 101
					end if;
				elsif data(7 downto 6)="11" then
					if data(5) = '0' then
						states <= "000"; -- jcc 110
					elsif data(5) = '1' then
						states <= "110"; -- lcm 111
					end if;
				end if;    
            end if;    
        end if;
    end process;
    
    adress   <= std_logic_vector(adreg);  
    data     <= "ZZZZZZZZ" when states /= "001" else std_logic_vector(akku(7 downto 0));
    
        
    oe <= '0' when (clk='0' and states /= "001" and rst='1' and states /= "101") else '1';
    we <= '0' when (clk='0' and states  = "001" and rst='1') else '1';              
    
  
    akku_o<=std_logic_vector(akku);
    
end CPU_ARCH;

