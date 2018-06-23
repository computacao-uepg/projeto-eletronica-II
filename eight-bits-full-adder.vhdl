library IEEE;
use IEEE.std_logic_1164.all;

entity eight_bits_full_adder is  							   -- Declaração da entidade
	port( x, y      : in std_logic_vector(7 downto 0); 	-- Emtradas do somador
			carry_in  : in std_logic;  							-- Vem um
			carry_out : out std_logic;								-- vai um
			result    : out std_logic_vector(7 downto 0)   -- Resultado da soma
		  );
end eight_bits_full_adder;

architecture hardware of eight_bits_full_adder is
	component one_bit_full_adder
		port ( number_one          : in std_logic;
				 number_two          : in std_logic;
				 carry_in_component  : in std_logic;  						
				 carry_out_component : out std_logic; 
				 result_component	   : out std_logic						
				);
	end component;
	
	signal v : std_logic_vector( 7 downto 1 );				-- Sinal interno Cary IN
	
begin
	
	x0: one_bit_full_adder port map ( x(0), y(0), carry_in, result(0), v(1));
	x1: one_bit_full_adder port map ( x(1), y(1), v(1),     result(1), v(2));
	x2: one_bit_full_adder port map ( x(2), y(2), v(2),     result(2), v(3));
	x3: one_bit_full_adder port map ( x(3), y(3), v(3),     result(3), v(4));
	x4: one_bit_full_adder port map ( x(4), y(4), v(4),     result(4), v(5));
	x5: one_bit_full_adder port map ( x(5), y(5), v(5),     result(5), v(6));
	x6: one_bit_full_adder port map ( x(6), y(6), v(6),     result(6), v(7));
	x7: one_bit_full_adder port map ( x(7), y(7), v(7),     result(7), carry_out);
	
end hardware;
		