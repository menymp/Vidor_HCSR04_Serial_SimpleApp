LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY HCSR04_UART_Logic_Testbench  IS 
END ; 
 
ARCHITECTURE HCSR04_UART_Logic_Testbench_arch OF HCSR04_UART_Logic_Testbench IS
  SIGNAL Range_dec   :  std_logic_vector (3 downto 0)  ; 
  SIGNAL TX_Done   :  STD_LOGIC  ; 
  SIGNAL UART_DV   :  STD_LOGIC  ; 
  SIGNAL SR04_Finished   :  STD_LOGIC  ; 
  SIGNAL Range_thousand   :  std_logic_vector (3 downto 0)  ; 
  SIGNAL Range_cent   :  std_logic_vector (3 downto 0)  ; 
  SIGNAL OUTPUT_CHAR   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL clk   :  STD_LOGIC  ; 
  SIGNAL Range_units   :  std_logic_vector (3 downto 0)  ; 
  SIGNAL Start_measure   :  STD_LOGIC  ; 
  SIGNAL reset   :  STD_LOGIC  ; 
  COMPONENT HCSR04_UART_Logic  
    PORT ( 
      Range_dec  : in std_logic_vector (3 downto 0) ; 
      TX_Done  : in STD_LOGIC ; 
      UART_DV  : out STD_LOGIC ; 
      SR04_Finished  : in STD_LOGIC ; 
      Range_thousand  : in std_logic_vector (3 downto 0) ; 
      Range_cent  : in std_logic_vector (3 downto 0) ; 
      OUTPUT_CHAR  : out std_logic_vector (7 downto 0) ; 
      clk  : in STD_LOGIC ; 
      Range_units  : in std_logic_vector (3 downto 0) ; 
      Start_measure  : out STD_LOGIC ; 
      reset  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : HCSR04_UART_Logic  
    PORT MAP ( 
      Range_dec   => Range_dec  ,
      TX_Done   => TX_Done  ,
      UART_DV   => UART_DV  ,
      SR04_Finished   => SR04_Finished  ,
      Range_thousand   => Range_thousand  ,
      Range_cent   => Range_cent  ,
      OUTPUT_CHAR   => OUTPUT_CHAR  ,
      clk   => clk  ,
      Range_units   => Range_units  ,
      Start_measure   => Start_measure  ,
      reset   => reset   ) ; 



-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ps, End Time = 1 sec, Period = 40 us
  Process
	Begin
	 clk  <= '0'  ;
	wait for 11 us ;
-- 50 ns, single loop till start period.
	for Z in 1 to 10000
	loop
	    clk  <= '1'  ;
	   wait for 11 us ;
	    clk  <= '0'  ;
	   wait for 11 us ;
-- 950 ns, repeat pattern in loop.
	end  loop;
	 clk  <= '1'  ;
	wait for 11 us ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 sec, Period = 0 ps
  Process
	Begin
	 reset  <= '1';
	wait for 1 ns;
	 reset  <= '0'  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 sec, Period = 0 ps
  Process
	Begin
	 Range_units  <= "0001"  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 sec, Period = 0 ps
  Process
	Begin
	 Range_dec  <= "0010"  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 sec, Period = 0 ps
  Process
	Begin
	 Range_cent  <= "0011"  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 sec, Period = 0 ps
  Process
	Begin
	 Range_thousand  <= "0100"  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 sec, Period = 0 ps
  Process
	Begin
   TX_Done  <= '1'  ;
	wait for 22 ms ;
	TX_Done  <= '0'  ;
	wait for 2 ms ;
	TX_Done  <= '1'  ; --digito 1
	wait for 2 ms ;
	TX_Done  <= '0'  ;
	wait for 2 ms ;
	TX_Done  <= '1'  ; --digito 2
	wait for 2 ms ;
	TX_Done  <= '0'  ;
	wait for 2 ms ;	
	TX_Done  <= '1'  ; --digito 3
	wait for 2 ms ;
	TX_Done  <= '0'  ;
	wait for 2 ms ;	
	TX_Done  <= '1'  ; --digito 4
	wait for 2 ms ;
	TX_Done  <= '0'  ;
	wait for 2 ms ;	
	TX_Done  <= '1'  ; --CR
	wait for 2 ms ;
	TX_Done  <= '0'  ;
	wait for 2 ms ;
	TX_Done  <= '1'  ; --LF
	wait for 2 ms ;
	TX_Done  <= '0'  ;
	wait for 2 ms ;	
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 sec, Period = 0 ps
  Process
	Begin
	 SR04_Finished  <= '0'  ;
	wait for 20 ms ;
	 SR04_Finished  <= '1'  ;
	 
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;
END;
