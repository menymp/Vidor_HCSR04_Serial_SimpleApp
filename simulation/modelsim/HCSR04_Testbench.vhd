LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY HCSR04_Testbench  IS 
END ; 
 
ARCHITECTURE HCSR04_Testbench_arch OF HCSR04_Testbench IS
  SIGNAL Trig   :  STD_LOGIC  ; 
  SIGNAL Finished   :  STD_LOGIC  ; 
  SIGNAL Start   :  STD_LOGIC  ; 
  SIGNAL clk   :  STD_LOGIC  ; 
  SIGNAL Echo   :  STD_LOGIC  ; 
  SIGNAL Pulse_len   :  std_logic_vector (11 downto 0)  ; 
  SIGNAL reset   :  STD_LOGIC  ; 
  COMPONENT HCSR04  
    PORT ( 
      Trig  : out STD_LOGIC ; 
      Finished  : out STD_LOGIC ; 
      Start  : in STD_LOGIC ; 
      clk  : in STD_LOGIC ; 
      Echo  : in STD_LOGIC ; 
      Pulse_len  : out std_logic_vector (11 downto 0) ; 
      reset  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : HCSR04  
    PORT MAP ( 
      Trig   => Trig  ,
      Finished   => Finished  ,
      Start   => Start  ,
      clk   => clk  ,
      Echo   => Echo  ,
      Pulse_len   => Pulse_len  ,
      reset   => reset   ) ; 



-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ps, End Time = 1 sec, Period = 100 us
  Process
	Begin
	 start  <= '0'  ;
	wait for 20 us ;
	 start <= '1';
	wait for 25 us;
	 start <='0';
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ps, End Time = 1 sec, Period = 1 ms
  Process
	Begin
	echo  <= '0';
	wait until Trig = '1';
	echo  <= '0';
	wait for 100 us;
	echo 	<=	'1';
	wait for 45 ms ;
	echo 	<=	'0';
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ps, End Time = 1 sec, Period = 10 us
  Process
	Begin
	 clk  <= '0'  ;
	wait for 5 us ;
-- 50 ns, single loop till start period.
	for Z in 1 to 100000
	loop
	    clk  <= '1'  ;
	   wait for 5 us ;
	    clk  <= '0'  ;
	   wait for 5 us ;
-- 950 ns, repeat pattern in loop.
	end  loop;
	 clk  <= '1'  ;
	wait for 5 us ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 sec, Period = 0 ps
  Process
	Begin
	 reset  <= '1'  ;
	wait for 1 ns ;
	reset <= '0';
-- dumped values till 1 ns
	wait;
 End Process;
END;
