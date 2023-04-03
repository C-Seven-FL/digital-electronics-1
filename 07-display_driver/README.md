# Lab 7: Yaroslav Shapoval

### Display driver

1. Listing of VHDL code of the completed process `p_mux`. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
    --------------------------------------------------------
    -- p_mux:
    -- A sequential process that implements a multiplexer for
    -- selecting data for a single digit, a decimal point,
    -- and switches the common anodes of each display.
    --------------------------------------------------------
    p_mux : process (clk) is
  begin

    if (rising_edge(clk)) then
      if (rst = '1') then
        sig_hex <= data0;
        dp      <= dp_vect(0);
        dig     <= "11111110";
      else

        case sig_cnt_2bit is
          when "111" =>
            sig_hex <= data7;
            dp      <= dp_vect(7);
            dig     <= "01111111";
          when "110" =>
            sig_hex <= data6;
            dp      <= dp_vect(6);
            dig     <= "10111111";
          when "101" =>
            sig_hex <= data5;
            dp      <= dp_vect(5);
            dig     <= "11011111";
          when "100" =>
            sig_hex <= data4;
            dp      <= dp_vect(4);
            dig     <= "11101111";


          when "011" =>
            sig_hex <= data3;
            dp      <= dp_vect(3);
            dig     <= "11110111";

          when "010" =>
          sig_hex <= data2;
          dp <= dp_vect(2);
          dig <= "11111011";

          when "001" =>
          sig_hex <= data1;
          dp <= dp_vect(1);
          dig <= "11111101";

          when others =>
          sig_hex <= data0;
          dp <= dp_vect(0);
          dig <= "11111110";

        end case;

      end if;
    end if;

  end process p_mux;
```

### Eight-digit driver

1. Image of the 8-digit driver's block schematic. The image can be drawn on a computer or by hand. Always name all inputs, outputs, components, and internal signals!

   ![your figure]()
