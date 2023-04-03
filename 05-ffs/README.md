# Lab 5: Yaroslav Shapoval

### D & T Flip-flops

1. Screenshot with simulated time waveforms. Try to simulate both D- and T-type flip-flops in a single testbench with a maximum duration of 350 ns, including reset. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   ![your figure]()

### JK Flip-flop

1. Listing of VHDL architecture for JK-type flip-flop. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture Behavioral of jk_ff_rst is

      jk_ff_rst : process (clk)
        begin
            if rising_edge(clk) then
                if (rst = '1') then
                    sig_q <= '0';
                    
                else
                    if (j = '0' and k = '0') then
                        sig_q <= sig_q;
                        
                    elsif (j = '0' and k = '1') then
                        sig_q <= '0';
                        
                    elsif (j = '1' and k = '0') then
                        sig_q <= '1';
                        
                    elsif (j = '1' and k = '1') then
                        sig_q <= not sig_q;
                        
                    end if;
                end if;
            end if;
        end process jk_ff_rst;
    q     <= sig_q;
    q_bar <= not sig_q;
end architecture Behavioral;
```

### Shift register

1. Image of `top` level schematic of the 4-bit shift register. Use four D-type flip-flops and connect them properly. The image can be drawn on a computer or by hand. Always name all inputs, outputs, components and internal signals!

   ![your figure]()
