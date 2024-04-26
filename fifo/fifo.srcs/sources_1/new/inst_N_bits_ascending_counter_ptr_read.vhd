library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity inst_N_bits_ascending_counter_ptr_read is
    Port ( ce : in STD_LOGIC;
           clk : in STD_LOGIC;
           sync_reset : in STD_LOGIC;
           q1 : out STD_LOGIC_VECTOR (3 downto 0);
           q2 : out STD_LOGIC_VECTOR (3 downto 0));
end inst_N_bits_ascending_counter_ptr_read;

architecture Behavioral of inst_N_bits_ascending_counter_ptr_read is

    component N_bits_ascending_counter
    Port ( sync_reset : in STD_LOGIC;
           ce : in STD_LOGIC;
           clk : in STD_LOGIC;
           q1 : out STD_LOGIC_VECTOR (3 downto 0);
           q2 : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

begin

    UUT: N_bits_ascending_counter port map (sync_reset => sync_reset,
                                            ce => ce,
                                            clk => clk,
                                            q1 => q1,
                                            q2 => q2);
        
end Behavioral;