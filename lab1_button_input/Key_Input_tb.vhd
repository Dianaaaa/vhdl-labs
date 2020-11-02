
-- VHDL Test Bench Created from source file Key_Input.vhd -- Mon Nov 02 18:08:10 2020

--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Lattice recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "source->import"
-- menu in the ispLEVER Project Navigator to import the testbench.
-- Then edit the user defined section below, adding code to generate the 
-- stimulus for your design.
-- 3) VHDL simulations will produce errors if there are Lattice FPGA library 
-- elements in your design that require the instantiation of GSR, PUR, and
-- TSALL and they are not present in the testbench. For more information see
-- the How To section of online help.  
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE behavior OF testbench IS 

	COMPONENT Key_Input
	PORT(
		col : IN std_logic_vector(3 downto 0);
		independent_keys : IN std_logic_vector(3 downto 0);
		clk : IN std_logic;    
		seg1 : INOUT std_logic_vector(6 downto 0);
		seg2 : INOUT std_logic_vector(7 downto 0);      
		row : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	SIGNAL row :  std_logic_vector(3 downto 0);
	SIGNAL col :  std_logic_vector(3 downto 0);
	SIGNAL independent_keys :  std_logic_vector(3 downto 0);
	SIGNAL seg1 :  std_logic_vector(6 downto 0);
	SIGNAL seg2 :  std_logic_vector(7 downto 0);
	SIGNAL clk :  std_logic;

BEGIN

-- Please check and add your generic clause manually
	uut: Key_Input PORT MAP(
		row => row,
		col => col,
		independent_keys => independent_keys,
		seg1 => seg1,
		seg2 => seg2,
		clk => clk
	);


-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      wait; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
