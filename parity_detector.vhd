----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:07:18 05/01/2024 
-- Design Name: 
-- Module Name:    parity_detector - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity parity_detector is

generic (  n : integer :=7);

port ( input : in std_logic_vector(n downto 0);
		output : out std_logic		
		);
end parity_detector;



architecture Behavioral of parity_detector is

	begin
		process(input)
			variable temp : std_logic;
			begin
			temp:='0';
			
			For i in input'range loop
			temp:= temp	XOR input(i);
			end loop;
			
			output<=temp;
	end process;
end Behavioral;

