--*********************************************************************
-- This program is free software; you can redistribute it and/or
-- modify it under the terms of the GNU General Public License
-- as published by the Free Software Foundation; either version 2
-- of the License, or (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--

--*********************************************************************


--*********************************************************************
-- Logic control module for HCSR04 and UART.
--*********************************************************************


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

--*********************************************************************
-- Logic module for measure control and trasmission by uart
-- determine the distance to the object.
--*********************************************************************
ENTITY HCSR04_UART_Logic IS
  PORT(
      clk       		: IN  STD_LOGIC;                    --clock
      reset   			: IN  STD_LOGIC;                    --reset
      Start_measure  : OUT STD_LOGIC;                    --Start new measure
      UART_DV			: OUT STD_LOGIC; 							--Start uart trasmission
		OUTPUT_CHAR		: OUT	STD_LOGIC_VECTOR(7 DOWNTO 0); --Char terminal output
      Range_units		: IN  STD_LOGIC_VECTOR(3 DOWNTO 0); --pulse units
		Range_dec		: IN  STD_LOGIC_VECTOR(3 DOWNTO 0); --pulse dec
		Range_cent		: IN	STD_LOGIC_VECTOR(3 DOWNTO 0); --pulse cent
		Range_thousand	: IN  STD_LOGIC_VECTOR(3 DOWNTO 0); --pulse 
		TX_Done			: IN	STD_LOGIC;							--TX Done signal
		SR04_Finished	: IN	STD_LOGIC);         				--Measure finished
END HCSR04_UART_Logic;

architecture bhv of HCSR04_UART_Logic IS
type MOORE_Ultrasonic is (State_Measure, State_Wait, State_Digit1Trasmit,State_Digit1Wait, State_Digit2Trasmit,	State_Digit2Wait,State_Digit3Trasmit,State_Digit3Wait,	State_Digit4Trasmit,State_Digit4Wait,	State_CRTrasmit,State_CRWait, State_LFTrasmit, State_LFWait);
signal current_state, next_state: MOORE_Ultrasonic;
signal Temp_char : STD_LOGIC_VECTOR(7 DOWNTO 0);
begin
	-- Secuenciador
	process(clk,reset)
	begin
		if(reset='1') then
			current_state <= State_Measure;
		elsif(rising_edge(clk)) then
			current_state <= next_state;
		end if;
	end process;
  
  
	-- Logica de cambio de estado
	-- Logica combinacional
	process(clk,current_state,Range_units,Range_dec,Range_cent,Range_thousand,TX_Done,SR04_Finished)
	begin
		case(current_state) is
			when State_Measure =>
				-- State_Measure
				Start_measure <= '1';
				UART_DV <= '0';
				Temp_char <= std_logic_vector(resize(unsigned(Range_thousand), OUTPUT_CHAR'length));
				OUTPUT_CHAR <= Temp_char + 48;
				
				next_state <= State_Wait;
			when State_Wait =>
				-- State_Wait
				Start_measure <= '0';
				UART_DV <= '0';
				Temp_char <= std_logic_vector(resize(unsigned(Range_thousand), OUTPUT_CHAR'length));
				OUTPUT_CHAR <= Temp_char + 48; 

				
				if(SR04_Finished = '1') then
					next_state <= State_Digit1Trasmit;
				else
					next_state <= State_Wait;
				end if; 
			when State_Digit1Trasmit => 
				-- Waiting state
				Start_measure <= '0';
				UART_DV <= '1';
				Temp_char <= std_logic_vector(resize(unsigned(Range_thousand), OUTPUT_CHAR'length));
				OUTPUT_CHAR <= Temp_char + 48;
				
				if(TX_Done = '1') then
					next_state <= State_Digit1Wait;
				else
					next_state <= State_Digit1Trasmit;
				end if;
			when State_Digit1Wait =>
				Start_measure <= '0';
				UART_DV <= '0';
				Temp_char <= std_logic_vector(resize(unsigned(Range_thousand), OUTPUT_CHAR'length));
				OUTPUT_CHAR <= Temp_char + 48;
				
				if(TX_Done = '0') then
					next_state <= State_Digit2Trasmit;
				else
					next_state <= State_Digit1Wait;
				end if;
			when State_Digit2Trasmit => 
				-- Waiting state
				Start_measure <= '0';
				UART_DV <= '1';
				Temp_char <= std_logic_vector(resize(unsigned(Range_cent), OUTPUT_CHAR'length));
				OUTPUT_CHAR <= Temp_char + 48;
				
				if(TX_Done = '1') then
					next_state <= State_Digit2Wait;
				else
					next_state <= State_Digit2Trasmit;
				end if;
			when State_Digit2Wait =>
				Start_measure <= '0';
				UART_DV <= '0';
				Temp_char <= std_logic_vector(resize(unsigned(Range_cent), OUTPUT_CHAR'length));
				OUTPUT_CHAR <= Temp_char + 48;
				
				if(TX_Done = '0') then
					next_state <= State_Digit3Trasmit;
				else
					next_state <= State_Digit2Wait;
				end if;
			when State_Digit3Trasmit => 
				-- Waiting state
				Start_measure <= '0';
				UART_DV <= '1';
				Temp_char <= std_logic_vector(resize(unsigned(Range_dec), OUTPUT_CHAR'length));
				OUTPUT_CHAR <= Temp_char + 48;
				
				if(TX_Done = '1') then
					next_state <= State_Digit3Wait;
				else
					next_state <= State_Digit3Trasmit;
				end if;
			when State_Digit3Wait =>
				Start_measure <= '0';
				UART_DV <= '0';
				Temp_char <= std_logic_vector(resize(unsigned(Range_dec), OUTPUT_CHAR'length));
				OUTPUT_CHAR <= Temp_char + 48;
				
				if(TX_Done = '0') then
					next_state <= State_Digit4Trasmit;
				else
					next_state <= State_Digit3Wait;
				end if;
			when State_Digit4Trasmit => 
				Start_measure <= '0';
				UART_DV <= '1';
				Temp_char <= std_logic_vector(resize(unsigned(Range_units), OUTPUT_CHAR'length));
				OUTPUT_CHAR <= Temp_char + 48;
				
				if(TX_Done = '1') then
					next_state <= State_Digit4Wait;
				else
					next_state <= State_Digit4Trasmit;
				end if;
			when State_Digit4Wait =>
				Start_measure <= '0';--
				UART_DV <= '0';
				Temp_char <= std_logic_vector(resize(unsigned(Range_units), OUTPUT_CHAR'length));
				OUTPUT_CHAR <= Temp_char + 48;
				
				if(TX_Done = '0') then
					next_state <= State_CRTrasmit;
				else
					next_state <= State_Digit4Wait;
				end if;
			when State_CRTrasmit => 
				-- Waiting state
				Start_measure <= '0';
				UART_DV <= '1';
				Temp_char <=X"0D";
				OUTPUT_CHAR <= Temp_char;
				
				if(TX_Done = '1') then
					next_state <= State_CRWait;
				else
					next_state <= State_CRTrasmit;
				end if;
			when State_CRWait =>
				Start_measure <= '0';
				UART_DV <= '0';
				Temp_char <=X"0D";
				OUTPUT_CHAR <= Temp_char;
				
				if(TX_Done = '0') then
					next_state <= State_LFTrasmit;
				else
					next_state <= State_CRWait;
				end if;
			when State_LFTrasmit => 
				-- Waiting state
				Start_measure <= '0';
				UART_DV <= '1';
				Temp_char <=X"0A";
				OUTPUT_CHAR <= Temp_char;
				
				if(TX_Done = '1') then
					next_state <= State_LFWait;
				else
					next_state <= State_LFTrasmit;
				end if;
			when State_LFWait =>
				Start_measure <= '0';
				UART_DV <= '0';
				Temp_char <=X"0A";
				OUTPUT_CHAR <= Temp_char;
				
				if(TX_Done = '0') then
					next_state <= State_Measure;
				else
					next_state <= State_LFWait;
				end if;		
		end case;
	end process;
end bhv;