----------------------------------------------------------------------------------
-- COPYRIGHT 2015 Jes�s Eduardo M�ndez Rosales
--This program is free software: you can redistribute it and/or modify
--it under the terms of the GNU General Public License as published by
--the Free Software Foundation, either version 3 of the License, or
--(at your option) any later version.
--
--This program is distributed in the hope that it will be useful,
--but WITHOUT ANY WARRANTY; without even the implied warranty of
--MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--GNU General Public License for more details.
--
--You should have received a copy of the GNU General Public License
--along with this program.  If not, see <http://www.gnu.org/licenses/>.
--
--
--							LIBRER�A LCD
--
-- Descripci�n: Con �sta librer�a podr�s implementar c�digos para una LCD 16x2 de manera
-- f�cil y r�pida, con todas las ventajas de utilizar una FPGA.
--
-- Caracter�sticas:
-- 
--	Los comandos que puedes utilizar son los siguientes:
--
-- LCD_INI() -> Inicializa la lcd.
--
--				Dentro de los par�ntesis poner un vector de 2 bits para encender o apagar
--				el cursor y activar o desactivar el parpadeo.
--		"1x" -- Cursor ON
--		"0x" -- Cursor OFF
--		"x1" -- Parpadeo ON
--		"x0" -- Parpadeo OFF
--
--   Por ejemplo: LCD_INI("10") -- Inicializar LCD con cursor encendido y sin parpadeo 
--	
--			
-- CHAR() -> Manda una letra may�scula o min�scula
--
--				 IMPORTANTE: 1) Debido a que VHDL no es sensible a may�sculas y min�sculas, si se quiere
--								    escribir una letra may�scula se debe escribir una "M" antes de la letra.
--								 2) Si se quiere escribir la letra "S" may�scula, se declara "MAS"
--											
-- 	Por ejemplo: CHAR(A)  -- Escribe en la LCD la letra "a"
--						 CHAR(MA) -- Escribe en la LCD la letra "A"	
--						 CHAR(S)	 -- Escribe en la LCD la letra "s"
--						 CHAR(MAS)	 -- Escribe en la LCD la letra "S"	
--	
--
-- POS() -> Escribir en la posici�n que se indique.
--
--				Dentro de los par�ntesis se escribe la posici�n de la LCD a la que se quiere ir, empezando
--				por el rengl�n seguido de la posici�n vertical separadas por una coma.
--		
--		Por ejemplo: POS(1,2) -- Manda cursor al rengl�n 1, poscici�n 2
--						 POS(2,4) -- Manda cursor al rengl�n 2, poscici�n 4		
--
--
-- CHAR_ASCII() -> Escribe un caracter a partir de su c�digo en ASCII
--					
--						 Dentro de los parentesis escribir x"(n�mero hex.)"
--
--		Por ejemplo: CHAR_ASCII(x"40") -- Escribe en la LCD el character "@"
--
--
-- CODIGO_FIN() -> Finaliza el c�digo. 
--						 NOTA: Dentro de los par�ntesis poner cualquier n�mero: 1,2,3,4...
--
--
-- BUCLE_INI() -> Indica el inicio de un bucle. 
--						NOTA: Dentro de los par�ntesis poner cualquier n�mero: 1,2,3,4...
--
--
-- BUCLE_FIN() -> Indica el final del bucle.
--						NOTA: Dentro de los par�ntesis poner cualquier n�mero: 1,2,3,4...
--
--
-- INT_NUM() -> Escribe en la LCD un n�mero entero.
--					 NOTA: Dentro de los par�ntesis poner s�lo un n�mero: 1,2,3,4...
--						    si se quiere escribir otro n�mero entero se tiene que volver
--							 a llamar la funci�n
--
--
--	Con los puertos de entrada "CORD" y "CORI" se hacen corrimientos a la derecha y a la
--	izquierda respectivamente. NOTA: La velocidad del corrimiento se puede cambiar 
-- modificando la variable "DELAY_COR".
--
--                CODIGO DEMOSTRATIVO
--
-- INSTRUCCION(0) <= LCD_INI("11"); --INICIALIZAMOS LCD, CURSOR A HOME, CURSOR ON, PARPADEO ON.
-- INSTRUCCION(1) <= POS(1,1);--------EMPEZAMOS A ESCRIBIR EN LA LINEA 1, POSICI�N 1
-- INSTRUCCION(2) <= CHAR(MH);--------ESCRIBIMOS EN LA LCD LA LETRA "h" MAYUSCULA
-- INSTRUCCION(3) <= CHAR(O);			
-- INSTRUCCION(4) <= CHAR(L);
-- INSTRUCCION(5) <= CHAR(A);
-- INSTRUCCION(6) <= CHAR_ASCII(x"21");--ESCRIBIMOS EL CARACTER "!"
-- INSTRUCCION(7) <= CODIGO_FIN(1);-----------FINALIZAMOS EL CODIGO
--------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------
-----------------APLICACI�N NO.1 CONTROLAR UN SENSOR ULTRAS�NICO---------------------
-------------------------------------------------------------------------------------


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
USE WORK.COMANDOS_LCD_REVA.ALL;

entity LIB_LCD_INTESC_REVA is

PORT(CLK: IN STD_LOGIC;

-------------------------------------------------------
-------------PUERTOS DE LA LCD (NO BORRAR)-------------
	  RS : OUT STD_LOGIC;									  --
	  RW : OUT STD_LOGIC;									  --
	  ENA : OUT STD_LOGIC;									  --
	  CORD : IN STD_LOGIC;									  --
	  CORI : IN STD_LOGIC;									  --
	  DATA_LCD: OUT STD_LOGIC_VECTOR(7 DOWNTO 0) ;    --
-------------------------------------------------------
	  
-----------------------------------------------------------
--------------ABAJO ESCRIBE TUS PUERTOS--------------------
	 
	 ----------------------------
	 ECO : IN STD_LOGIC;			-- AGREGAMOS LOS PUERTOS PARA
	 TRIGGER : OUT STD_LOGIC	-- EL SENSOR ULTRAS�NICO
	 ----------------------------
	 
-----------------------------------------------------------
	  );

end LIB_LCD_INTESC_REVA;

architecture Behavioral of LIB_LCD_INTESC_REVA is

-----------------------------------------------------------------
---------------SE�ALES DE LA LCD (NO BORRAR)---------------------
TYPE RAM IS ARRAY (0 TO  60) OF STD_LOGIC_VECTOR(8 DOWNTO 0);  --
																					--
SIGNAL INSTRUCCION : RAM;													--
																					--
COMPONENT PROCESADOR_LCD_REVA is											--
																					--
PORT(CLK : IN STD_LOGIC;													--
	  VECTOR_MEM : IN STD_LOGIC_VECTOR(8 DOWNTO 0);					--
	  INC_DIR : OUT INTEGER RANGE 0 TO 1024;							--
	  CORD : IN STD_LOGIC;													--
	  CORI : IN STD_LOGIC;													--
	  RS : OUT STD_LOGIC;													--
	  RW : OUT STD_LOGIC;													--
	  DELAY_COR : IN INTEGER RANGE 0 TO 1000;							--
	  ENA  : OUT STD_LOGIC;													--
	  DATA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)							--
		);																			--
																					--
end  COMPONENT PROCESADOR_LCD_REVA;										--
																					--
SIGNAL DIR : INTEGER RANGE 0 TO 1024 := 0;							--
SIGNAL VECTOR_MEM_S : STD_LOGIC_VECTOR(8 DOWNTO 0);				--
SIGNAL RS_S, RW_S, E_S : STD_LOGIC;										--
SIGNAL DATA_S : STD_LOGIC_VECTOR(7 DOWNTO 0);						--
SIGNAL DIR_S : INTEGER RANGE 0 TO 1024;								--
SIGNAL DELAY_COR : INTEGER RANGE 0 TO 1000;							--
-----------------------------------------------------------------
-----------------------------------------------------------------


---------------------------------------------------------
--------------AGREGA TUS SE�ALES AQU�--------------------

------------------------------------------------------
SIGNAL DISTANCIA_CM : INTEGER RANGE 0 TO 999 := 0;  -- SE�AL TIPO ENTERO QUE SE CONECTA AL PUERTO DE LA LIBRER�A DEL SENSOR
																	 --
SIGNAL NUM1,NUM2,NUM3 : INTEGER RANGE 0 TO 9 := 0;  -- SE�ALES TIPO ENTERO QUE GUARDARAN EL VALOR DE LAS CENTENAS, DECENAS
																	 -- Y UNIDADES DEL VALOR DE LA DISTANCIA, QUE DESPU�S SE UTILIZAR�N	
------------------------------------------------------ PARA ESCRIBIRSE EN LA LCD.

----------------------------------------------------
COMPONENT LIB_ULTRASONICO_REVA is					  --
																  --
PORT( CLK : IN STD_LOGIC;								  --
		ECO : IN STD_LOGIC;								  -- CREAMOS UN NUEVO COMPONENTE
	   TRIGGER : OUT STD_LOGIC;						  -- CON LOS PUERTOS QUE UTILIZA
		DISTANCIA_CM : OUT INTEGER RANGE 0 TO 999	  -- LA LIBRER�A DEL SENSOR ULTRAS�NICO
		);														  --
																  --
end COMPONENT LIB_ULTRASONICO_REVA;					  --
----------------------------------------------------

---------------------------------------------------------

begin


-----------------------------------------------------------
------------COMPONENTES PARA LCD (NO BORRAR)---------------
U1 : PROCESADOR_LCD_REVA PORT MAP(CLK  => CLK,				--
									 VECTOR_MEM => VECTOR_MEM_S,	--
									 RS  => RS_S,						--
									 RW  => RW_S,						--
									 ENA => E_S,						--
									 INC_DIR => DIR_S,				--
									 DELAY_COR => DELAY_COR,		--
									 CORD => CORD,						--
									 CORI => CORI,						--
									 DATA  => DATA_S );				--	
																			--
DIR <= DIR_S;															--
VECTOR_MEM_S <= INSTRUCCION(DIR);								--
																			--
RS <= RS_S;																--
RW <= RW_S;																--
ENA <= E_S;																--
DATA_LCD <= DATA_S;													--														--
-----------------------------------------------------------

DELAY_COR <= 100; --Modificar esta variable para la velocidad del corrimiento.

-------------------------------------------------------------------
-----------------ABAJO ESCRIBE TU C�DIGO EN VHDL-------------------


---------------------------------------------------------
U2 : LIB_ULTRASONICO_REVA PORT MAP(							 --
								  CLK => CLK,						 -- 
								  ECO => ECO,						 -- CONECTAMOS LOS PUERTOS DEL SENSOR
								  TRIGGER => TRIGGER,          -- CON SUS RESPECTIVOS PUERTOS Y
								  DISTANCIA_CM => DISTANCIA_CM -- SE�ALES.
									);									 --
---------------------------------------------------------

-------------------------------------------------------------------

--------------------------------------
NUM1 <= DISTANCIA_CM / 100;			-- SEPARAMOS A "DISTANCIA_CM" EN CENTENAS (NUM1), DECENAS (NUM2)
NUM2 <= (DISTANCIA_CM/10) MOD 10;	-- Y UNIDADES (NUM3)
NUM3 <= DISTANCIA_CM MOD 10;			--
---------------------------------------

-----------------------------------------------------------------------------------------
-------------------------ABAJO ESCRIBE TU C�DIGO PARA LA LCD-----------------------------

INSTRUCCION(0) <= LCD_INI("00"); ---- INICIALIZAMOS EL LCD SIN CURSOR NI PARPADEO
INSTRUCCION(1) <= POS(1,1);		---- EMPEZAMOS A ESCRIBIR EN LA POSICI�N 1,1 DEL LCD
INSTRUCCION(2) <= CHAR(MD);------------
INSTRUCCION(3) <= CHAR(I);				 --
INSTRUCCION(4) <= CHAR(S);				 --
INSTRUCCION(5) <= CHAR(T);				 -- ESCRIBIMOS EN LA LCD "DISTANCIA:"
INSTRUCCION(6) <= CHAR(A);				 --
INSTRUCCION(7) <= CHAR(N);				 --
INSTRUCCION(8) <= CHAR(C);				 --
INSTRUCCION(9) <= CHAR(I);				 --
INSTRUCCION(10) <= CHAR(A);			 --
INSTRUCCION(11) <= CHAR_ASCII(X"3A");--

INSTRUCCION(12) <= BUCLE_INI(1);---- EMPEZAMOS UN BUCLE

INSTRUCCION(13) <= POS(2,1);-------- ESCRIBIMOS EN LA LINEA 2 POSICION 1
INSTRUCCION(14) <= INT_NUM(NUM1);--- EL VALOR DE LAS CENTENAS

INSTRUCCION(15) <= POS(2,2);-------- ESCRIBIMOS EN LA LINEA 2 POSICION 2
INSTRUCCION(16) <= INT_NUM(NUM2);--- EL VALOR DE LAS DECENAS

INSTRUCCION(17) <= POS(2,3);-------- ESCRIBIMOS EN LA LINEA 2 POSICION 3
INSTRUCCION(18) <= INT_NUM(NUM3);--- EL VALOR DE LAS UNIDADES

INSTRUCCION(19) <= POS(2,5);-------- 
INSTRUCCION(20) <= CHAR(C);		 -- ESCRIBIMOS EN LA LINEA 2 POSICION 5 "CM"
INSTRUCCION(21) <= CHAR(M);---------

INSTRUCCION(22) <= BUCLE_FIN(1); -- INDICAMOS QUE FINALIZA EL BUCLE PARA VOLVER A EMPEZAR

-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------


end Behavioral;

