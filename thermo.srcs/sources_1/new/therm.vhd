
entity ENT is
	port (current_temp	: in bit_vector(6 downto 0);
		  desired_temp	: in bit_vector(6 downto 0);
	  	  display_select: in bit;
          cool			: in bit;
          heat			: in bit;
          clk 			: in bit;
	  	  temp_display	: out bit_vector(6 downto 0);
          a_c_on		: out bit;
          furnace_on	: out bit
          );     
end ENT;

architecture ARCH of ENT is

signal display_select_reg, cool_reg, heat_reg, a_c_on_reg, furnace_on_reg	: bit;
signal current_temp_reg, desired_temp_reg, temp_display_reg					: bit_vector(6 downto 0); 

begin 
	ClockRegistering: process (clk) is
    begin
    	if clk'event and clk = '1' then
        	display_select_reg	<= display_select;
            cool_reg			<= cool;
            heat_reg			<= heat;
            current_temp_reg	<= current_temp;
            desired_temp_reg	<= desired_temp;
            a_c_on	 			<= a_c_on_reg;
            furnace_on			<= furnace_on_reg;
            temp_display		<= temp_display_reg;
        end if;
    end process ClockRegistering;
    
	Display: process (current_temp_reg, desired_temp_reg, display_select_reg, display_select_reg) is
	begin
        	if display_select_reg = '0' then
				temp_display_reg <= desired_temp_reg;
			else
				temp_display_reg <= current_temp_reg;
			end if;
	end process Display;

	CoolHeat: process (current_temp_reg, desired_temp_reg, cool_reg, heat_reg) is
	begin
		a_c_on_reg <= '0';
		furnace_on_reg <= '0';
			if (desired_temp_reg < current_temp_reg) and cool_reg = '1' then
				a_c_on_reg <= '1';
			elsif (desired_temp_reg > current_temp_reg) and heat_reg = '1' then
				furnace_on_reg <= '1';
			end if;
	end process CoolHeat;

end ARCH;