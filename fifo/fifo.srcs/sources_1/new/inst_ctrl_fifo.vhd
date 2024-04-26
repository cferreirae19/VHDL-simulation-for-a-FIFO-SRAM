library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity inst_ctrl_fifo is
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
end inst_ctrl_fifo;

architecture Behavioral of inst_ctrl_fifo is

    signal empty_condition: STD_LOGIC;
    signal full_condition: STD_LOGIC;
    
    signal ramread_aux: STD_LOGIC;
    signal ramwrite_aux: STD_LOGIC;
    signal empty_aux: STD_LOGIC;
    signal full_aux: STD_LOGIC;
    
    component JK_flipflop
    Port (clk: in STD_LOGIC;
          reset: in STD_LOGIC;
          preset: in STD_LOGIC;
          J: in STD_LOGIC;
          K: in STD_LOGIC;
          q: out STD_LOGIC);
    end component;

begin

    ramread <= ramread_aux;
    ramwrite <= ramwrite_aux;
    empty <= empty_aux;
    full <= full_aux;

    ramread <= pop and (not empty_aux);
    ramwrite <= push and (not full_aux);
    
    inc_ptr_read <= pop and (not empty_aux);
    inc_ptr_write <= push and (not full_aux);
    
    empty_condition <= '1' when ((ptr_read + 1 = ptr_write) and pop='1')
        else '0';
    full_condition <= '1' when ((ptr_write + 1 = ptr_read) and push='1')
        else '0';
        
    FULL_JK: JK_flipflop port map (clk => clk,
                                   reset => reset,
                                   preset => '0',
                                   J => full_condition,
                                   K => ramread_aux,
                                   q => full);
                                   
    EMPTY_JK: JK_flipflop port map (clk => clk,
                                    reset => '0',
                                    preset => reset,
                                    J => empty_condition,
                                    K => ramwrite_aux,
                                    q => empty);

end Behavioral;