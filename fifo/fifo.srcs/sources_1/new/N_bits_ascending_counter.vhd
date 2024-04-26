library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity N_bits_ascending_counter is
    Port ( sync_reset : in STD_LOGIC;
           ce : in STD_LOGIC;
           clk : in STD_LOGIC;
           q1 : out STD_LOGIC_VECTOR (3 downto 0);
           q2 : out STD_LOGIC_VECTOR (3 downto 0));
end N_bits_ascending_counter;

architecture Behavioral of N_bits_ascending_counter is

    signal q_aux: STD_LOGIC_VECTOR (3 downto 0);

begin

    q1 <= q_aux;
    q2 <= q_aux;
    
    process (sync_reset,ce,clk,q_aux)
    
    begin
        
        if (clk'event and clk='1') then
            
            if (sync_reset='1') then
            
                q_aux <= "0000";
            
            elsif (ce='1') then
            
                if (q_aux="1111") then
                
                    q_aux <= "0000";
                    
                else
                    
                    q_aux <= q_aux + 1;
                    
                end if;
                
            end if;
            
        end if;
        
    end process;
    
        


end Behavioral;
