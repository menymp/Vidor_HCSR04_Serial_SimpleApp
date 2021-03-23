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
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
-- 02111-1307, USA.
--
-- ©2011 - X Engineering Software Systems Corp. (www.xess.com)
--*********************************************************************


--*********************************************************************
-- Interface to HC-SR04 ultrasonic range finder.
--*********************************************************************


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

--*********************************************************************
-- This module triggers the HC-SR04 and then times the echo pulse to
-- determine the distance to the object.
--*********************************************************************
ENTITY HCSR04 IS
  PORT(
      clk       	: IN  STD_LOGIC;                    --system clock 10 uS
      reset   		: IN  STD_LOGIC;                    --asynchronous reset
      Start    	: IN  STD_LOGIC;                    --Start new measure
      Finished		: OUT STD_LOGIC; 							--measure cycle
      Pulse_len   : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);--Pulse len in 10uS steps
		Echo			: IN	STD_LOGIC;							--Echo pin
		Trig			: OUT	STD_LOGIC);         				--Trigger pin
END HCSR04;

architecture bhv of HCSR04 IS
type MOORE_Ultrasonic is (Ready, Triggering, Waiting, Measuring);
signal current_state, next_state: MOORE_Ultrasonic;
signal count : STD_LOGIC_VECTOR(11 DOWNTO 0);
begin
	-- Secuenciador
	process(clk,reset)
	begin
		if(reset='1') then
			current_state <= Ready;
		elsif(rising_edge(clk)) then
			current_state <= next_state;
		end if;
	end process;
  
  
	-- Logica de cambio de estado
	-- Logica combinacional
	process(clk,current_state,Start,Echo)
	begin
	   if rising_edge(clk) then
			case(current_state) is
				when Ready =>
					-- Ready state
					Trig <= '0';
					Finished <= '1';
					Pulse_len <= count;
					--count <= (Others => '0');
					
					if(Start = '1') then
						-- "1"
						next_state <= Triggering;
					else
						next_state <= Ready;
					end if;
				when Triggering =>
					-- Triggering state
					Trig <= '1';
					Finished <= '0';
					Pulse_len <= (Others => '0');
					count <= (Others => '0');
					
					next_state <= Waiting; 
				when Waiting => 
					-- Waiting state
					Trig <= '0';
					Finished <= '0';
					Pulse_len <= (Others => '0');
					count <= (Others => '0');
					
					if(Echo = '1') then
						next_state <= Measuring;
					else
						next_state <= Waiting;
					end if;  
				when Measuring =>
					-- Measuring state
					Trig <= '0';
					Finished <= '0';
					Pulse_len <= (Others => '0');
					count <= count + 1;
					
					if(Echo = '0') or (count > 3800) then
						next_state <= Ready;
					else
						next_state <= Measuring;
					end if; 
			end case;
		end if;
	end process;
end bhv;