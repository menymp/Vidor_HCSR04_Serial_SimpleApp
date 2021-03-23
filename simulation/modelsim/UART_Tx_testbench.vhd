LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY UART_Tx_testbench  IS 
  GENERIC (
    g_CLKS_PER_BIT  : INTEGER   := 3719 ); 
END ; 
 
ARCHITECTURE UART_Tx_testbench_arch OF UART_Tx_testbench IS
  SIGNAL o_TX_Serial   :  STD_LOGIC  ; 
  SIGNAL o_TX_Active   :  STD_LOGIC  ; 
  SIGNAL i_TX_DV   :  STD_LOGIC  ; 
  SIGNAL Clk   :  STD_LOGIC  ; 
  SIGNAL o_TX_Done   :  STD_LOGIC  ; 
  SIGNAL i_TX_Byte   :  std_logic_vector (7 downto 0)  ; 
  COMPONENT UART_TX  
    GENERIC ( 
      g_CLKS_PER_BIT  : INTEGER  );  
    PORT ( 
      o_TX_Serial  : out STD_LOGIC ; 
      o_TX_Active  : out STD_LOGIC ; 
      i_TX_DV  : in STD_LOGIC ; 
      i_Clk  : in STD_LOGIC ; 
      o_TX_Done  : out STD_LOGIC ; 
      i_TX_Byte  : in std_logic_vector (7 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : UART_TX  
    GENERIC MAP ( 
      g_CLKS_PER_BIT  => g_CLKS_PER_BIT   )
    PORT MAP ( 
      o_TX_Serial   => o_TX_Serial  ,
      o_TX_Active   => o_TX_Active  ,
      i_TX_DV   => i_TX_DV  ,
      i_Clk   => Clk  ,
      o_TX_Done   => o_TX_Done  ,
      i_TX_Byte   => i_TX_Byte   ) ; 



-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ps, End Time = 1 sec, Period = 100 us
  Process
	Begin
	 clk  <= '0'  ;
	wait for 5 ns ;
-- 50 ns, single loop till start period.
	for Z in 1 to 10000000
	loop
	    clk  <= '1'  ;
	   wait for 5 ns ;
	    clk  <= '0'  ;
	   wait for 5 ns ;
-- 950 ns, repeat pattern in loop.
	end  loop;
	 clk  <= '1'  ;
	wait for 5 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 sec, Period = 0 ps
  Process
	Begin
	 i_TX_DV  <= '0'  ;
	 wait for 10 ms;
	 i_TX_DV <= '1';
	 wait for 100 ns;
	 i_TX_DV <= '0';
	 wait for 1 ms;
	 i_TX_DV <= '1';
	 wait for 100 ns;
	 i_TX_DV <= '0';
	 wait for 1 ms;
	 i_TX_DV <= '1';
	 wait for 100 ns;
	 i_TX_DV <= '0';
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 sec, Period = 0 ps
  Process
	Begin
	 i_TX_Byte  <= "00001111"  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;
END;
