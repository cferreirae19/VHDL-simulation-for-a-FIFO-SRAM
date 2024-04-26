library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JK_flipflop is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           preset : in STD_LOGIC;
           J : in STD_LOGIC;
           K : in STD_LOGIC;
           q : out STD_LOGIC);
end JK_flipflop;

architecture Behavioral of JK_flipflop is

    signal q_aux: STD_LOGIC;

begin

    q <= q_aux;
    
    process (clk,reset,preset,J,K,q_aux)
    
    begin
    
        if (clk'event and clk='1') then
        
            if (reset='1') then
            
                q_aux <= '0';
                
            elsif (preset='1') then
            
                q_aux <= '1';
                
            else
                
                if (J='1' and K='1') then
                    
                    q_aux <= (not q_aux);
                    
                elsif (J='1' and K='0') then
                
                    q_aux <= '1';
                    
                elsif (J='0' and K='1') then
                
                    q_aux <= '0';
                    
                else
                
                    q_aux <= q_aux;
                    
                end if;
                
            end if;
            
        end if;
        
    end process;
            
end Behavioral;