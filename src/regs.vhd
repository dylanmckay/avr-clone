
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--- The AVR register file.
---
--- Reading and writing is guaranteed to take a single cycle.
entity RegisterFile is

    port (
        --- The system clock
        clk: in STD_LOGIC;
        --- The register number to access
        reg_num : in STD_LOGIC_VECTOR(4 downto 0);
        --- The data to write or read
        data: inout STD_LOGIC_VECTOR(7 downto 0);
        --- The command (0 for nothing, 1 for read, 2 for write)
        --- TODO: is nop command really necessary
        command: in STD_LOGIC_VECTOR(2 downto 0)
	 );
end RegisterFile;

architecture Behavioral of RegisterFile is

    --- Register file.
    signal R0  : STD_LOGIC_VECTOR(7 downto 0);
    signal R1  : STD_LOGIC_VECTOR(7 downto 0);
    signal R2  : STD_LOGIC_VECTOR(7 downto 0);
    signal R3  : STD_LOGIC_VECTOR(7 downto 0);
    signal R4  : STD_LOGIC_VECTOR(7 downto 0);
    signal R5  : STD_LOGIC_VECTOR(7 downto 0);
    signal R6  : STD_LOGIC_VECTOR(7 downto 0);
    signal R7  : STD_LOGIC_VECTOR(7 downto 0);
    signal R8  : STD_LOGIC_VECTOR(7 downto 0);
    signal R9  : STD_LOGIC_VECTOR(7 downto 0);
    signal R10 : STD_LOGIC_VECTOR(7 downto 0);
    signal R11 : STD_LOGIC_VECTOR(7 downto 0);
    signal R12 : STD_LOGIC_VECTOR(7 downto 0);
    signal R13 : STD_LOGIC_VECTOR(7 downto 0);
    signal R14 : STD_LOGIC_VECTOR(7 downto 0);
    signal R15 : STD_LOGIC_VECTOR(7 downto 0);
    signal R16 : STD_LOGIC_VECTOR(7 downto 0);
    signal R17 : STD_LOGIC_VECTOR(7 downto 0);
    signal R18 : STD_LOGIC_VECTOR(7 downto 0);
    signal R19 : STD_LOGIC_VECTOR(7 downto 0);
    signal R20 : STD_LOGIC_VECTOR(7 downto 0);
    signal R21 : STD_LOGIC_VECTOR(7 downto 0);
    signal R22 : STD_LOGIC_VECTOR(7 downto 0);
    signal R23 : STD_LOGIC_VECTOR(7 downto 0);
    signal R24 : STD_LOGIC_VECTOR(7 downto 0);
    signal R25 : STD_LOGIC_VECTOR(7 downto 0);
    signal R26 : STD_LOGIC_VECTOR(7 downto 0);
    signal R27 : STD_LOGIC_VECTOR(7 downto 0);
    signal R28 : STD_LOGIC_VECTOR(7 downto 0);
    signal R29 : STD_LOGIC_VECTOR(7 downto 0);
    signal R30 : STD_LOGIC_VECTOR(7 downto 0);
    signal R31 : STD_LOGIC_VECTOR(7 downto 0);
    signal SP  : STD_LOGIC_VECTOR(7 downto 0);
begin

    tick: process(clk)
    begin

        --- Only do something when the clock ticks
        --- and we have a command
        if rising_edge(clk) then
            -- Read register
            if unsigned(command) = 1 then
                case to_integer(unsigned(reg_num)) is
                    when 0 => data <= R0;
                    when 1 => data <= R1;
                    when 2 => data <= R2;
                    when 3 => data <= R3;
                    when 4 => data <= R4;
                    when 5 => data <= R5;
                    when 6 => data <= R6;
                    when 7 => data <= R7;
                    when 8 => data <= R8;
                    when 9 => data <= R9;
                    when 10 => data <= R10;
                    when 11 => data <= R11;
                    when 12 => data <= R12;
                    when 13 => data <= R13;
                    when 14 => data <= R14;
                    when 15 => data <= R15;
                    when 16 => data <= R16;
                    when 17 => data <= R17;
                    when 18 => data <= R18;
                    when 19 => data <= R19;
                    when 20 => data <= R20;
                    when 21 => data <= R21;
                    when 22 => data <= R22;
                    when 23 => data <= R23;
                    when 24 => data <= R24;
                    when 25 => data <= R25;
                    when 26 => data <= R26;
                    when 27 => data <= R27;
                    when 28 => data <= R28;
                    when 29 => data <= R29;
                    when 30 => data <= R30;
                    when 31 => data <= R31;
                    when others => null;
                end case;
            --- Write register
            elsif unsigned(command) = 2 then
                case to_integer(unsigned(reg_num)) is
                    when 0 => R0 <= data;
                    when 1 => R1 <= data;
                    when 2 => R2 <= data;
                    when 3 => R3 <= data;
                    when 4 => R4 <= data;
                    when 5 => R5 <= data;
                    when 6 => R6 <= data;
                    when 7 => R7 <= data;
                    when 8 => R8 <= data;
                    when 9 => R9 <= data;
                    when 10 => R10 <= data;
                    when 11 => R11 <= data;
                    when 12 => R12 <= data;
                    when 13 => R13 <= data;
                    when 14 => R14 <= data;
                    when 15 => R15 <= data;
                    when 16 => R16 <= data;
                    when 17 => R17 <= data;
                    when 18 => R18 <= data;
                    when 19 => R19 <= data;
                    when 20 => R20 <= data;
                    when 21 => R21 <= data;
                    when 22 => R22 <= data;
                    when 23 => R23 <= data;
                    when 24 => R24 <= data;
                    when 25 => R25 <= data;
                    when 26 => R26 <= data;
                    when 27 => R27 <= data;
                    when 28 => R28 <= data;
                    when 29 => R29 <= data;
                    when 30 => R30 <= data;
                    when 31 => R31 <= data;
                    when others => null;
                end case;
            end if;
        end if;
    end process;


end Behavioral;

