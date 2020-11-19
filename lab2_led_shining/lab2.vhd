library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity PWM is        
port(
     rst_n:in std_logic; -- key for reset
     clk:in std_logic; 
     key_menu: in std_logic;----key to change mode
     key_up: in std_logic;------key to change duty or cycle
     key_down: in std_logic;------key to change duty or cycle
     menu_state: buffer std_logic;
	 a_to_g :	inout std_logic_vector(6 downto 0);
	 seg :		out std_logic;
     pulse_out:buffer std_logic;----connect to LED to get the breathing condition
     display:out std_logic
);
end entity PWM;

architecture behavior of PWM is

signal clk0:std_logic;    --分频时钟
signal cnt1:integer range 0 to 80000;   --锯齿�
signal cnt2:integer range 0 to 80000;   --三角�
signal cycle_pulse:integer range 0 to 3;
signal duty_pulse:integer range 0 to 3;
signal cycle:integer range 0 to 80000;
signal dt: integer;     --控制占空比的改变
signal key_menu1: std_logic;   --切换周期或占空比
signal key_up1:std_logic; 
signal key_down1:std_logic;
signal key_up1_ls:std_logic;
signal key_down1_ls:std_logic;

----消抖模块的调�
component CycleSampler
 port(
	clk: in std_logic;
	btnstate: in std_logic;
	keystate: out std_logic
	);
end component CycleSampler;

begin
P1:CycleSampler port map(clk,key_menu,key_menu1);
P2:CycleSampler port map(clk,key_up,key_up1);
P3:CycleSampler port map(clk,key_down,key_down1);

-----分频，将12MHz分频�0kHz
process(clk)
variable count0: integer range 0 to 200;
begin
    if(clk'event and clk='1') then
        if (count0=200) then
	        clk0 <= not clk0;
		    count0:=0;
		    else count0:=count0+1;
		 end if;
	 end if;
end process;
		 		 
----为了之后同时在一个process中检测两个信号的边沿
process(clk)
begin
    if(clk'event and clk='1') then
    key_up1_ls <= key_up1;
	key_down1_ls <= key_down1;
	end if;
end process;

---锯齿形脉冲cnt1的产�
process(clk0,rst_n,duty_pulse,cycle_pulse)
begin 
case duty_pulse is
	       when 0 => dt<=0;
	       when 1 => dt<=10;
	       when 2 => dt<=20;
	       when 3 => dt<=820;
end case; 
    if(rst_n='0') then
	    cnt1<=0;
	elsif(clk0'event and clk0='1') then
	   if(cnt1>=(cycle-dt) and (cnt1<cycle)) then  cnt1<=cycle;
	   elsif(cnt1=cycle) then  cnt1<=0;
	   else cnt1<=cnt1+dt;
	   end if;
	 end if;
end process;

-----三角脉冲cnt2的产�
process(clk0,rst_n,cycle_pulse)
variable direction: std_logic;
begin
case cycle_pulse is
        when 0 => cycle<=10000;
		when 1 => cycle<=20000;
		when 2 => cycle<=40000;
		when 3 => cycle<=80000;
end case;
    if(rst_n='0') then
		cnt2<=0;
	elsif(clk0'event and clk0='1') then
	    if (direction='0') then
		    if (cnt2>=(cycle-1)) then cnt2<=cycle; direction:='1';
			else cnt2<=cnt2+1;
			end if;
		end if;
		if(direction='1') then
		    if(cnt2=1) then cnt2<=0; direction:='0';
			else cnt2<= cnt2-1;
			end if;
		end if;
	end if;
end process;

---cnt1&cnt2的比�
process(cnt1,cnt2,clk0)
begin
    if(clk0'event and clk0='0') then
	    if (cnt1>cnt2) then
		    pulse_out<='0';
		else pulse_out<='1';
	    end if;
		display<=pulse_out;
	end if;
end process;

----按下key_menu键，对于menu_state进行切换，对于模式进行更�
process(key_menu1,rst_n)
begin
    if(rst_n='0') then
	    menu_state<='0';
		a_to_g <= "1001110"; seg <= '0';--c
	elsif(key_menu1'event and key_menu1='1') then
	    menu_state<=not menu_state;
		if (menu_state='1') then
			a_to_g <= "1001110"; seg <= '0';--c
		elsif (menu_state='0') then
			a_to_g <= "0111101"; seg <= '0';--d
		end if;
	end if;
end process;

-----按下reset的按键，将其还原至零状态；在按下key_up和key_down的时候对于cycle和dt进行修改
process(clk,rst_n)
begin
	if(rst_n='0') then
	    duty_pulse<=0;
		cycle_pulse<=0;
	elsif(rising_edge(clk)) then 
	 if(menu_state='0') then
	    if(key_up1_ls='1' and key_up1='0') then
		    if(cycle_pulse<3) then 
			    cycle_pulse<=cycle_pulse+1;
			end if;
		end if;
		if(key_down1_ls='1' and key_down1='0') then
		    if(cycle_pulse>0) then
			    cycle_pulse<=cycle_pulse-1;
			end if;
		end if;
	end if;
	
		if(menu_state='1') then
	   if(key_up1_ls='1' and key_up1='0') then
	       if(duty_pulse<3) then
		       duty_pulse<=duty_pulse+1;
		    end if;
		end if;
		if(key_down1_ls='1' and key_down1='0')then
		    if(duty_pulse>0) then
			    duty_pulse<=duty_pulse-1;
			end if;
		end if;
	end if;
  end if;
end process;

end architecture behavior;


	    

	    
	    

    
	    

			



		
	
 


