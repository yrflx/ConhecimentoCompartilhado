library IEEE; use IEEE.STD_LOGIC_1164.all;

entity flop is
    port(clk2: in STD_LOGIC;
         d: in STD_LOGIC_VECTOR(3 downto 0);
         q: out STD_LOGIC_VECTOR(3 downto 0));
end;

architecture synth of flop is
begin
    process(clk2) begin
        if rising_edge(clk2) then
            q <= d;
        end if;
    end process;
end;
