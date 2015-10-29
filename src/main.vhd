
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity main is

    port (
        clk : in STD_LOGIC;
        inst_pins: in STD_LOGIC_VECTOR(31 downto 0)
    );

end main;



architecture Behavioral of main is

    component RegisterFile
        port (
            clk : in STD_LOGIC;
            reg_num : in STD_LOGIC_VECTOR(4 downto 0);
            data : inout STD_LOGIC_VECTOR(7 downto 0);
            command : in STD_LOGIC_VECTOR(2 downto 0)
        );
    end component;


    signal reg_num : STD_LOGIC_VECTOR(4 downto 0);
    signal reg_data: STD_LOGIC_VECTOR(7 downto 0);
    signal reg_command: STD_LOGIC_VECTOR(2 downto 0);

    begin
        register_file: RegisterFile
            port map ( clk, reg_num, reg_data, reg_command );


end Behavioral;

