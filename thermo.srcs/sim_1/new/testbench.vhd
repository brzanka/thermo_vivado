
entity T_ENT is
end T_ENT;

architecture TEST of T_ENT is
component ENT is
	port (current_temp	: in bit_vector(6 downto 0);
		  desired_temp	: in bit_vector(6 downto 0);
	  	  display_select: in bit;
          cool			: in bit;
          heat			: in bit;
          clk 			: in bit;
	  	  temp_display	: out bit_vector(6 downto 0);
          a_c_on		: out bit;
          furnace_on	: out bit);       
end component;

signal display_select, cool, heat, clk, a_c_on, furnace_on	: bit;
signal current_temp, desired_temp, temp_display				: bit_vector(6 downto 0);

begin
	clk <= not clk after 5 ns;
	DUT: ENT port map (current_temp		=> current_temp, 
    					desired_temp 	=> desired_temp, 
                        display_select 	=> display_select, 
                        cool 			=> cool, 
                        heat 			=> heat, 
                        clk 			=> clk,
                        temp_display 	=> temp_display, 
                        a_c_on 			=> a_c_on, 
                        furnace_on 		=> furnace_on
                        );
	process 
    begin
    	current_temp <= "1110000";
		desired_temp <= "1010000";
		display_select <= '0';
        cool <= '1';
        heat <= '1';
    	wait for 1 ms;
    	display_select <= '1';
    	wait for 1 ms;
    	display_select <= '0';
    	wait for 1 ms;
        wait;
	end process;
   
end TEST;