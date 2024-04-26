library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity inst_dual_port_distributed_ram_async_read is
    port ( clk : in STD_LOGIC;
           we  : in STD_LOGIC;
           read_addr : in STD_LOGIC_VECTOR (3 downto 0);
           write_addr : in STD_LOGIC_VECTOR (3 downto 0);
           din  : in STD_LOGIC_VECTOR(7 downto 0);
           dout  : out STD_LOGIC_VECTOR(7 downto 0));
end inst_dual_port_distributed_ram_async_read;

architecture Behavioral of inst_dual_port_distributed_ram_async_read is

    type RAM_TYPE is array (15 downto 0) of STD_LOGIC_VECTOR (7 downto 0);
    signal ram : RAM_TYPE;

begin

    process (clk)
    
    begin
    
        if (clk'event and clk='1') then
        
            if (we = '1') then
            
                ram(to_integer(unsigned(write_addr))) <= din;
                
            end if;
            
        end if;
        
    end process;

    dout <= ram(to_integer(unsigned(read_addr)));

end Behavioral;
		