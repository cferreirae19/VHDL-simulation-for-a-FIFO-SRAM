library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fifo_16_byte_distributed_RAM_TB is
end fifo_16_byte_distributed_RAM_TB;

architecture Behavioral of fifo_16_byte_distributed_RAM_TB is

    component fifo_16_byte_distributed_RAM
    Port ( clk : in STD_LOGIC;
           sync_reset : in STD_LOGIC;
           pop : in STD_LOGIC;
           push : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (7 downto 0);
           empty : out STD_LOGIC;
           full : out STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (7 downto 0));
    end component;

    signal clk: STD_LOGIC;
    signal sync_reset: STD_LOGIC;
    signal pop: STD_LOGIC;
    signal push: STD_LOGIC;
    signal data_in: STD_LOGIC_VECTOR (7 downto 0):= "00000000";
    signal empty: STD_LOGIC;
    signal full: STD_LOGIC;
    signal data_out: STD_LOGIC_VECTOR (7 downto 0):= "00000000";
    
begin

    UUT: fifo_16_byte_distributed_RAM port map (clk => clk,
                                                sync_reset => sync_reset,
                                                pop => pop,
                                                push => push,
                                                data_in => data_in,
                                                empty => empty,
                                                full => full,
                                                data_out => data_out);
    
    clk_proc: process
    begin
    
        clk <= '0';
        
        wait for 5ns;
        
        clk <= '1';
        
        wait for 5ns;
        
    end process;
    
    stim_proc: process
    begin
    
        sync_reset <= '1';
        data_in <= "00000000";
        pop <= '0';
        push <= '0';
        wait for 10ns;
        
        sync_reset <= '0';
        wait for 200ns;
        
        push <= '1';
        for I in 0 to 19 loop
            data_in <= STD_LOGIC_VECTOR(to_unsigned(I,8));
            wait for 10ns;
        end loop;
        
        push <= '0';
        pop <= '1';
        wait for 200ns;
        
    end process;                                                             

end Behavioral;
