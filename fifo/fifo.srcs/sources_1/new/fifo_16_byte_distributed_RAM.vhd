library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fifo_16_byte_distributed_RAM is
    Port ( clk : in STD_LOGIC;
           sync_reset : in STD_LOGIC;
           pop : in STD_LOGIC;
           push : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (7 downto 0);
           empty : out STD_LOGIC;
           full : out STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (7 downto 0));
end fifo_16_byte_distributed_RAM;

architecture Behavioral of fifo_16_byte_distributed_RAM is

    signal ce_aux_read: STD_LOGIC;
    signal ce_aux_write: STD_LOGIC;
    signal q1_aux_read: STD_LOGIC_VECTOR (3 downto 0):= "0000";
    signal q2_aux_read: STD_LOGIC_VECTOR (3 downto 0):= "0000";
    signal q1_aux_write: STD_LOGIC_VECTOR (3 downto 0):= "0000";
    signal q2_aux_write: STD_LOGIC_VECTOR (3 downto 0):= "0000";
    signal ramread_aux: STD_LOGIC;
    signal ramwrite_aux: STD_LOGIC;

    component inst_N_bits_ascending_counter_ptr_read
    Port ( ce : in STD_LOGIC;
           clk : in STD_LOGIC;
           sync_reset : in STD_LOGIC;
           q1 : out STD_LOGIC_VECTOR (3 downto 0);
           q2 : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    component inst_N_bits_ascending_counter_ptr_write
    Port ( ce : in STD_LOGIC;
           clk : in STD_LOGIC;
           sync_reset : in STD_LOGIC;
           q1 : out STD_LOGIC_VECTOR (3 downto 0);
           q2 : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    component inst_ctrl_fifo
    Port ( clk : in STD_LOGIC;
           pop : in STD_LOGIC;
           push : in STD_LOGIC;
           reset : in STD_LOGIC;
           ptr_read : in STD_LOGIC_VECTOR (3 downto 0);
           ptr_write : in STD_LOGIC_VECTOR (3 downto 0);
           empty : out STD_LOGIC;
           full : out STD_LOGIC;
           inc_ptr_read : out STD_LOGIC;
           inc_ptr_write : out STD_LOGIC;
           ramread : out STD_LOGIC;
           ramwrite : out STD_LOGIC);
    end component;
    
    component inst_dual_port_distributed_ram_async_read
    port ( clk : in STD_LOGIC;
           we  : in STD_LOGIC;
           read_addr : in STD_LOGIC_VECTOR (3 downto 0);
           write_addr : in STD_LOGIC_VECTOR (3 downto 0);
           din  : in STD_LOGIC_VECTOR(7 downto 0);
           dout  : out STD_LOGIC_VECTOR(7 downto 0));
    end component;
    
begin

    CTR_READ: inst_N_bits_ascending_counter_ptr_read port map (ce => ce_aux_read,
                                                               clk => clk,
                                                               sync_reset => sync_reset,
                                                               q1 => q1_aux_read,
                                                               q2 => q2_aux_read);
    
    CTR_WRITE: inst_N_bits_ascending_counter_ptr_write port map (ce => ce_aux_write,
                                                                 clk => clk,
                                                                 sync_reset => sync_reset,
                                                                 q1 => q1_aux_write,
                                                                 q2 => q2_aux_write);
    
    CTRL: inst_ctrl_fifo port map (clk => clk,
                                   pop => pop,
                                   push => push,
                                   reset => sync_reset,
                                   ptr_read => q2_aux_read,
                                   ptr_write => q2_aux_write,
                                   empty => empty,
                                   full => full,
                                   inc_ptr_read => ce_aux_read,
                                   inc_ptr_write => ce_aux_write,
                                   ramread => ramread_aux,
                                   ramwrite => ramwrite_aux);
    
    RAM: inst_dual_port_distributed_ram_async_read port map (clk => clk,
                                                             we => ramwrite_aux,
                                                             read_addr => q1_aux_read,
                                                             write_addr => q1_aux_write,
                                                             din => data_in,
                                                             dout => data_out);
    
end Behavioral;