library IEEE;
use IEEE.std_logic_1164.all;

entity one_bit_full_adder is
	port( number_one          : in std_logic;
	      number_two			  : in std_logic;	
			carry_in_component  : in std_logic;
			carry_out_component : out std_logic;
			result_component	  : out std_logic
		);
end one_bit_full_adder;

architecture adder of one_bit_full_adder is

begin
		
	 result_component    <= number_one xor number_two xor carry_in_component;
	 carry_out_component <= (number_one and number_two) 
									or 
									(number_two and carry_in_component) 
									or 
									(number_two and carry_in_component); 
end adder;