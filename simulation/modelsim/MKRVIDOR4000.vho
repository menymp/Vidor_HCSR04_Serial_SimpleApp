-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.1 Build 646 04/11/2019 SJ Lite Edition"

-- DATE "03/30/2020 15:03:10"

-- 
-- Device: Altera 10CL016YU256C8G Package UFBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MKRVIDOR4000_top IS
    PORT (
	\oHDMI_TX[0](n)\ : OUT std_logic;
	\oHDMI_TX[1](n)\ : OUT std_logic;
	\oHDMI_TX[2](n)\ : OUT std_logic;
	\oHDMI_CLK(n)\ : OUT std_logic;
	\iMIPI_D[0](n)\ : IN std_logic := '0';
	\iMIPI_D[1](n)\ : IN std_logic := '0';
	\iMIPI_CLK(n)\ : IN std_logic := '0';
	iCLK : IN std_logic;
	iRESETn : IN std_logic;
	iSAM_INT : IN std_logic;
	oSAM_INT : BUFFER std_logic;
	oSDRAM_CLK : BUFFER std_logic;
	oSDRAM_ADDR : BUFFER std_logic_vector(11 DOWNTO 0);
	oSDRAM_BA : BUFFER std_logic_vector(1 DOWNTO 0);
	oSDRAM_CASn : BUFFER std_logic;
	oSDRAM_CKE : BUFFER std_logic;
	oSDRAM_CSn : BUFFER std_logic;
	bSDRAM_DQ : BUFFER std_logic_vector(15 DOWNTO 0);
	oSDRAM_DQM : BUFFER std_logic_vector(1 DOWNTO 0);
	oSDRAM_RASn : BUFFER std_logic;
	oSDRAM_WEn : BUFFER std_logic;
	bMKR_AREF : BUFFER std_logic;
	bMKR_A : BUFFER std_logic_vector(6 DOWNTO 0);
	bMKR_D : BUFFER std_logic_vector(14 DOWNTO 0);
	bPEX_RST : BUFFER std_logic;
	bPEX_PIN6 : BUFFER std_logic;
	bPEX_PIN8 : BUFFER std_logic;
	bPEX_PIN10 : BUFFER std_logic;
	iPEX_PIN11 : IN std_logic;
	bPEX_PIN12 : BUFFER std_logic;
	iPEX_PIN13 : IN std_logic;
	bPEX_PIN14 : BUFFER std_logic;
	bPEX_PIN16 : BUFFER std_logic;
	bPEX_PIN20 : BUFFER std_logic;
	iPEX_PIN23 : IN std_logic;
	iPEX_PIN25 : IN std_logic;
	bPEX_PIN28 : BUFFER std_logic;
	bPEX_PIN30 : BUFFER std_logic;
	iPEX_PIN31 : IN std_logic;
	bPEX_PIN32 : BUFFER std_logic;
	iPEX_PIN33 : IN std_logic;
	bPEX_PIN42 : BUFFER std_logic;
	bPEX_PIN44 : BUFFER std_logic;
	bPEX_PIN45 : BUFFER std_logic;
	bPEX_PIN46 : BUFFER std_logic;
	bPEX_PIN47 : BUFFER std_logic;
	bPEX_PIN48 : BUFFER std_logic;
	bPEX_PIN49 : BUFFER std_logic;
	bPEX_PIN51 : BUFFER std_logic;
	bWM_PIO1 : BUFFER std_logic;
	bWM_PIO2 : BUFFER std_logic;
	bWM_PIO3 : BUFFER std_logic;
	bWM_PIO4 : BUFFER std_logic;
	bWM_PIO5 : BUFFER std_logic;
	bWM_PIO7 : BUFFER std_logic;
	bWM_PIO8 : BUFFER std_logic;
	bWM_PIO18 : BUFFER std_logic;
	bWM_PIO20 : BUFFER std_logic;
	bWM_PIO21 : BUFFER std_logic;
	bWM_PIO27 : BUFFER std_logic;
	bWM_PIO28 : BUFFER std_logic;
	bWM_PIO29 : BUFFER std_logic;
	bWM_PIO31 : BUFFER std_logic;
	iWM_PIO32 : IN std_logic;
	bWM_PIO34 : BUFFER std_logic;
	bWM_PIO35 : BUFFER std_logic;
	bWM_PIO36 : BUFFER std_logic;
	iWM_TX : IN std_logic;
	oWM_RX : BUFFER std_logic;
	oWM_RESET : BUFFER std_logic;
	oHDMI_TX : BUFFER std_logic_vector(2 DOWNTO 0);
	oHDMI_CLK : BUFFER std_logic;
	bHDMI_SDA : BUFFER std_logic;
	bHDMI_SCL : BUFFER std_logic;
	iHDMI_HPD : IN std_logic;
	iMIPI_D : IN std_logic_vector(1 DOWNTO 0);
	iMIPI_CLK : IN std_logic;
	bMIPI_SDA : BUFFER std_logic;
	bMIPI_SCL : BUFFER std_logic;
	bMIPI_GP : BUFFER std_logic_vector(1 DOWNTO 0);
	oFLASH_SCK : BUFFER std_logic;
	oFLASH_CS : BUFFER std_logic;
	oFLASH_MOSI : BUFFER std_logic;
	iFLASH_MISO : BUFFER std_logic;
	oFLASH_HOLD : BUFFER std_logic;
	oFLASH_WP : BUFFER std_logic
	);
END MKRVIDOR4000_top;

-- Design Ports Information
-- iRESETn	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iSAM_INT	=>  Location: PIN_L16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- oSAM_INT	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oSDRAM_CLK	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_ADDR[0]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_ADDR[1]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_ADDR[2]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_ADDR[3]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_ADDR[4]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_ADDR[5]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_ADDR[6]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_ADDR[7]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_ADDR[8]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_ADDR[9]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_ADDR[10]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_ADDR[11]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_BA[0]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_BA[1]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_CASn	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_CKE	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_CSn	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_DQM[0]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_DQM[1]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_RASn	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_WEn	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- iPEX_PIN11	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iPEX_PIN13	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iPEX_PIN23	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iPEX_PIN25	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iPEX_PIN31	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iPEX_PIN33	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iWM_PIO32	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iWM_TX	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- oHDMI_TX[0]	=>  Location: PIN_R16,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- oHDMI_TX[1]	=>  Location: PIN_K15,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- oHDMI_TX[2]	=>  Location: PIN_J15,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- oHDMI_CLK	=>  Location: PIN_N15,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- iHDMI_HPD	=>  Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iMIPI_D[0]	=>  Location: PIN_L2,	 I/O Standard: LVDS,	 Current Strength: Default
-- iMIPI_D[1]	=>  Location: PIN_J2,	 I/O Standard: LVDS,	 Current Strength: Default
-- iMIPI_CLK	=>  Location: PIN_M2,	 I/O Standard: LVDS,	 Current Strength: Default
-- oFLASH_SCK	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- oFLASH_CS	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bSDRAM_DQ[0]	=>  Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[1]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[2]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[3]	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[4]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[5]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[6]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[7]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[8]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[9]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[10]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[11]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[12]	=>  Location: PIN_E6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[13]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[14]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[15]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_AREF	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_A[0]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_A[1]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_A[2]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_A[3]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_A[4]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_A[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_A[6]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[0]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[1]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[3]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[4]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[8]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[9]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[10]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[11]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[12]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[13]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[14]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_RST	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN6	=>  Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN8	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN10	=>  Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN12	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN14	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN16	=>  Location: PIN_M10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN20	=>  Location: PIN_N12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN28	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN30	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN32	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN42	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN44	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN45	=>  Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN46	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN47	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN48	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN49	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN51	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO1	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO2	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO3	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO4	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO5	=>  Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO7	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO8	=>  Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO18	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO20	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO21	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO27	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO28	=>  Location: PIN_N11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO29	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO31	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO34	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO35	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO36	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oWM_RX	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oWM_RESET	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bHDMI_SDA	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bHDMI_SCL	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bMIPI_SDA	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bMIPI_SCL	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bMIPI_GP[0]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMIPI_GP[1]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oFLASH_MOSI	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iFLASH_MISO	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- oFLASH_HOLD	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oFLASH_WP	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[5]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[6]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[7]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- iCLK	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- oHDMI_TX[0](n)	=>  Location: PIN_P16,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- oHDMI_TX[1](n)	=>  Location: PIN_K16,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- oHDMI_TX[2](n)	=>  Location: PIN_J16,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- oHDMI_CLK(n)	=>  Location: PIN_N16,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- iMIPI_D[0](n)	=>  Location: PIN_L1,	 I/O Standard: LVDS,	 Current Strength: Default
-- iMIPI_D[1](n)	=>  Location: PIN_J1,	 I/O Standard: LVDS,	 Current Strength: Default
-- iMIPI_CLK(n)	=>  Location: PIN_M1,	 I/O Standard: LVDS,	 Current Strength: Default


ARCHITECTURE structure OF MKRVIDOR4000_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_oHDMI_TX[0](n)\ : std_logic;
SIGNAL \ww_oHDMI_TX[1](n)\ : std_logic;
SIGNAL \ww_oHDMI_TX[2](n)\ : std_logic;
SIGNAL \ww_oHDMI_CLK(n)\ : std_logic;
SIGNAL \ww_iMIPI_D[0](n)\ : std_logic;
SIGNAL \ww_iMIPI_D[1](n)\ : std_logic;
SIGNAL \ww_iMIPI_CLK(n)\ : std_logic;
SIGNAL ww_iCLK : std_logic;
SIGNAL ww_iRESETn : std_logic;
SIGNAL ww_iSAM_INT : std_logic;
SIGNAL ww_oSAM_INT : std_logic;
SIGNAL ww_oSDRAM_CLK : std_logic;
SIGNAL ww_oSDRAM_ADDR : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_oSDRAM_BA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_oSDRAM_CASn : std_logic;
SIGNAL ww_oSDRAM_CKE : std_logic;
SIGNAL ww_oSDRAM_CSn : std_logic;
SIGNAL ww_bSDRAM_DQ : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_oSDRAM_DQM : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_oSDRAM_RASn : std_logic;
SIGNAL ww_oSDRAM_WEn : std_logic;
SIGNAL ww_bMKR_AREF : std_logic;
SIGNAL ww_bMKR_A : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_bMKR_D : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_bPEX_RST : std_logic;
SIGNAL ww_bPEX_PIN6 : std_logic;
SIGNAL ww_bPEX_PIN8 : std_logic;
SIGNAL ww_bPEX_PIN10 : std_logic;
SIGNAL ww_iPEX_PIN11 : std_logic;
SIGNAL ww_bPEX_PIN12 : std_logic;
SIGNAL ww_iPEX_PIN13 : std_logic;
SIGNAL ww_bPEX_PIN14 : std_logic;
SIGNAL ww_bPEX_PIN16 : std_logic;
SIGNAL ww_bPEX_PIN20 : std_logic;
SIGNAL ww_iPEX_PIN23 : std_logic;
SIGNAL ww_iPEX_PIN25 : std_logic;
SIGNAL ww_bPEX_PIN28 : std_logic;
SIGNAL ww_bPEX_PIN30 : std_logic;
SIGNAL ww_iPEX_PIN31 : std_logic;
SIGNAL ww_bPEX_PIN32 : std_logic;
SIGNAL ww_iPEX_PIN33 : std_logic;
SIGNAL ww_bPEX_PIN42 : std_logic;
SIGNAL ww_bPEX_PIN44 : std_logic;
SIGNAL ww_bPEX_PIN45 : std_logic;
SIGNAL ww_bPEX_PIN46 : std_logic;
SIGNAL ww_bPEX_PIN47 : std_logic;
SIGNAL ww_bPEX_PIN48 : std_logic;
SIGNAL ww_bPEX_PIN49 : std_logic;
SIGNAL ww_bPEX_PIN51 : std_logic;
SIGNAL ww_bWM_PIO1 : std_logic;
SIGNAL ww_bWM_PIO2 : std_logic;
SIGNAL ww_bWM_PIO3 : std_logic;
SIGNAL ww_bWM_PIO4 : std_logic;
SIGNAL ww_bWM_PIO5 : std_logic;
SIGNAL ww_bWM_PIO7 : std_logic;
SIGNAL ww_bWM_PIO8 : std_logic;
SIGNAL ww_bWM_PIO18 : std_logic;
SIGNAL ww_bWM_PIO20 : std_logic;
SIGNAL ww_bWM_PIO21 : std_logic;
SIGNAL ww_bWM_PIO27 : std_logic;
SIGNAL ww_bWM_PIO28 : std_logic;
SIGNAL ww_bWM_PIO29 : std_logic;
SIGNAL ww_bWM_PIO31 : std_logic;
SIGNAL ww_iWM_PIO32 : std_logic;
SIGNAL ww_bWM_PIO34 : std_logic;
SIGNAL ww_bWM_PIO35 : std_logic;
SIGNAL ww_bWM_PIO36 : std_logic;
SIGNAL ww_iWM_TX : std_logic;
SIGNAL ww_oWM_RX : std_logic;
SIGNAL ww_oWM_RESET : std_logic;
SIGNAL ww_oHDMI_TX : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_oHDMI_CLK : std_logic;
SIGNAL ww_bHDMI_SDA : std_logic;
SIGNAL ww_bHDMI_SCL : std_logic;
SIGNAL ww_iHDMI_HPD : std_logic;
SIGNAL ww_iMIPI_D : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_iMIPI_CLK : std_logic;
SIGNAL ww_bMIPI_SDA : std_logic;
SIGNAL ww_bMIPI_SCL : std_logic;
SIGNAL ww_bMIPI_GP : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_oFLASH_SCK : std_logic;
SIGNAL ww_oFLASH_CS : std_logic;
SIGNAL ww_oFLASH_MOSI : std_logic;
SIGNAL ww_iFLASH_MISO : std_logic;
SIGNAL ww_oFLASH_HOLD : std_logic;
SIGNAL ww_oFLASH_WP : std_logic;
SIGNAL \PLL_inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \wOSC_CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ultrasonic_serial_inst|inst5|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ultrasonic_serial_inst|inst2|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \iRESETn~input_o\ : std_logic;
SIGNAL \iSAM_INT~input_o\ : std_logic;
SIGNAL \iPEX_PIN11~input_o\ : std_logic;
SIGNAL \iPEX_PIN13~input_o\ : std_logic;
SIGNAL \iPEX_PIN23~input_o\ : std_logic;
SIGNAL \iPEX_PIN25~input_o\ : std_logic;
SIGNAL \iPEX_PIN31~input_o\ : std_logic;
SIGNAL \iPEX_PIN33~input_o\ : std_logic;
SIGNAL \iWM_PIO32~input_o\ : std_logic;
SIGNAL \iWM_TX~input_o\ : std_logic;
SIGNAL \iHDMI_HPD~input_o\ : std_logic;
SIGNAL \iMIPI_D[0]~input_o\ : std_logic;
SIGNAL \iMIPI_D[1]~input_o\ : std_logic;
SIGNAL \iMIPI_CLK~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[0]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[1]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[2]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[3]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[4]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[5]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[6]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[7]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[8]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[9]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[10]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[11]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[12]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[13]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[14]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[15]~input_o\ : std_logic;
SIGNAL \bMKR_AREF~input_o\ : std_logic;
SIGNAL \bMKR_A[0]~input_o\ : std_logic;
SIGNAL \bMKR_A[1]~input_o\ : std_logic;
SIGNAL \bMKR_A[2]~input_o\ : std_logic;
SIGNAL \bMKR_A[3]~input_o\ : std_logic;
SIGNAL \bMKR_A[4]~input_o\ : std_logic;
SIGNAL \bMKR_A[5]~input_o\ : std_logic;
SIGNAL \bMKR_A[6]~input_o\ : std_logic;
SIGNAL \bMKR_D[0]~input_o\ : std_logic;
SIGNAL \bMKR_D[1]~input_o\ : std_logic;
SIGNAL \bMKR_D[2]~input_o\ : std_logic;
SIGNAL \bMKR_D[3]~input_o\ : std_logic;
SIGNAL \bMKR_D[4]~input_o\ : std_logic;
SIGNAL \bMKR_D[8]~input_o\ : std_logic;
SIGNAL \bMKR_D[9]~input_o\ : std_logic;
SIGNAL \bMKR_D[10]~input_o\ : std_logic;
SIGNAL \bMKR_D[11]~input_o\ : std_logic;
SIGNAL \bMKR_D[12]~input_o\ : std_logic;
SIGNAL \bMKR_D[13]~input_o\ : std_logic;
SIGNAL \bMKR_D[14]~input_o\ : std_logic;
SIGNAL \bPEX_RST~input_o\ : std_logic;
SIGNAL \bPEX_PIN6~input_o\ : std_logic;
SIGNAL \bPEX_PIN8~input_o\ : std_logic;
SIGNAL \bPEX_PIN10~input_o\ : std_logic;
SIGNAL \bPEX_PIN12~input_o\ : std_logic;
SIGNAL \bPEX_PIN14~input_o\ : std_logic;
SIGNAL \bPEX_PIN16~input_o\ : std_logic;
SIGNAL \bPEX_PIN20~input_o\ : std_logic;
SIGNAL \bPEX_PIN28~input_o\ : std_logic;
SIGNAL \bPEX_PIN30~input_o\ : std_logic;
SIGNAL \bPEX_PIN32~input_o\ : std_logic;
SIGNAL \bPEX_PIN42~input_o\ : std_logic;
SIGNAL \bPEX_PIN44~input_o\ : std_logic;
SIGNAL \bPEX_PIN45~input_o\ : std_logic;
SIGNAL \bPEX_PIN46~input_o\ : std_logic;
SIGNAL \bPEX_PIN47~input_o\ : std_logic;
SIGNAL \bPEX_PIN48~input_o\ : std_logic;
SIGNAL \bPEX_PIN49~input_o\ : std_logic;
SIGNAL \bPEX_PIN51~input_o\ : std_logic;
SIGNAL \bWM_PIO1~input_o\ : std_logic;
SIGNAL \bWM_PIO2~input_o\ : std_logic;
SIGNAL \bWM_PIO3~input_o\ : std_logic;
SIGNAL \bWM_PIO4~input_o\ : std_logic;
SIGNAL \bWM_PIO5~input_o\ : std_logic;
SIGNAL \bWM_PIO7~input_o\ : std_logic;
SIGNAL \bWM_PIO8~input_o\ : std_logic;
SIGNAL \bWM_PIO18~input_o\ : std_logic;
SIGNAL \bWM_PIO20~input_o\ : std_logic;
SIGNAL \bWM_PIO21~input_o\ : std_logic;
SIGNAL \bWM_PIO27~input_o\ : std_logic;
SIGNAL \bWM_PIO28~input_o\ : std_logic;
SIGNAL \bWM_PIO29~input_o\ : std_logic;
SIGNAL \bWM_PIO31~input_o\ : std_logic;
SIGNAL \bWM_PIO34~input_o\ : std_logic;
SIGNAL \bWM_PIO35~input_o\ : std_logic;
SIGNAL \bWM_PIO36~input_o\ : std_logic;
SIGNAL \oWM_RX~input_o\ : std_logic;
SIGNAL \oWM_RESET~input_o\ : std_logic;
SIGNAL \bHDMI_SDA~input_o\ : std_logic;
SIGNAL \bHDMI_SCL~input_o\ : std_logic;
SIGNAL \bMIPI_SDA~input_o\ : std_logic;
SIGNAL \bMIPI_SCL~input_o\ : std_logic;
SIGNAL \bMIPI_GP[0]~input_o\ : std_logic;
SIGNAL \bMIPI_GP[1]~input_o\ : std_logic;
SIGNAL \oFLASH_MOSI~input_o\ : std_logic;
SIGNAL \iFLASH_MISO~input_o\ : std_logic;
SIGNAL \oFLASH_HOLD~input_o\ : std_logic;
SIGNAL \oFLASH_WP~input_o\ : std_logic;
SIGNAL \bMKR_D[5]~input_o\ : std_logic;
SIGNAL \bMKR_D[6]~input_o\ : std_logic;
SIGNAL wOSC_CLK : std_logic;
SIGNAL \wOSC_CLK~clkctrl_outclk\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|count[0]~3_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~1\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~2_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~3\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~4_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~5\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~6_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~7\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~8_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~9\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~10_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|count~2_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~11\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~12_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~13\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~14_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Equal0~8_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~15\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~16_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|count~1_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~17\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~18_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|count~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~19\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~20_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~21\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~22_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~23\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~24_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~25\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~26_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~27\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~28_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~29\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~30_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~31\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~32_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~33\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~34_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~35\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~36_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~37\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~38_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~39\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~40_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~41\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~42_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~43\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~44_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~45\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~46_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~47\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~48_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~49\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~50_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~51\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~52_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~53\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~54_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~55\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~56_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~57\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~58_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~59\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~60_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~61\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Add0~62_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Equal0~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Equal0~3_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Equal0~2_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Equal0~1_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Equal0~4_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Equal0~5_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Equal0~6_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Equal0~7_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Equal0~9_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|Equal0~10_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|tmp~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|tmp~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst5|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Selector21~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Data_Bits~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|next_state.State_Digit1Wait~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|current_state.State_Digit1Wait~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector10~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|current_state.State_Digit2Trasmit~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|next_state.State_Digit2Wait~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|current_state.State_Digit2Wait~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector11~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|current_state.State_Digit3Trasmit~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|next_state.State_Digit3Wait~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|current_state.State_Digit3Wait~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector12~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|current_state.State_Digit4Trasmit~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|next_state.State_Digit4Wait~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|current_state.State_Digit4Wait~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector13~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|current_state.State_CRTrasmit~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|next_state.State_CRWait~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|current_state.State_CRWait~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector14~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|current_state.State_LFTrasmit~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|WideOr0~1_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Selector19~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|r_SM_Main.s_Idle~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Selector18~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Selector17~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Selector17~1_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Selector16~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Selector16~1_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit~1_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Selector0~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|o_TX_Active~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|next_state.State_LFWait~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|current_state.State_LFWait~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|next_state.State_Measure~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|current_state.State_Measure~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|count~5_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~1\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~2_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|count~4_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~3\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~4_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|count~3_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~5\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~6_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~7\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~8_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~9\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~10_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|count~2_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~11\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~12_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|count~1_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~13\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~14_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~15\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~16_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|count~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~17\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~18_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~19\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~20_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~21\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~22_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Equal0~6_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~23\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~24_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~25\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~26_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~27\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~28_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~29\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~30_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Equal0~5_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Equal0~7_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~31\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~32_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~33\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~34_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~35\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~36_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~37\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~38_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~39\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~40_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~41\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~42_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~43\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~44_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~45\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~46_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Equal0~2_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~47\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~48_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~49\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~50_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~51\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~52_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~53\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~54_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Equal0~1_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Equal0~3_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~55\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~56_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~57\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~58_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~59\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~60_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~61\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Add0~62_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Equal0~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Equal0~4_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Equal0~8_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Equal0~9_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|Equal0~10_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|tmp~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|tmp~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \bMKR_D[7]~input_o\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|next_state~6_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|next_state.Triggering~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|current_state.Triggering~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Selector1~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|next_state.Waiting~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|current_state.Waiting~feeder_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|current_state.Waiting~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Selector2~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|next_state.Measuring~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|current_state.Measuring~feeder_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|current_state.Measuring~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Add0~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Selector14~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Add0~1\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Add0~2_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Selector13~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Add0~3\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Add0~4_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Selector12~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Add0~5\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Add0~6_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Selector11~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Add0~7\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Add0~8_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Selector10~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Add0~9\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Add0~10_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Selector9~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Add0~11\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Add0~12_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Selector8~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Add0~13\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Add0~14_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Selector7~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Add0~15\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Add0~16_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Selector6~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Add0~17\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Add0~18_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Selector5~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Add0~19\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Add0~20_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Selector4~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Add0~21\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Add0~22_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Selector3~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|LessThan0~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|process_1~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|process_1~1_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|process_1~2_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Selector0~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|next_state.Ready~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|current_state.Ready~feeder_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|current_state.Ready~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Finished~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Finished~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector8~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|current_state.State_Wait~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector9~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|current_state.State_Digit1Trasmit~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|WideOr0~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Selector20~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Selector20~1_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Start_Bit~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Selector3~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Add0~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Selector15~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Add0~1\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Add0~2_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Selector14~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Add0~3\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Add0~4_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Selector13~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Add0~5\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Add0~6_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Selector12~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Add0~7\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Add0~8_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Selector11~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Add0~9\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Add0~10_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Selector10~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Add0~11\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Add0~12_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Selector9~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Add0~13\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Add0~14_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Selector8~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Add0~15\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Add0~16_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Selector7~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Add0~17\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Add0~18_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Selector6~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Add0~19\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Add0~20_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Selector5~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Add0~21\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Add0~22_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Selector4~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Add0~23\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Add0~24_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Selector3~1_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|LessThan1~1_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|LessThan1~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|LessThan1~2_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|LessThan1~3_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|r_SM_Main~7_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Selector1~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Pulse_len~6_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Pulse_len~5_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Pulse_len~1_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Pulse_len~4_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Pulse_len~2_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Pulse_len~3_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~5_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~6_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~4_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~8_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~7_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~9_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~10_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~12_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Pulse_len~7_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~11_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~15_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Pulse_len~8_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~14_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~13_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~32_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|LessThan2~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~25_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~24_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~26_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~30_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|LessThan10~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~28_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~56_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~29_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~23_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|LessThan13~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~33_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~27_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~34_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~31_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~35_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~37_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~17_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~18_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Pulse_len~9_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~16_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~36_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~38_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~39_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~41_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~21_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Pulse_len~10_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~19_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~20_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~22_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~40_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|LessThan23~1_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Temp_char~6_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector3~2_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Pulse_len~11_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|LessThan18~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|LessThan22~1_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Temp_char~7_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Pulse_len~12_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector3~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~54_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Temp_char~5_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector3~1_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector1~3_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector1~14_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~47_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~43_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~48_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~44_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~45_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~49_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~46_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~51_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~50_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|WideOr1~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~42_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~52_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|LessThan24~1_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector3~3_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector3~4_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|LessThan23~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector2~2_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|LessThan20~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector2~3_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector2~4_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|WideOr2~1_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|LessThan24~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector2~6_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector2~5_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Mux0~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector1~9_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|WideOr2~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector1~11_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector1~10_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~53_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|bcd~55_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|LessThan22~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector1~12_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector1~13_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector0~1_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst1|Add22~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector0~2_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|WideOr2~combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector0~0_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst4|Selector0~3_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Mux0~1_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Selector1~1_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|Selector1~2_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst3|o_TX_Serial~q\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Trig~feeder_combout\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Trig~q\ : std_logic;
SIGNAL \iCLK~input_o\ : std_logic;
SIGNAL \PLL_inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_outclk\ : std_logic;
SIGNAL \ultrasonic_serial_inst|inst|Pulse_len\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \PLL_inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ultrasonic_serial_inst|inst3|r_TX_Data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ultrasonic_serial_inst|inst5|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ultrasonic_serial_inst|inst3|r_Bit_Index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ultrasonic_serial_inst|inst2|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ultrasonic_serial_inst|inst3|r_Clk_Count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ultrasonic_serial_inst|inst|count\ : std_logic_vector(11 DOWNTO 0);

BEGIN

\oHDMI_TX[0](n)\ <= \ww_oHDMI_TX[0](n)\;
\oHDMI_TX[1](n)\ <= \ww_oHDMI_TX[1](n)\;
\oHDMI_TX[2](n)\ <= \ww_oHDMI_TX[2](n)\;
\oHDMI_CLK(n)\ <= \ww_oHDMI_CLK(n)\;
\ww_iMIPI_D[0](n)\ <= \iMIPI_D[0](n)\;
\ww_iMIPI_D[1](n)\ <= \iMIPI_D[1](n)\;
\ww_iMIPI_CLK(n)\ <= \iMIPI_CLK(n)\;
ww_iCLK <= iCLK;
ww_iRESETn <= iRESETn;
ww_iSAM_INT <= iSAM_INT;
oSAM_INT <= ww_oSAM_INT;
oSDRAM_CLK <= ww_oSDRAM_CLK;
oSDRAM_ADDR <= ww_oSDRAM_ADDR;
oSDRAM_BA <= ww_oSDRAM_BA;
oSDRAM_CASn <= ww_oSDRAM_CASn;
oSDRAM_CKE <= ww_oSDRAM_CKE;
oSDRAM_CSn <= ww_oSDRAM_CSn;
bSDRAM_DQ <= ww_bSDRAM_DQ;
oSDRAM_DQM <= ww_oSDRAM_DQM;
oSDRAM_RASn <= ww_oSDRAM_RASn;
oSDRAM_WEn <= ww_oSDRAM_WEn;
bMKR_AREF <= ww_bMKR_AREF;
bMKR_A <= ww_bMKR_A;
bMKR_D <= ww_bMKR_D;
bPEX_RST <= ww_bPEX_RST;
bPEX_PIN6 <= ww_bPEX_PIN6;
bPEX_PIN8 <= ww_bPEX_PIN8;
bPEX_PIN10 <= ww_bPEX_PIN10;
ww_iPEX_PIN11 <= iPEX_PIN11;
bPEX_PIN12 <= ww_bPEX_PIN12;
ww_iPEX_PIN13 <= iPEX_PIN13;
bPEX_PIN14 <= ww_bPEX_PIN14;
bPEX_PIN16 <= ww_bPEX_PIN16;
bPEX_PIN20 <= ww_bPEX_PIN20;
ww_iPEX_PIN23 <= iPEX_PIN23;
ww_iPEX_PIN25 <= iPEX_PIN25;
bPEX_PIN28 <= ww_bPEX_PIN28;
bPEX_PIN30 <= ww_bPEX_PIN30;
ww_iPEX_PIN31 <= iPEX_PIN31;
bPEX_PIN32 <= ww_bPEX_PIN32;
ww_iPEX_PIN33 <= iPEX_PIN33;
bPEX_PIN42 <= ww_bPEX_PIN42;
bPEX_PIN44 <= ww_bPEX_PIN44;
bPEX_PIN45 <= ww_bPEX_PIN45;
bPEX_PIN46 <= ww_bPEX_PIN46;
bPEX_PIN47 <= ww_bPEX_PIN47;
bPEX_PIN48 <= ww_bPEX_PIN48;
bPEX_PIN49 <= ww_bPEX_PIN49;
bPEX_PIN51 <= ww_bPEX_PIN51;
bWM_PIO1 <= ww_bWM_PIO1;
bWM_PIO2 <= ww_bWM_PIO2;
bWM_PIO3 <= ww_bWM_PIO3;
bWM_PIO4 <= ww_bWM_PIO4;
bWM_PIO5 <= ww_bWM_PIO5;
bWM_PIO7 <= ww_bWM_PIO7;
bWM_PIO8 <= ww_bWM_PIO8;
bWM_PIO18 <= ww_bWM_PIO18;
bWM_PIO20 <= ww_bWM_PIO20;
bWM_PIO21 <= ww_bWM_PIO21;
bWM_PIO27 <= ww_bWM_PIO27;
bWM_PIO28 <= ww_bWM_PIO28;
bWM_PIO29 <= ww_bWM_PIO29;
bWM_PIO31 <= ww_bWM_PIO31;
ww_iWM_PIO32 <= iWM_PIO32;
bWM_PIO34 <= ww_bWM_PIO34;
bWM_PIO35 <= ww_bWM_PIO35;
bWM_PIO36 <= ww_bWM_PIO36;
ww_iWM_TX <= iWM_TX;
oWM_RX <= ww_oWM_RX;
oWM_RESET <= ww_oWM_RESET;
oHDMI_TX <= ww_oHDMI_TX;
oHDMI_CLK <= ww_oHDMI_CLK;
bHDMI_SDA <= ww_bHDMI_SDA;
bHDMI_SCL <= ww_bHDMI_SCL;
ww_iHDMI_HPD <= iHDMI_HPD;
ww_iMIPI_D <= iMIPI_D;
ww_iMIPI_CLK <= iMIPI_CLK;
bMIPI_SDA <= ww_bMIPI_SDA;
bMIPI_SCL <= ww_bMIPI_SCL;
bMIPI_GP <= ww_bMIPI_GP;
oFLASH_SCK <= ww_oFLASH_SCK;
oFLASH_CS <= ww_oFLASH_CS;
oFLASH_MOSI <= ww_oFLASH_MOSI;
iFLASH_MISO <= ww_iFLASH_MISO;
oFLASH_HOLD <= ww_oFLASH_HOLD;
oFLASH_WP <= ww_oFLASH_WP;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\PLL_inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \iCLK~input_o\);

\PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\wOSC_CLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & wOSC_CLK);

\PLL_inst|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(3));

\ultrasonic_serial_inst|inst5|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ultrasonic_serial_inst|inst5|tmp~q\);

\ultrasonic_serial_inst|inst2|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ultrasonic_serial_inst|inst2|tmp~q\);

-- Location: IOOBUF_X0_Y5_N9
\oSAM_INT~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSAM_INT);

-- Location: IOOBUF_X35_Y29_N9
\oSDRAM_CLK~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_oSDRAM_CLK);

-- Location: IOOBUF_X32_Y29_N23
\oSDRAM_ADDR[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_ADDR(0));

-- Location: IOOBUF_X32_Y29_N30
\oSDRAM_ADDR[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_ADDR(1));

-- Location: IOOBUF_X28_Y29_N16
\oSDRAM_ADDR[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_ADDR(2));

-- Location: IOOBUF_X35_Y29_N2
\oSDRAM_ADDR[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_ADDR(3));

-- Location: IOOBUF_X39_Y29_N9
\oSDRAM_ADDR[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_ADDR(4));

-- Location: IOOBUF_X39_Y29_N2
\oSDRAM_ADDR[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_ADDR(5));

-- Location: IOOBUF_X39_Y29_N30
\oSDRAM_ADDR[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_ADDR(6));

-- Location: IOOBUF_X37_Y29_N2
\oSDRAM_ADDR[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_ADDR(7));

-- Location: IOOBUF_X32_Y29_N2
\oSDRAM_ADDR[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_ADDR(8));

-- Location: IOOBUF_X23_Y29_N2
\oSDRAM_ADDR[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_ADDR(9));

-- Location: IOOBUF_X37_Y29_N23
\oSDRAM_ADDR[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_ADDR(10));

-- Location: IOOBUF_X32_Y29_N9
\oSDRAM_ADDR[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_ADDR(11));

-- Location: IOOBUF_X26_Y29_N23
\oSDRAM_BA[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_BA(0));

-- Location: IOOBUF_X26_Y29_N30
\oSDRAM_BA[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_BA(1));

-- Location: IOOBUF_X11_Y29_N9
\oSDRAM_CASn~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_CASn);

-- Location: IOOBUF_X21_Y29_N9
\oSDRAM_CKE~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_CKE);

-- Location: IOOBUF_X30_Y29_N16
\oSDRAM_CSn~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_CSn);

-- Location: IOOBUF_X11_Y29_N2
\oSDRAM_DQM[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_DQM(0));

-- Location: IOOBUF_X26_Y29_N16
\oSDRAM_DQM[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_DQM(1));

-- Location: IOOBUF_X23_Y29_N9
\oSDRAM_RASn~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_RASn);

-- Location: IOOBUF_X30_Y29_N23
\oSDRAM_WEn~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_WEn);

-- Location: IOOBUF_X41_Y3_N9
\oHDMI_TX[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oHDMI_TX(0),
	obar => \ww_oHDMI_TX[0](n)\);

-- Location: IOOBUF_X41_Y13_N23
\oHDMI_TX[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oHDMI_TX(1),
	obar => \ww_oHDMI_TX[1](n)\);

-- Location: IOOBUF_X41_Y13_N9
\oHDMI_TX[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oHDMI_TX(2),
	obar => \ww_oHDMI_TX[2](n)\);

-- Location: IOOBUF_X41_Y5_N2
\oHDMI_CLK~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oHDMI_CLK,
	obar => \ww_oHDMI_CLK(n)\);

-- Location: IOOBUF_X0_Y20_N16
\oFLASH_SCK~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oFLASH_SCK);

-- Location: IOOBUF_X0_Y24_N9
\oFLASH_CS~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oFLASH_CS);

-- Location: IOOBUF_X3_Y29_N16
\bSDRAM_DQ[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bSDRAM_DQ(0));

-- Location: IOOBUF_X3_Y29_N9
\bSDRAM_DQ[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bSDRAM_DQ(1));

-- Location: IOOBUF_X1_Y29_N2
\bSDRAM_DQ[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bSDRAM_DQ(2));

-- Location: IOOBUF_X3_Y29_N30
\bSDRAM_DQ[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bSDRAM_DQ(3));

-- Location: IOOBUF_X3_Y29_N2
\bSDRAM_DQ[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bSDRAM_DQ(4));

-- Location: IOOBUF_X5_Y29_N2
\bSDRAM_DQ[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bSDRAM_DQ(5));

-- Location: IOOBUF_X5_Y29_N16
\bSDRAM_DQ[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bSDRAM_DQ(6));

-- Location: IOOBUF_X9_Y29_N2
\bSDRAM_DQ[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bSDRAM_DQ(7));

-- Location: IOOBUF_X14_Y29_N30
\bSDRAM_DQ[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bSDRAM_DQ(8));

-- Location: IOOBUF_X14_Y29_N2
\bSDRAM_DQ[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bSDRAM_DQ(9));

-- Location: IOOBUF_X7_Y29_N9
\bSDRAM_DQ[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bSDRAM_DQ(10));

-- Location: IOOBUF_X14_Y29_N23
\bSDRAM_DQ[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bSDRAM_DQ(11));

-- Location: IOOBUF_X7_Y29_N30
\bSDRAM_DQ[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bSDRAM_DQ(12));

-- Location: IOOBUF_X14_Y29_N9
\bSDRAM_DQ[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bSDRAM_DQ(13));

-- Location: IOOBUF_X5_Y29_N23
\bSDRAM_DQ[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bSDRAM_DQ(14));

-- Location: IOOBUF_X9_Y29_N9
\bSDRAM_DQ[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bSDRAM_DQ(15));

-- Location: IOOBUF_X0_Y26_N16
\bMKR_AREF~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bMKR_AREF);

-- Location: IOOBUF_X0_Y25_N2
\bMKR_A[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bMKR_A(0));

-- Location: IOOBUF_X1_Y29_N23
\bMKR_A[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bMKR_A(1));

-- Location: IOOBUF_X11_Y29_N30
\bMKR_A[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bMKR_A(2));

-- Location: IOOBUF_X0_Y24_N16
\bMKR_A[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bMKR_A(3));

-- Location: IOOBUF_X1_Y29_N30
\bMKR_A[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bMKR_A(4));

-- Location: IOOBUF_X0_Y25_N16
\bMKR_A[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bMKR_A(5));

-- Location: IOOBUF_X0_Y21_N2
\bMKR_A[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bMKR_A(6));

-- Location: IOOBUF_X0_Y21_N23
\bMKR_D[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bMKR_D(0));

-- Location: IOOBUF_X1_Y0_N2
\bMKR_D[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bMKR_D(1));

-- Location: IOOBUF_X3_Y0_N30
\bMKR_D[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bMKR_D(2));

-- Location: IOOBUF_X3_Y0_N16
\bMKR_D[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bMKR_D(3));

-- Location: IOOBUF_X3_Y0_N9
\bMKR_D[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bMKR_D(4));

-- Location: IOOBUF_X41_Y19_N16
\bMKR_D[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bMKR_D(8));

-- Location: IOOBUF_X41_Y19_N9
\bMKR_D[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bMKR_D(9));

-- Location: IOOBUF_X41_Y27_N23
\bMKR_D[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bMKR_D(10));

-- Location: IOOBUF_X41_Y27_N16
\bMKR_D[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bMKR_D(11));

-- Location: IOOBUF_X41_Y19_N2
\bMKR_D[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bMKR_D(12));

-- Location: IOOBUF_X37_Y29_N16
\bMKR_D[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bMKR_D(13));

-- Location: IOOBUF_X28_Y29_N9
\bMKR_D[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bMKR_D(14));

-- Location: IOOBUF_X28_Y0_N23
\bPEX_RST~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bPEX_RST);

-- Location: IOOBUF_X21_Y0_N30
\bPEX_PIN6~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bPEX_PIN6);

-- Location: IOOBUF_X16_Y0_N16
\bPEX_PIN8~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bPEX_PIN8);

-- Location: IOOBUF_X19_Y0_N2
\bPEX_PIN10~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bPEX_PIN10);

-- Location: IOOBUF_X19_Y0_N9
\bPEX_PIN12~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bPEX_PIN12);

-- Location: IOOBUF_X19_Y0_N30
\bPEX_PIN14~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bPEX_PIN14);

-- Location: IOOBUF_X35_Y0_N23
\bPEX_PIN16~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bPEX_PIN16);

-- Location: IOOBUF_X30_Y0_N16
\bPEX_PIN20~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bPEX_PIN20);

-- Location: IOOBUF_X30_Y0_N2
\bPEX_PIN28~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bPEX_PIN28);

-- Location: IOOBUF_X26_Y0_N2
\bPEX_PIN30~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bPEX_PIN30);

-- Location: IOOBUF_X41_Y18_N2
\bPEX_PIN32~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bPEX_PIN32);

-- Location: IOOBUF_X30_Y0_N9
\bPEX_PIN42~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bPEX_PIN42);

-- Location: IOOBUF_X37_Y0_N9
\bPEX_PIN44~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bPEX_PIN44);

-- Location: IOOBUF_X35_Y0_N2
\bPEX_PIN45~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bPEX_PIN45);

-- Location: IOOBUF_X37_Y0_N2
\bPEX_PIN46~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bPEX_PIN46);

-- Location: IOOBUF_X35_Y0_N9
\bPEX_PIN47~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bPEX_PIN47);

-- Location: IOOBUF_X41_Y23_N2
\bPEX_PIN48~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bPEX_PIN48);

-- Location: IOOBUF_X41_Y24_N9
\bPEX_PIN49~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bPEX_PIN49);

-- Location: IOOBUF_X41_Y24_N2
\bPEX_PIN51~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bPEX_PIN51);

-- Location: IOOBUF_X26_Y0_N9
\bWM_PIO1~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bWM_PIO1);

-- Location: IOOBUF_X26_Y0_N30
\bWM_PIO2~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bWM_PIO2);

-- Location: IOOBUF_X37_Y0_N30
\bWM_PIO3~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bWM_PIO3);

-- Location: IOOBUF_X26_Y0_N16
\bWM_PIO4~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bWM_PIO4);

-- Location: IOOBUF_X7_Y0_N16
\bWM_PIO5~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bWM_PIO5);

-- Location: IOOBUF_X14_Y0_N23
\bWM_PIO7~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bWM_PIO7);

-- Location: IOOBUF_X7_Y0_N23
\bWM_PIO8~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bWM_PIO8);

-- Location: IOOBUF_X14_Y0_N2
\bWM_PIO18~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bWM_PIO18);

-- Location: IOOBUF_X14_Y0_N9
\bWM_PIO20~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bWM_PIO20);

-- Location: IOOBUF_X16_Y0_N30
\bWM_PIO21~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bWM_PIO21);

-- Location: IOOBUF_X23_Y0_N9
\bWM_PIO27~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bWM_PIO27);

-- Location: IOOBUF_X35_Y0_N16
\bWM_PIO28~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bWM_PIO28);

-- Location: IOOBUF_X26_Y0_N23
\bWM_PIO29~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bWM_PIO29);

-- Location: IOOBUF_X7_Y0_N30
\bWM_PIO31~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bWM_PIO31);

-- Location: IOOBUF_X7_Y0_N9
\bWM_PIO34~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bWM_PIO34);

-- Location: IOOBUF_X5_Y0_N2
\bWM_PIO35~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bWM_PIO35);

-- Location: IOOBUF_X0_Y5_N16
\bWM_PIO36~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bWM_PIO36);

-- Location: IOOBUF_X16_Y0_N23
\oWM_RX~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_oWM_RX);

-- Location: IOOBUF_X0_Y4_N23
\oWM_RESET~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_oWM_RESET);

-- Location: IOOBUF_X0_Y4_N2
\bHDMI_SDA~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bHDMI_SDA);

-- Location: IOOBUF_X0_Y5_N23
\bHDMI_SCL~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bHDMI_SCL);

-- Location: IOOBUF_X0_Y3_N2
\bMIPI_SDA~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bMIPI_SDA);

-- Location: IOOBUF_X0_Y3_N9
\bMIPI_SCL~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bMIPI_SCL);

-- Location: IOOBUF_X14_Y0_N16
\bMIPI_GP[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bMIPI_GP(0));

-- Location: IOOBUF_X30_Y0_N23
\bMIPI_GP[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bMIPI_GP(1));

-- Location: IOOBUF_X0_Y25_N9
\oFLASH_MOSI~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_oFLASH_MOSI);

-- Location: IOOBUF_X0_Y20_N23
\iFLASH_MISO~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_iFLASH_MISO);

-- Location: IOOBUF_X16_Y0_N9
\oFLASH_HOLD~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_oFLASH_HOLD);

-- Location: IOOBUF_X16_Y0_N2
\oFLASH_WP~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_oFLASH_WP);

-- Location: IOOBUF_X5_Y0_N9
\bMKR_D[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ultrasonic_serial_inst|inst3|o_TX_Serial~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_bMKR_D(5));

-- Location: IOOBUF_X41_Y18_N23
\bMKR_D[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ultrasonic_serial_inst|inst|Trig~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_bMKR_D(6));

-- Location: IOOBUF_X41_Y18_N16
\bMKR_D[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_bMKR_D(7));

-- Location: OSCILLATOR_X1_Y15_N3
osc : cyclone10lp_oscillator
PORT MAP (
	oscena => VCC,
	clkout => wOSC_CLK);

-- Location: CLKCTRL_G4
\wOSC_CLK~clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \wOSC_CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \wOSC_CLK~clkctrl_outclk\);

-- Location: LCCOMB_X28_Y22_N0
\ultrasonic_serial_inst|inst5|Add0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~0_combout\ = \ultrasonic_serial_inst|inst5|count\(0) $ (GND)
-- \ultrasonic_serial_inst|inst5|Add0~1\ = CARRY(!\ultrasonic_serial_inst|inst5|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst5|count\(0),
	datad => VCC,
	combout => \ultrasonic_serial_inst|inst5|Add0~0_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~1\);

-- Location: LCCOMB_X27_Y22_N28
\ultrasonic_serial_inst|inst5|count[0]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|count[0]~3_combout\ = !\ultrasonic_serial_inst|inst5|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ultrasonic_serial_inst|inst5|Add0~0_combout\,
	combout => \ultrasonic_serial_inst|inst5|count[0]~3_combout\);

-- Location: FF_X27_Y22_N29
\ultrasonic_serial_inst|inst5|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|count[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(0));

-- Location: LCCOMB_X28_Y22_N2
\ultrasonic_serial_inst|inst5|Add0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~2_combout\ = (\ultrasonic_serial_inst|inst5|count\(1) & (!\ultrasonic_serial_inst|inst5|Add0~1\)) # (!\ultrasonic_serial_inst|inst5|count\(1) & ((\ultrasonic_serial_inst|inst5|Add0~1\) # (GND)))
-- \ultrasonic_serial_inst|inst5|Add0~3\ = CARRY((!\ultrasonic_serial_inst|inst5|Add0~1\) # (!\ultrasonic_serial_inst|inst5|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst5|count\(1),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~1\,
	combout => \ultrasonic_serial_inst|inst5|Add0~2_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~3\);

-- Location: FF_X28_Y22_N3
\ultrasonic_serial_inst|inst5|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(1));

-- Location: LCCOMB_X28_Y22_N4
\ultrasonic_serial_inst|inst5|Add0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~4_combout\ = (\ultrasonic_serial_inst|inst5|count\(2) & (\ultrasonic_serial_inst|inst5|Add0~3\ $ (GND))) # (!\ultrasonic_serial_inst|inst5|count\(2) & (!\ultrasonic_serial_inst|inst5|Add0~3\ & VCC))
-- \ultrasonic_serial_inst|inst5|Add0~5\ = CARRY((\ultrasonic_serial_inst|inst5|count\(2) & !\ultrasonic_serial_inst|inst5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst5|count\(2),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~3\,
	combout => \ultrasonic_serial_inst|inst5|Add0~4_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~5\);

-- Location: FF_X28_Y22_N5
\ultrasonic_serial_inst|inst5|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(2));

-- Location: LCCOMB_X28_Y22_N6
\ultrasonic_serial_inst|inst5|Add0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~6_combout\ = (\ultrasonic_serial_inst|inst5|count\(3) & (!\ultrasonic_serial_inst|inst5|Add0~5\)) # (!\ultrasonic_serial_inst|inst5|count\(3) & ((\ultrasonic_serial_inst|inst5|Add0~5\) # (GND)))
-- \ultrasonic_serial_inst|inst5|Add0~7\ = CARRY((!\ultrasonic_serial_inst|inst5|Add0~5\) # (!\ultrasonic_serial_inst|inst5|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst5|count\(3),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~5\,
	combout => \ultrasonic_serial_inst|inst5|Add0~6_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~7\);

-- Location: FF_X28_Y22_N7
\ultrasonic_serial_inst|inst5|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(3));

-- Location: LCCOMB_X28_Y22_N8
\ultrasonic_serial_inst|inst5|Add0~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~8_combout\ = (\ultrasonic_serial_inst|inst5|count\(4) & (\ultrasonic_serial_inst|inst5|Add0~7\ $ (GND))) # (!\ultrasonic_serial_inst|inst5|count\(4) & (!\ultrasonic_serial_inst|inst5|Add0~7\ & VCC))
-- \ultrasonic_serial_inst|inst5|Add0~9\ = CARRY((\ultrasonic_serial_inst|inst5|count\(4) & !\ultrasonic_serial_inst|inst5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst5|count\(4),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~7\,
	combout => \ultrasonic_serial_inst|inst5|Add0~8_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~9\);

-- Location: FF_X28_Y22_N9
\ultrasonic_serial_inst|inst5|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(4));

-- Location: LCCOMB_X28_Y22_N10
\ultrasonic_serial_inst|inst5|Add0~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~10_combout\ = (\ultrasonic_serial_inst|inst5|count\(5) & (!\ultrasonic_serial_inst|inst5|Add0~9\)) # (!\ultrasonic_serial_inst|inst5|count\(5) & ((\ultrasonic_serial_inst|inst5|Add0~9\) # (GND)))
-- \ultrasonic_serial_inst|inst5|Add0~11\ = CARRY((!\ultrasonic_serial_inst|inst5|Add0~9\) # (!\ultrasonic_serial_inst|inst5|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst5|count\(5),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~9\,
	combout => \ultrasonic_serial_inst|inst5|Add0~10_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~11\);

-- Location: LCCOMB_X27_Y22_N22
\ultrasonic_serial_inst|inst5|count~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|count~2_combout\ = (\ultrasonic_serial_inst|inst5|Add0~10_combout\ & !\ultrasonic_serial_inst|inst5|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ultrasonic_serial_inst|inst5|Add0~10_combout\,
	datad => \ultrasonic_serial_inst|inst5|Equal0~10_combout\,
	combout => \ultrasonic_serial_inst|inst5|count~2_combout\);

-- Location: FF_X27_Y22_N23
\ultrasonic_serial_inst|inst5|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(5));

-- Location: LCCOMB_X28_Y22_N12
\ultrasonic_serial_inst|inst5|Add0~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~12_combout\ = (\ultrasonic_serial_inst|inst5|count\(6) & (\ultrasonic_serial_inst|inst5|Add0~11\ $ (GND))) # (!\ultrasonic_serial_inst|inst5|count\(6) & (!\ultrasonic_serial_inst|inst5|Add0~11\ & VCC))
-- \ultrasonic_serial_inst|inst5|Add0~13\ = CARRY((\ultrasonic_serial_inst|inst5|count\(6) & !\ultrasonic_serial_inst|inst5|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst5|count\(6),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~11\,
	combout => \ultrasonic_serial_inst|inst5|Add0~12_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~13\);

-- Location: FF_X28_Y22_N13
\ultrasonic_serial_inst|inst5|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(6));

-- Location: LCCOMB_X28_Y22_N14
\ultrasonic_serial_inst|inst5|Add0~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~14_combout\ = (\ultrasonic_serial_inst|inst5|count\(7) & (!\ultrasonic_serial_inst|inst5|Add0~13\)) # (!\ultrasonic_serial_inst|inst5|count\(7) & ((\ultrasonic_serial_inst|inst5|Add0~13\) # (GND)))
-- \ultrasonic_serial_inst|inst5|Add0~15\ = CARRY((!\ultrasonic_serial_inst|inst5|Add0~13\) # (!\ultrasonic_serial_inst|inst5|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst5|count\(7),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~13\,
	combout => \ultrasonic_serial_inst|inst5|Add0~14_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~15\);

-- Location: FF_X28_Y22_N15
\ultrasonic_serial_inst|inst5|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(7));

-- Location: LCCOMB_X27_Y22_N12
\ultrasonic_serial_inst|inst5|Equal0~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Equal0~8_combout\ = (\ultrasonic_serial_inst|inst5|count\(5) & (!\ultrasonic_serial_inst|inst5|count\(4) & (!\ultrasonic_serial_inst|inst5|count\(7) & !\ultrasonic_serial_inst|inst5|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst5|count\(5),
	datab => \ultrasonic_serial_inst|inst5|count\(4),
	datac => \ultrasonic_serial_inst|inst5|count\(7),
	datad => \ultrasonic_serial_inst|inst5|count\(6),
	combout => \ultrasonic_serial_inst|inst5|Equal0~8_combout\);

-- Location: LCCOMB_X28_Y22_N16
\ultrasonic_serial_inst|inst5|Add0~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~16_combout\ = (\ultrasonic_serial_inst|inst5|count\(8) & (\ultrasonic_serial_inst|inst5|Add0~15\ $ (GND))) # (!\ultrasonic_serial_inst|inst5|count\(8) & (!\ultrasonic_serial_inst|inst5|Add0~15\ & VCC))
-- \ultrasonic_serial_inst|inst5|Add0~17\ = CARRY((\ultrasonic_serial_inst|inst5|count\(8) & !\ultrasonic_serial_inst|inst5|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst5|count\(8),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~15\,
	combout => \ultrasonic_serial_inst|inst5|Add0~16_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~17\);

-- Location: LCCOMB_X27_Y22_N6
\ultrasonic_serial_inst|inst5|count~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|count~1_combout\ = (!\ultrasonic_serial_inst|inst5|Equal0~10_combout\ & \ultrasonic_serial_inst|inst5|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst5|Equal0~10_combout\,
	datad => \ultrasonic_serial_inst|inst5|Add0~16_combout\,
	combout => \ultrasonic_serial_inst|inst5|count~1_combout\);

-- Location: FF_X27_Y22_N7
\ultrasonic_serial_inst|inst5|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(8));

-- Location: LCCOMB_X28_Y22_N18
\ultrasonic_serial_inst|inst5|Add0~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~18_combout\ = (\ultrasonic_serial_inst|inst5|count\(9) & (!\ultrasonic_serial_inst|inst5|Add0~17\)) # (!\ultrasonic_serial_inst|inst5|count\(9) & ((\ultrasonic_serial_inst|inst5|Add0~17\) # (GND)))
-- \ultrasonic_serial_inst|inst5|Add0~19\ = CARRY((!\ultrasonic_serial_inst|inst5|Add0~17\) # (!\ultrasonic_serial_inst|inst5|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst5|count\(9),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~17\,
	combout => \ultrasonic_serial_inst|inst5|Add0~18_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~19\);

-- Location: LCCOMB_X27_Y22_N20
\ultrasonic_serial_inst|inst5|count~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|count~0_combout\ = (!\ultrasonic_serial_inst|inst5|Equal0~10_combout\ & \ultrasonic_serial_inst|inst5|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst5|Equal0~10_combout\,
	datad => \ultrasonic_serial_inst|inst5|Add0~18_combout\,
	combout => \ultrasonic_serial_inst|inst5|count~0_combout\);

-- Location: FF_X27_Y22_N21
\ultrasonic_serial_inst|inst5|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(9));

-- Location: LCCOMB_X28_Y22_N20
\ultrasonic_serial_inst|inst5|Add0~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~20_combout\ = (\ultrasonic_serial_inst|inst5|count\(10) & (\ultrasonic_serial_inst|inst5|Add0~19\ $ (GND))) # (!\ultrasonic_serial_inst|inst5|count\(10) & (!\ultrasonic_serial_inst|inst5|Add0~19\ & VCC))
-- \ultrasonic_serial_inst|inst5|Add0~21\ = CARRY((\ultrasonic_serial_inst|inst5|count\(10) & !\ultrasonic_serial_inst|inst5|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst5|count\(10),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~19\,
	combout => \ultrasonic_serial_inst|inst5|Add0~20_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~21\);

-- Location: FF_X28_Y22_N21
\ultrasonic_serial_inst|inst5|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(10));

-- Location: LCCOMB_X28_Y22_N22
\ultrasonic_serial_inst|inst5|Add0~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~22_combout\ = (\ultrasonic_serial_inst|inst5|count\(11) & (!\ultrasonic_serial_inst|inst5|Add0~21\)) # (!\ultrasonic_serial_inst|inst5|count\(11) & ((\ultrasonic_serial_inst|inst5|Add0~21\) # (GND)))
-- \ultrasonic_serial_inst|inst5|Add0~23\ = CARRY((!\ultrasonic_serial_inst|inst5|Add0~21\) # (!\ultrasonic_serial_inst|inst5|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst5|count\(11),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~21\,
	combout => \ultrasonic_serial_inst|inst5|Add0~22_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~23\);

-- Location: FF_X28_Y22_N23
\ultrasonic_serial_inst|inst5|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(11));

-- Location: LCCOMB_X28_Y22_N24
\ultrasonic_serial_inst|inst5|Add0~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~24_combout\ = (\ultrasonic_serial_inst|inst5|count\(12) & (\ultrasonic_serial_inst|inst5|Add0~23\ $ (GND))) # (!\ultrasonic_serial_inst|inst5|count\(12) & (!\ultrasonic_serial_inst|inst5|Add0~23\ & VCC))
-- \ultrasonic_serial_inst|inst5|Add0~25\ = CARRY((\ultrasonic_serial_inst|inst5|count\(12) & !\ultrasonic_serial_inst|inst5|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst5|count\(12),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~23\,
	combout => \ultrasonic_serial_inst|inst5|Add0~24_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~25\);

-- Location: FF_X28_Y22_N25
\ultrasonic_serial_inst|inst5|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(12));

-- Location: LCCOMB_X28_Y22_N26
\ultrasonic_serial_inst|inst5|Add0~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~26_combout\ = (\ultrasonic_serial_inst|inst5|count\(13) & (!\ultrasonic_serial_inst|inst5|Add0~25\)) # (!\ultrasonic_serial_inst|inst5|count\(13) & ((\ultrasonic_serial_inst|inst5|Add0~25\) # (GND)))
-- \ultrasonic_serial_inst|inst5|Add0~27\ = CARRY((!\ultrasonic_serial_inst|inst5|Add0~25\) # (!\ultrasonic_serial_inst|inst5|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst5|count\(13),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~25\,
	combout => \ultrasonic_serial_inst|inst5|Add0~26_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~27\);

-- Location: FF_X28_Y22_N27
\ultrasonic_serial_inst|inst5|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(13));

-- Location: LCCOMB_X28_Y22_N28
\ultrasonic_serial_inst|inst5|Add0~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~28_combout\ = (\ultrasonic_serial_inst|inst5|count\(14) & (\ultrasonic_serial_inst|inst5|Add0~27\ $ (GND))) # (!\ultrasonic_serial_inst|inst5|count\(14) & (!\ultrasonic_serial_inst|inst5|Add0~27\ & VCC))
-- \ultrasonic_serial_inst|inst5|Add0~29\ = CARRY((\ultrasonic_serial_inst|inst5|count\(14) & !\ultrasonic_serial_inst|inst5|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst5|count\(14),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~27\,
	combout => \ultrasonic_serial_inst|inst5|Add0~28_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~29\);

-- Location: FF_X28_Y22_N29
\ultrasonic_serial_inst|inst5|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(14));

-- Location: LCCOMB_X28_Y22_N30
\ultrasonic_serial_inst|inst5|Add0~30\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~30_combout\ = (\ultrasonic_serial_inst|inst5|count\(15) & (!\ultrasonic_serial_inst|inst5|Add0~29\)) # (!\ultrasonic_serial_inst|inst5|count\(15) & ((\ultrasonic_serial_inst|inst5|Add0~29\) # (GND)))
-- \ultrasonic_serial_inst|inst5|Add0~31\ = CARRY((!\ultrasonic_serial_inst|inst5|Add0~29\) # (!\ultrasonic_serial_inst|inst5|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst5|count\(15),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~29\,
	combout => \ultrasonic_serial_inst|inst5|Add0~30_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~31\);

-- Location: FF_X28_Y22_N31
\ultrasonic_serial_inst|inst5|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(15));

-- Location: LCCOMB_X28_Y21_N0
\ultrasonic_serial_inst|inst5|Add0~32\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~32_combout\ = (\ultrasonic_serial_inst|inst5|count\(16) & (\ultrasonic_serial_inst|inst5|Add0~31\ $ (GND))) # (!\ultrasonic_serial_inst|inst5|count\(16) & (!\ultrasonic_serial_inst|inst5|Add0~31\ & VCC))
-- \ultrasonic_serial_inst|inst5|Add0~33\ = CARRY((\ultrasonic_serial_inst|inst5|count\(16) & !\ultrasonic_serial_inst|inst5|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst5|count\(16),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~31\,
	combout => \ultrasonic_serial_inst|inst5|Add0~32_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~33\);

-- Location: FF_X28_Y21_N1
\ultrasonic_serial_inst|inst5|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(16));

-- Location: LCCOMB_X28_Y21_N2
\ultrasonic_serial_inst|inst5|Add0~34\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~34_combout\ = (\ultrasonic_serial_inst|inst5|count\(17) & (!\ultrasonic_serial_inst|inst5|Add0~33\)) # (!\ultrasonic_serial_inst|inst5|count\(17) & ((\ultrasonic_serial_inst|inst5|Add0~33\) # (GND)))
-- \ultrasonic_serial_inst|inst5|Add0~35\ = CARRY((!\ultrasonic_serial_inst|inst5|Add0~33\) # (!\ultrasonic_serial_inst|inst5|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst5|count\(17),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~33\,
	combout => \ultrasonic_serial_inst|inst5|Add0~34_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~35\);

-- Location: FF_X28_Y21_N3
\ultrasonic_serial_inst|inst5|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(17));

-- Location: LCCOMB_X28_Y21_N4
\ultrasonic_serial_inst|inst5|Add0~36\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~36_combout\ = (\ultrasonic_serial_inst|inst5|count\(18) & (\ultrasonic_serial_inst|inst5|Add0~35\ $ (GND))) # (!\ultrasonic_serial_inst|inst5|count\(18) & (!\ultrasonic_serial_inst|inst5|Add0~35\ & VCC))
-- \ultrasonic_serial_inst|inst5|Add0~37\ = CARRY((\ultrasonic_serial_inst|inst5|count\(18) & !\ultrasonic_serial_inst|inst5|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst5|count\(18),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~35\,
	combout => \ultrasonic_serial_inst|inst5|Add0~36_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~37\);

-- Location: FF_X28_Y21_N5
\ultrasonic_serial_inst|inst5|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(18));

-- Location: LCCOMB_X28_Y21_N6
\ultrasonic_serial_inst|inst5|Add0~38\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~38_combout\ = (\ultrasonic_serial_inst|inst5|count\(19) & (!\ultrasonic_serial_inst|inst5|Add0~37\)) # (!\ultrasonic_serial_inst|inst5|count\(19) & ((\ultrasonic_serial_inst|inst5|Add0~37\) # (GND)))
-- \ultrasonic_serial_inst|inst5|Add0~39\ = CARRY((!\ultrasonic_serial_inst|inst5|Add0~37\) # (!\ultrasonic_serial_inst|inst5|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst5|count\(19),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~37\,
	combout => \ultrasonic_serial_inst|inst5|Add0~38_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~39\);

-- Location: FF_X28_Y21_N7
\ultrasonic_serial_inst|inst5|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(19));

-- Location: LCCOMB_X28_Y21_N8
\ultrasonic_serial_inst|inst5|Add0~40\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~40_combout\ = (\ultrasonic_serial_inst|inst5|count\(20) & (\ultrasonic_serial_inst|inst5|Add0~39\ $ (GND))) # (!\ultrasonic_serial_inst|inst5|count\(20) & (!\ultrasonic_serial_inst|inst5|Add0~39\ & VCC))
-- \ultrasonic_serial_inst|inst5|Add0~41\ = CARRY((\ultrasonic_serial_inst|inst5|count\(20) & !\ultrasonic_serial_inst|inst5|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst5|count\(20),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~39\,
	combout => \ultrasonic_serial_inst|inst5|Add0~40_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~41\);

-- Location: FF_X28_Y21_N9
\ultrasonic_serial_inst|inst5|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(20));

-- Location: LCCOMB_X28_Y21_N10
\ultrasonic_serial_inst|inst5|Add0~42\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~42_combout\ = (\ultrasonic_serial_inst|inst5|count\(21) & (!\ultrasonic_serial_inst|inst5|Add0~41\)) # (!\ultrasonic_serial_inst|inst5|count\(21) & ((\ultrasonic_serial_inst|inst5|Add0~41\) # (GND)))
-- \ultrasonic_serial_inst|inst5|Add0~43\ = CARRY((!\ultrasonic_serial_inst|inst5|Add0~41\) # (!\ultrasonic_serial_inst|inst5|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst5|count\(21),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~41\,
	combout => \ultrasonic_serial_inst|inst5|Add0~42_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~43\);

-- Location: FF_X28_Y21_N11
\ultrasonic_serial_inst|inst5|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(21));

-- Location: LCCOMB_X28_Y21_N12
\ultrasonic_serial_inst|inst5|Add0~44\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~44_combout\ = (\ultrasonic_serial_inst|inst5|count\(22) & (\ultrasonic_serial_inst|inst5|Add0~43\ $ (GND))) # (!\ultrasonic_serial_inst|inst5|count\(22) & (!\ultrasonic_serial_inst|inst5|Add0~43\ & VCC))
-- \ultrasonic_serial_inst|inst5|Add0~45\ = CARRY((\ultrasonic_serial_inst|inst5|count\(22) & !\ultrasonic_serial_inst|inst5|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst5|count\(22),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~43\,
	combout => \ultrasonic_serial_inst|inst5|Add0~44_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~45\);

-- Location: FF_X28_Y21_N13
\ultrasonic_serial_inst|inst5|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(22));

-- Location: LCCOMB_X28_Y21_N14
\ultrasonic_serial_inst|inst5|Add0~46\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~46_combout\ = (\ultrasonic_serial_inst|inst5|count\(23) & (!\ultrasonic_serial_inst|inst5|Add0~45\)) # (!\ultrasonic_serial_inst|inst5|count\(23) & ((\ultrasonic_serial_inst|inst5|Add0~45\) # (GND)))
-- \ultrasonic_serial_inst|inst5|Add0~47\ = CARRY((!\ultrasonic_serial_inst|inst5|Add0~45\) # (!\ultrasonic_serial_inst|inst5|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst5|count\(23),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~45\,
	combout => \ultrasonic_serial_inst|inst5|Add0~46_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~47\);

-- Location: FF_X28_Y21_N15
\ultrasonic_serial_inst|inst5|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(23));

-- Location: LCCOMB_X28_Y21_N16
\ultrasonic_serial_inst|inst5|Add0~48\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~48_combout\ = (\ultrasonic_serial_inst|inst5|count\(24) & (\ultrasonic_serial_inst|inst5|Add0~47\ $ (GND))) # (!\ultrasonic_serial_inst|inst5|count\(24) & (!\ultrasonic_serial_inst|inst5|Add0~47\ & VCC))
-- \ultrasonic_serial_inst|inst5|Add0~49\ = CARRY((\ultrasonic_serial_inst|inst5|count\(24) & !\ultrasonic_serial_inst|inst5|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst5|count\(24),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~47\,
	combout => \ultrasonic_serial_inst|inst5|Add0~48_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~49\);

-- Location: FF_X28_Y21_N17
\ultrasonic_serial_inst|inst5|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(24));

-- Location: LCCOMB_X28_Y21_N18
\ultrasonic_serial_inst|inst5|Add0~50\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~50_combout\ = (\ultrasonic_serial_inst|inst5|count\(25) & (!\ultrasonic_serial_inst|inst5|Add0~49\)) # (!\ultrasonic_serial_inst|inst5|count\(25) & ((\ultrasonic_serial_inst|inst5|Add0~49\) # (GND)))
-- \ultrasonic_serial_inst|inst5|Add0~51\ = CARRY((!\ultrasonic_serial_inst|inst5|Add0~49\) # (!\ultrasonic_serial_inst|inst5|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst5|count\(25),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~49\,
	combout => \ultrasonic_serial_inst|inst5|Add0~50_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~51\);

-- Location: FF_X28_Y21_N19
\ultrasonic_serial_inst|inst5|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(25));

-- Location: LCCOMB_X28_Y21_N20
\ultrasonic_serial_inst|inst5|Add0~52\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~52_combout\ = (\ultrasonic_serial_inst|inst5|count\(26) & (\ultrasonic_serial_inst|inst5|Add0~51\ $ (GND))) # (!\ultrasonic_serial_inst|inst5|count\(26) & (!\ultrasonic_serial_inst|inst5|Add0~51\ & VCC))
-- \ultrasonic_serial_inst|inst5|Add0~53\ = CARRY((\ultrasonic_serial_inst|inst5|count\(26) & !\ultrasonic_serial_inst|inst5|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst5|count\(26),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~51\,
	combout => \ultrasonic_serial_inst|inst5|Add0~52_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~53\);

-- Location: FF_X28_Y21_N21
\ultrasonic_serial_inst|inst5|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(26));

-- Location: LCCOMB_X28_Y21_N22
\ultrasonic_serial_inst|inst5|Add0~54\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~54_combout\ = (\ultrasonic_serial_inst|inst5|count\(27) & (!\ultrasonic_serial_inst|inst5|Add0~53\)) # (!\ultrasonic_serial_inst|inst5|count\(27) & ((\ultrasonic_serial_inst|inst5|Add0~53\) # (GND)))
-- \ultrasonic_serial_inst|inst5|Add0~55\ = CARRY((!\ultrasonic_serial_inst|inst5|Add0~53\) # (!\ultrasonic_serial_inst|inst5|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst5|count\(27),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~53\,
	combout => \ultrasonic_serial_inst|inst5|Add0~54_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~55\);

-- Location: FF_X28_Y21_N23
\ultrasonic_serial_inst|inst5|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(27));

-- Location: LCCOMB_X28_Y21_N24
\ultrasonic_serial_inst|inst5|Add0~56\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~56_combout\ = (\ultrasonic_serial_inst|inst5|count\(28) & (\ultrasonic_serial_inst|inst5|Add0~55\ $ (GND))) # (!\ultrasonic_serial_inst|inst5|count\(28) & (!\ultrasonic_serial_inst|inst5|Add0~55\ & VCC))
-- \ultrasonic_serial_inst|inst5|Add0~57\ = CARRY((\ultrasonic_serial_inst|inst5|count\(28) & !\ultrasonic_serial_inst|inst5|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst5|count\(28),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~55\,
	combout => \ultrasonic_serial_inst|inst5|Add0~56_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~57\);

-- Location: FF_X28_Y21_N25
\ultrasonic_serial_inst|inst5|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(28));

-- Location: LCCOMB_X28_Y21_N26
\ultrasonic_serial_inst|inst5|Add0~58\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~58_combout\ = (\ultrasonic_serial_inst|inst5|count\(29) & (!\ultrasonic_serial_inst|inst5|Add0~57\)) # (!\ultrasonic_serial_inst|inst5|count\(29) & ((\ultrasonic_serial_inst|inst5|Add0~57\) # (GND)))
-- \ultrasonic_serial_inst|inst5|Add0~59\ = CARRY((!\ultrasonic_serial_inst|inst5|Add0~57\) # (!\ultrasonic_serial_inst|inst5|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst5|count\(29),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~57\,
	combout => \ultrasonic_serial_inst|inst5|Add0~58_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~59\);

-- Location: FF_X28_Y21_N27
\ultrasonic_serial_inst|inst5|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(29));

-- Location: LCCOMB_X28_Y21_N28
\ultrasonic_serial_inst|inst5|Add0~60\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~60_combout\ = (\ultrasonic_serial_inst|inst5|count\(30) & (\ultrasonic_serial_inst|inst5|Add0~59\ $ (GND))) # (!\ultrasonic_serial_inst|inst5|count\(30) & (!\ultrasonic_serial_inst|inst5|Add0~59\ & VCC))
-- \ultrasonic_serial_inst|inst5|Add0~61\ = CARRY((\ultrasonic_serial_inst|inst5|count\(30) & !\ultrasonic_serial_inst|inst5|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst5|count\(30),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst5|Add0~59\,
	combout => \ultrasonic_serial_inst|inst5|Add0~60_combout\,
	cout => \ultrasonic_serial_inst|inst5|Add0~61\);

-- Location: FF_X28_Y21_N29
\ultrasonic_serial_inst|inst5|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(30));

-- Location: LCCOMB_X28_Y21_N30
\ultrasonic_serial_inst|inst5|Add0~62\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Add0~62_combout\ = \ultrasonic_serial_inst|inst5|count\(31) $ (\ultrasonic_serial_inst|inst5|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst5|count\(31),
	cin => \ultrasonic_serial_inst|inst5|Add0~61\,
	combout => \ultrasonic_serial_inst|inst5|Add0~62_combout\);

-- Location: FF_X28_Y21_N31
\ultrasonic_serial_inst|inst5|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|count\(31));

-- Location: LCCOMB_X27_Y21_N10
\ultrasonic_serial_inst|inst5|Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Equal0~0_combout\ = (!\ultrasonic_serial_inst|inst5|count\(29) & (!\ultrasonic_serial_inst|inst5|count\(30) & (!\ultrasonic_serial_inst|inst5|count\(31) & !\ultrasonic_serial_inst|inst5|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst5|count\(29),
	datab => \ultrasonic_serial_inst|inst5|count\(30),
	datac => \ultrasonic_serial_inst|inst5|count\(31),
	datad => \ultrasonic_serial_inst|inst5|count\(28),
	combout => \ultrasonic_serial_inst|inst5|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y21_N18
\ultrasonic_serial_inst|inst5|Equal0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Equal0~3_combout\ = (!\ultrasonic_serial_inst|inst5|count\(19) & (!\ultrasonic_serial_inst|inst5|count\(17) & (!\ultrasonic_serial_inst|inst5|count\(16) & !\ultrasonic_serial_inst|inst5|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst5|count\(19),
	datab => \ultrasonic_serial_inst|inst5|count\(17),
	datac => \ultrasonic_serial_inst|inst5|count\(16),
	datad => \ultrasonic_serial_inst|inst5|count\(18),
	combout => \ultrasonic_serial_inst|inst5|Equal0~3_combout\);

-- Location: LCCOMB_X27_Y21_N4
\ultrasonic_serial_inst|inst5|Equal0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Equal0~2_combout\ = (!\ultrasonic_serial_inst|inst5|count\(23) & (!\ultrasonic_serial_inst|inst5|count\(20) & (!\ultrasonic_serial_inst|inst5|count\(21) & !\ultrasonic_serial_inst|inst5|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst5|count\(23),
	datab => \ultrasonic_serial_inst|inst5|count\(20),
	datac => \ultrasonic_serial_inst|inst5|count\(21),
	datad => \ultrasonic_serial_inst|inst5|count\(22),
	combout => \ultrasonic_serial_inst|inst5|Equal0~2_combout\);

-- Location: LCCOMB_X27_Y21_N12
\ultrasonic_serial_inst|inst5|Equal0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Equal0~1_combout\ = (!\ultrasonic_serial_inst|inst5|count\(24) & (!\ultrasonic_serial_inst|inst5|count\(27) & (!\ultrasonic_serial_inst|inst5|count\(26) & !\ultrasonic_serial_inst|inst5|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst5|count\(24),
	datab => \ultrasonic_serial_inst|inst5|count\(27),
	datac => \ultrasonic_serial_inst|inst5|count\(26),
	datad => \ultrasonic_serial_inst|inst5|count\(25),
	combout => \ultrasonic_serial_inst|inst5|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y21_N0
\ultrasonic_serial_inst|inst5|Equal0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Equal0~4_combout\ = (\ultrasonic_serial_inst|inst5|Equal0~0_combout\ & (\ultrasonic_serial_inst|inst5|Equal0~3_combout\ & (\ultrasonic_serial_inst|inst5|Equal0~2_combout\ & \ultrasonic_serial_inst|inst5|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst5|Equal0~0_combout\,
	datab => \ultrasonic_serial_inst|inst5|Equal0~3_combout\,
	datac => \ultrasonic_serial_inst|inst5|Equal0~2_combout\,
	datad => \ultrasonic_serial_inst|inst5|Equal0~1_combout\,
	combout => \ultrasonic_serial_inst|inst5|Equal0~4_combout\);

-- Location: LCCOMB_X27_Y22_N8
\ultrasonic_serial_inst|inst5|Equal0~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Equal0~5_combout\ = (!\ultrasonic_serial_inst|inst5|count\(13) & (!\ultrasonic_serial_inst|inst5|count\(12) & (!\ultrasonic_serial_inst|inst5|count\(15) & !\ultrasonic_serial_inst|inst5|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst5|count\(13),
	datab => \ultrasonic_serial_inst|inst5|count\(12),
	datac => \ultrasonic_serial_inst|inst5|count\(15),
	datad => \ultrasonic_serial_inst|inst5|count\(14),
	combout => \ultrasonic_serial_inst|inst5|Equal0~5_combout\);

-- Location: LCCOMB_X27_Y22_N10
\ultrasonic_serial_inst|inst5|Equal0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Equal0~6_combout\ = (\ultrasonic_serial_inst|inst5|count\(8) & (\ultrasonic_serial_inst|inst5|count\(9) & (!\ultrasonic_serial_inst|inst5|count\(10) & !\ultrasonic_serial_inst|inst5|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst5|count\(8),
	datab => \ultrasonic_serial_inst|inst5|count\(9),
	datac => \ultrasonic_serial_inst|inst5|count\(10),
	datad => \ultrasonic_serial_inst|inst5|count\(11),
	combout => \ultrasonic_serial_inst|inst5|Equal0~6_combout\);

-- Location: LCCOMB_X27_Y22_N4
\ultrasonic_serial_inst|inst5|Equal0~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Equal0~7_combout\ = (\ultrasonic_serial_inst|inst5|Equal0~5_combout\ & \ultrasonic_serial_inst|inst5|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ultrasonic_serial_inst|inst5|Equal0~5_combout\,
	datad => \ultrasonic_serial_inst|inst5|Equal0~6_combout\,
	combout => \ultrasonic_serial_inst|inst5|Equal0~7_combout\);

-- Location: LCCOMB_X27_Y22_N18
\ultrasonic_serial_inst|inst5|Equal0~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Equal0~9_combout\ = (!\ultrasonic_serial_inst|inst5|count\(2) & (\ultrasonic_serial_inst|inst5|count\(0) & (!\ultrasonic_serial_inst|inst5|count\(3) & !\ultrasonic_serial_inst|inst5|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst5|count\(2),
	datab => \ultrasonic_serial_inst|inst5|count\(0),
	datac => \ultrasonic_serial_inst|inst5|count\(3),
	datad => \ultrasonic_serial_inst|inst5|count\(1),
	combout => \ultrasonic_serial_inst|inst5|Equal0~9_combout\);

-- Location: LCCOMB_X27_Y22_N24
\ultrasonic_serial_inst|inst5|Equal0~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|Equal0~10_combout\ = (\ultrasonic_serial_inst|inst5|Equal0~8_combout\ & (\ultrasonic_serial_inst|inst5|Equal0~4_combout\ & (\ultrasonic_serial_inst|inst5|Equal0~7_combout\ & \ultrasonic_serial_inst|inst5|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst5|Equal0~8_combout\,
	datab => \ultrasonic_serial_inst|inst5|Equal0~4_combout\,
	datac => \ultrasonic_serial_inst|inst5|Equal0~7_combout\,
	datad => \ultrasonic_serial_inst|inst5|Equal0~9_combout\,
	combout => \ultrasonic_serial_inst|inst5|Equal0~10_combout\);

-- Location: LCCOMB_X26_Y22_N8
\ultrasonic_serial_inst|inst5|tmp~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst5|tmp~0_combout\ = \ultrasonic_serial_inst|inst5|tmp~q\ $ (\ultrasonic_serial_inst|inst5|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ultrasonic_serial_inst|inst5|tmp~q\,
	datad => \ultrasonic_serial_inst|inst5|Equal0~10_combout\,
	combout => \ultrasonic_serial_inst|inst5|tmp~0_combout\);

-- Location: FF_X26_Y22_N9
\ultrasonic_serial_inst|inst5|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst5|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst5|tmp~q\);

-- Location: CLKCTRL_G13
\ultrasonic_serial_inst|inst5|tmp~clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ultrasonic_serial_inst|inst5|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ultrasonic_serial_inst|inst5|tmp~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y10_N18
\ultrasonic_serial_inst|inst3|Selector21~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Selector21~0_combout\ = (\ultrasonic_serial_inst|inst3|LessThan1~3_combout\ & ((\ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Start_Bit~q\) # ((!\ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit~0_combout\ & 
-- \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Data_Bits~q\)))) # (!\ultrasonic_serial_inst|inst3|LessThan1~3_combout\ & (!\ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit~0_combout\ & (\ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Data_Bits~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|LessThan1~3_combout\,
	datab => \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit~0_combout\,
	datac => \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Data_Bits~q\,
	datad => \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Start_Bit~q\,
	combout => \ultrasonic_serial_inst|inst3|Selector21~0_combout\);

-- Location: FF_X32_Y10_N19
\ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Data_Bits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst3|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Data_Bits~q\);

-- Location: LCCOMB_X33_Y9_N6
\ultrasonic_serial_inst|inst4|next_state.State_Digit1Wait~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|next_state.State_Digit1Wait~0_combout\ = (\ultrasonic_serial_inst|inst3|o_TX_Active~q\ & ((\ultrasonic_serial_inst|inst4|current_state.State_Digit1Wait~q\) # 
-- (\ultrasonic_serial_inst|inst4|current_state.State_Digit1Trasmit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|o_TX_Active~q\,
	datac => \ultrasonic_serial_inst|inst4|current_state.State_Digit1Wait~q\,
	datad => \ultrasonic_serial_inst|inst4|current_state.State_Digit1Trasmit~q\,
	combout => \ultrasonic_serial_inst|inst4|next_state.State_Digit1Wait~0_combout\);

-- Location: FF_X33_Y9_N7
\ultrasonic_serial_inst|inst4|current_state.State_Digit1Wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst5|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst4|next_state.State_Digit1Wait~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst4|current_state.State_Digit1Wait~q\);

-- Location: LCCOMB_X33_Y9_N28
\ultrasonic_serial_inst|inst4|Selector10~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector10~0_combout\ = (!\ultrasonic_serial_inst|inst3|o_TX_Active~q\ & ((\ultrasonic_serial_inst|inst4|current_state.State_Digit2Trasmit~q\) # (\ultrasonic_serial_inst|inst4|current_state.State_Digit1Wait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|o_TX_Active~q\,
	datac => \ultrasonic_serial_inst|inst4|current_state.State_Digit2Trasmit~q\,
	datad => \ultrasonic_serial_inst|inst4|current_state.State_Digit1Wait~q\,
	combout => \ultrasonic_serial_inst|inst4|Selector10~0_combout\);

-- Location: FF_X33_Y9_N29
\ultrasonic_serial_inst|inst4|current_state.State_Digit2Trasmit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst5|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst4|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst4|current_state.State_Digit2Trasmit~q\);

-- Location: LCCOMB_X33_Y9_N30
\ultrasonic_serial_inst|inst4|next_state.State_Digit2Wait~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|next_state.State_Digit2Wait~0_combout\ = (\ultrasonic_serial_inst|inst3|o_TX_Active~q\ & ((\ultrasonic_serial_inst|inst4|current_state.State_Digit2Wait~q\) # 
-- (\ultrasonic_serial_inst|inst4|current_state.State_Digit2Trasmit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|o_TX_Active~q\,
	datac => \ultrasonic_serial_inst|inst4|current_state.State_Digit2Wait~q\,
	datad => \ultrasonic_serial_inst|inst4|current_state.State_Digit2Trasmit~q\,
	combout => \ultrasonic_serial_inst|inst4|next_state.State_Digit2Wait~0_combout\);

-- Location: FF_X33_Y9_N31
\ultrasonic_serial_inst|inst4|current_state.State_Digit2Wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst5|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst4|next_state.State_Digit2Wait~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst4|current_state.State_Digit2Wait~q\);

-- Location: LCCOMB_X33_Y9_N22
\ultrasonic_serial_inst|inst4|Selector11~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector11~0_combout\ = (!\ultrasonic_serial_inst|inst3|o_TX_Active~q\ & ((\ultrasonic_serial_inst|inst4|current_state.State_Digit3Trasmit~q\) # (\ultrasonic_serial_inst|inst4|current_state.State_Digit2Wait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|o_TX_Active~q\,
	datac => \ultrasonic_serial_inst|inst4|current_state.State_Digit3Trasmit~q\,
	datad => \ultrasonic_serial_inst|inst4|current_state.State_Digit2Wait~q\,
	combout => \ultrasonic_serial_inst|inst4|Selector11~0_combout\);

-- Location: FF_X33_Y9_N23
\ultrasonic_serial_inst|inst4|current_state.State_Digit3Trasmit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst5|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst4|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst4|current_state.State_Digit3Trasmit~q\);

-- Location: LCCOMB_X33_Y9_N18
\ultrasonic_serial_inst|inst4|next_state.State_Digit3Wait~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|next_state.State_Digit3Wait~0_combout\ = (\ultrasonic_serial_inst|inst3|o_TX_Active~q\ & ((\ultrasonic_serial_inst|inst4|current_state.State_Digit3Wait~q\) # 
-- (\ultrasonic_serial_inst|inst4|current_state.State_Digit3Trasmit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|o_TX_Active~q\,
	datac => \ultrasonic_serial_inst|inst4|current_state.State_Digit3Wait~q\,
	datad => \ultrasonic_serial_inst|inst4|current_state.State_Digit3Trasmit~q\,
	combout => \ultrasonic_serial_inst|inst4|next_state.State_Digit3Wait~0_combout\);

-- Location: FF_X33_Y9_N19
\ultrasonic_serial_inst|inst4|current_state.State_Digit3Wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst5|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst4|next_state.State_Digit3Wait~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst4|current_state.State_Digit3Wait~q\);

-- Location: LCCOMB_X33_Y9_N4
\ultrasonic_serial_inst|inst4|Selector12~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector12~0_combout\ = (!\ultrasonic_serial_inst|inst3|o_TX_Active~q\ & ((\ultrasonic_serial_inst|inst4|current_state.State_Digit4Trasmit~q\) # (\ultrasonic_serial_inst|inst4|current_state.State_Digit3Wait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|o_TX_Active~q\,
	datac => \ultrasonic_serial_inst|inst4|current_state.State_Digit4Trasmit~q\,
	datad => \ultrasonic_serial_inst|inst4|current_state.State_Digit3Wait~q\,
	combout => \ultrasonic_serial_inst|inst4|Selector12~0_combout\);

-- Location: FF_X33_Y9_N5
\ultrasonic_serial_inst|inst4|current_state.State_Digit4Trasmit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst5|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst4|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst4|current_state.State_Digit4Trasmit~q\);

-- Location: LCCOMB_X33_Y9_N26
\ultrasonic_serial_inst|inst4|next_state.State_Digit4Wait~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|next_state.State_Digit4Wait~0_combout\ = (\ultrasonic_serial_inst|inst3|o_TX_Active~q\ & ((\ultrasonic_serial_inst|inst4|current_state.State_Digit4Trasmit~q\) # 
-- (\ultrasonic_serial_inst|inst4|current_state.State_Digit4Wait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|o_TX_Active~q\,
	datab => \ultrasonic_serial_inst|inst4|current_state.State_Digit4Trasmit~q\,
	datac => \ultrasonic_serial_inst|inst4|current_state.State_Digit4Wait~q\,
	combout => \ultrasonic_serial_inst|inst4|next_state.State_Digit4Wait~0_combout\);

-- Location: FF_X33_Y9_N27
\ultrasonic_serial_inst|inst4|current_state.State_Digit4Wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst5|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst4|next_state.State_Digit4Wait~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst4|current_state.State_Digit4Wait~q\);

-- Location: LCCOMB_X33_Y9_N14
\ultrasonic_serial_inst|inst4|Selector13~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector13~0_combout\ = (!\ultrasonic_serial_inst|inst3|o_TX_Active~q\ & ((\ultrasonic_serial_inst|inst4|current_state.State_CRTrasmit~q\) # (\ultrasonic_serial_inst|inst4|current_state.State_Digit4Wait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|o_TX_Active~q\,
	datac => \ultrasonic_serial_inst|inst4|current_state.State_CRTrasmit~q\,
	datad => \ultrasonic_serial_inst|inst4|current_state.State_Digit4Wait~q\,
	combout => \ultrasonic_serial_inst|inst4|Selector13~0_combout\);

-- Location: FF_X33_Y9_N15
\ultrasonic_serial_inst|inst4|current_state.State_CRTrasmit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst5|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst4|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst4|current_state.State_CRTrasmit~q\);

-- Location: LCCOMB_X33_Y10_N16
\ultrasonic_serial_inst|inst4|next_state.State_CRWait~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|next_state.State_CRWait~0_combout\ = (\ultrasonic_serial_inst|inst3|o_TX_Active~q\ & ((\ultrasonic_serial_inst|inst4|current_state.State_CRTrasmit~q\) # (\ultrasonic_serial_inst|inst4|current_state.State_CRWait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|o_TX_Active~q\,
	datab => \ultrasonic_serial_inst|inst4|current_state.State_CRTrasmit~q\,
	datac => \ultrasonic_serial_inst|inst4|current_state.State_CRWait~q\,
	combout => \ultrasonic_serial_inst|inst4|next_state.State_CRWait~0_combout\);

-- Location: FF_X33_Y10_N17
\ultrasonic_serial_inst|inst4|current_state.State_CRWait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst5|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst4|next_state.State_CRWait~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst4|current_state.State_CRWait~q\);

-- Location: LCCOMB_X33_Y10_N18
\ultrasonic_serial_inst|inst4|Selector14~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector14~0_combout\ = (!\ultrasonic_serial_inst|inst3|o_TX_Active~q\ & ((\ultrasonic_serial_inst|inst4|current_state.State_LFTrasmit~q\) # (\ultrasonic_serial_inst|inst4|current_state.State_CRWait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|o_TX_Active~q\,
	datac => \ultrasonic_serial_inst|inst4|current_state.State_LFTrasmit~q\,
	datad => \ultrasonic_serial_inst|inst4|current_state.State_CRWait~q\,
	combout => \ultrasonic_serial_inst|inst4|Selector14~0_combout\);

-- Location: FF_X33_Y10_N19
\ultrasonic_serial_inst|inst4|current_state.State_LFTrasmit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst5|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst4|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst4|current_state.State_LFTrasmit~q\);

-- Location: LCCOMB_X33_Y10_N20
\ultrasonic_serial_inst|inst4|WideOr0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|WideOr0~1_combout\ = (\ultrasonic_serial_inst|inst4|current_state.State_CRTrasmit~q\) # (\ultrasonic_serial_inst|inst4|current_state.State_LFTrasmit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ultrasonic_serial_inst|inst4|current_state.State_CRTrasmit~q\,
	datad => \ultrasonic_serial_inst|inst4|current_state.State_LFTrasmit~q\,
	combout => \ultrasonic_serial_inst|inst4|WideOr0~1_combout\);

-- Location: LCCOMB_X33_Y10_N2
\ultrasonic_serial_inst|inst3|Selector19~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Selector19~0_combout\ = (!\ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\ & ((\ultrasonic_serial_inst|inst4|WideOr0~0_combout\) # ((\ultrasonic_serial_inst|inst3|r_SM_Main.s_Idle~q\) # 
-- (\ultrasonic_serial_inst|inst4|WideOr0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst4|WideOr0~0_combout\,
	datab => \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\,
	datac => \ultrasonic_serial_inst|inst3|r_SM_Main.s_Idle~q\,
	datad => \ultrasonic_serial_inst|inst4|WideOr0~1_combout\,
	combout => \ultrasonic_serial_inst|inst3|Selector19~0_combout\);

-- Location: FF_X33_Y10_N3
\ultrasonic_serial_inst|inst3|r_SM_Main.s_Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst3|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|r_SM_Main.s_Idle~q\);

-- Location: LCCOMB_X32_Y10_N22
\ultrasonic_serial_inst|inst3|Selector18~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Selector18~0_combout\ = (\ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Data_Bits~q\ & (\ultrasonic_serial_inst|inst3|LessThan1~3_combout\ $ ((\ultrasonic_serial_inst|inst3|r_Bit_Index\(0))))) # 
-- (!\ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Data_Bits~q\ & (((\ultrasonic_serial_inst|inst3|r_Bit_Index\(0) & \ultrasonic_serial_inst|inst3|r_SM_Main.s_Idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|LessThan1~3_combout\,
	datab => \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Data_Bits~q\,
	datac => \ultrasonic_serial_inst|inst3|r_Bit_Index\(0),
	datad => \ultrasonic_serial_inst|inst3|r_SM_Main.s_Idle~q\,
	combout => \ultrasonic_serial_inst|inst3|Selector18~0_combout\);

-- Location: FF_X32_Y10_N23
\ultrasonic_serial_inst|inst3|r_Bit_Index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst3|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|r_Bit_Index\(0));

-- Location: LCCOMB_X32_Y10_N0
\ultrasonic_serial_inst|inst3|Selector17~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Selector17~0_combout\ = (\ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Data_Bits~q\ & (\ultrasonic_serial_inst|inst3|r_Bit_Index\(0))) # (!\ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Data_Bits~q\ & 
-- ((\ultrasonic_serial_inst|inst3|r_SM_Main.s_Idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Data_Bits~q\,
	datac => \ultrasonic_serial_inst|inst3|r_Bit_Index\(0),
	datad => \ultrasonic_serial_inst|inst3|r_SM_Main.s_Idle~q\,
	combout => \ultrasonic_serial_inst|inst3|Selector17~0_combout\);

-- Location: LCCOMB_X32_Y10_N20
\ultrasonic_serial_inst|inst3|Selector17~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Selector17~1_combout\ = (\ultrasonic_serial_inst|inst3|Selector17~0_combout\ & (\ultrasonic_serial_inst|inst3|r_Bit_Index\(1) $ (((\ultrasonic_serial_inst|inst3|LessThan1~3_combout\ & 
-- \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Data_Bits~q\))))) # (!\ultrasonic_serial_inst|inst3|Selector17~0_combout\ & (((\ultrasonic_serial_inst|inst3|r_Bit_Index\(1) & \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Data_Bits~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|LessThan1~3_combout\,
	datab => \ultrasonic_serial_inst|inst3|Selector17~0_combout\,
	datac => \ultrasonic_serial_inst|inst3|r_Bit_Index\(1),
	datad => \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Data_Bits~q\,
	combout => \ultrasonic_serial_inst|inst3|Selector17~1_combout\);

-- Location: FF_X32_Y10_N21
\ultrasonic_serial_inst|inst3|r_Bit_Index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst3|Selector17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|r_Bit_Index\(1));

-- Location: LCCOMB_X32_Y10_N16
\ultrasonic_serial_inst|inst3|Selector16~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Selector16~0_combout\ = (\ultrasonic_serial_inst|inst3|LessThan1~3_combout\ & (\ultrasonic_serial_inst|inst3|r_Bit_Index\(0) & \ultrasonic_serial_inst|inst3|r_Bit_Index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|LessThan1~3_combout\,
	datac => \ultrasonic_serial_inst|inst3|r_Bit_Index\(0),
	datad => \ultrasonic_serial_inst|inst3|r_Bit_Index\(1),
	combout => \ultrasonic_serial_inst|inst3|Selector16~0_combout\);

-- Location: LCCOMB_X33_Y10_N6
\ultrasonic_serial_inst|inst3|Selector16~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Selector16~1_combout\ = (\ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Data_Bits~q\ & (\ultrasonic_serial_inst|inst3|Selector16~0_combout\ $ ((\ultrasonic_serial_inst|inst3|r_Bit_Index\(2))))) # 
-- (!\ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Data_Bits~q\ & (((\ultrasonic_serial_inst|inst3|r_Bit_Index\(2) & \ultrasonic_serial_inst|inst3|r_SM_Main.s_Idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|Selector16~0_combout\,
	datab => \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Data_Bits~q\,
	datac => \ultrasonic_serial_inst|inst3|r_Bit_Index\(2),
	datad => \ultrasonic_serial_inst|inst3|r_SM_Main.s_Idle~q\,
	combout => \ultrasonic_serial_inst|inst3|Selector16~1_combout\);

-- Location: FF_X33_Y10_N7
\ultrasonic_serial_inst|inst3|r_Bit_Index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst3|Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|r_Bit_Index\(2));

-- Location: LCCOMB_X32_Y10_N2
\ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit~0_combout\ = (\ultrasonic_serial_inst|inst3|LessThan1~3_combout\ & (\ultrasonic_serial_inst|inst3|r_Bit_Index\(1) & (\ultrasonic_serial_inst|inst3|r_Bit_Index\(0) & 
-- \ultrasonic_serial_inst|inst3|r_Bit_Index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|LessThan1~3_combout\,
	datab => \ultrasonic_serial_inst|inst3|r_Bit_Index\(1),
	datac => \ultrasonic_serial_inst|inst3|r_Bit_Index\(0),
	datad => \ultrasonic_serial_inst|inst3|r_Bit_Index\(2),
	combout => \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit~0_combout\);

-- Location: LCCOMB_X32_Y10_N14
\ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit~1_combout\ = (\ultrasonic_serial_inst|inst3|LessThan1~3_combout\ & (\ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit~0_combout\ & ((\ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Data_Bits~q\)))) # 
-- (!\ultrasonic_serial_inst|inst3|LessThan1~3_combout\ & ((\ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit~q\) # ((\ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit~0_combout\ & \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Data_Bits~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|LessThan1~3_combout\,
	datab => \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit~0_combout\,
	datac => \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit~q\,
	datad => \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Data_Bits~q\,
	combout => \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit~1_combout\);

-- Location: FF_X32_Y10_N15
\ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit~q\);

-- Location: LCCOMB_X33_Y10_N30
\ultrasonic_serial_inst|inst3|Selector0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Selector0~0_combout\ = (\ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Start_Bit~q\) # ((\ultrasonic_serial_inst|inst3|o_TX_Active~q\ & ((\ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit~q\) # 
-- (\ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Data_Bits~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit~q\,
	datab => \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Start_Bit~q\,
	datac => \ultrasonic_serial_inst|inst3|o_TX_Active~q\,
	datad => \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Data_Bits~q\,
	combout => \ultrasonic_serial_inst|inst3|Selector0~0_combout\);

-- Location: FF_X33_Y10_N31
\ultrasonic_serial_inst|inst3|o_TX_Active\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst3|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|o_TX_Active~q\);

-- Location: LCCOMB_X33_Y10_N24
\ultrasonic_serial_inst|inst4|next_state.State_LFWait~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|next_state.State_LFWait~0_combout\ = (\ultrasonic_serial_inst|inst3|o_TX_Active~q\ & ((\ultrasonic_serial_inst|inst4|current_state.State_LFTrasmit~q\) # (\ultrasonic_serial_inst|inst4|current_state.State_LFWait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|o_TX_Active~q\,
	datab => \ultrasonic_serial_inst|inst4|current_state.State_LFTrasmit~q\,
	datac => \ultrasonic_serial_inst|inst4|current_state.State_LFWait~q\,
	combout => \ultrasonic_serial_inst|inst4|next_state.State_LFWait~0_combout\);

-- Location: FF_X33_Y10_N25
\ultrasonic_serial_inst|inst4|current_state.State_LFWait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst5|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst4|next_state.State_LFWait~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst4|current_state.State_LFWait~q\);

-- Location: LCCOMB_X33_Y10_N12
\ultrasonic_serial_inst|inst4|next_state.State_Measure~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|next_state.State_Measure~0_combout\ = (\ultrasonic_serial_inst|inst3|o_TX_Active~q\) # (!\ultrasonic_serial_inst|inst4|current_state.State_LFWait~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst4|current_state.State_LFWait~q\,
	datac => \ultrasonic_serial_inst|inst3|o_TX_Active~q\,
	combout => \ultrasonic_serial_inst|inst4|next_state.State_Measure~0_combout\);

-- Location: FF_X33_Y10_N13
\ultrasonic_serial_inst|inst4|current_state.State_Measure\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst5|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst4|next_state.State_Measure~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst4|current_state.State_Measure~q\);

-- Location: LCCOMB_X21_Y21_N0
\ultrasonic_serial_inst|inst2|Add0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~0_combout\ = \ultrasonic_serial_inst|inst2|count\(0) $ (GND)
-- \ultrasonic_serial_inst|inst2|Add0~1\ = CARRY(!\ultrasonic_serial_inst|inst2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst2|count\(0),
	datad => VCC,
	combout => \ultrasonic_serial_inst|inst2|Add0~0_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~1\);

-- Location: LCCOMB_X20_Y21_N18
\ultrasonic_serial_inst|inst2|count~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|count~5_combout\ = (!\ultrasonic_serial_inst|inst2|Add0~0_combout\ & !\ultrasonic_serial_inst|inst2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ultrasonic_serial_inst|inst2|Add0~0_combout\,
	datad => \ultrasonic_serial_inst|inst2|Equal0~10_combout\,
	combout => \ultrasonic_serial_inst|inst2|count~5_combout\);

-- Location: FF_X20_Y21_N19
\ultrasonic_serial_inst|inst2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(0));

-- Location: LCCOMB_X21_Y21_N2
\ultrasonic_serial_inst|inst2|Add0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~2_combout\ = (\ultrasonic_serial_inst|inst2|count\(1) & (!\ultrasonic_serial_inst|inst2|Add0~1\)) # (!\ultrasonic_serial_inst|inst2|count\(1) & ((\ultrasonic_serial_inst|inst2|Add0~1\) # (GND)))
-- \ultrasonic_serial_inst|inst2|Add0~3\ = CARRY((!\ultrasonic_serial_inst|inst2|Add0~1\) # (!\ultrasonic_serial_inst|inst2|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst2|count\(1),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~1\,
	combout => \ultrasonic_serial_inst|inst2|Add0~2_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~3\);

-- Location: LCCOMB_X20_Y21_N28
\ultrasonic_serial_inst|inst2|count~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|count~4_combout\ = (!\ultrasonic_serial_inst|inst2|Equal0~10_combout\ & \ultrasonic_serial_inst|inst2|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst2|Equal0~10_combout\,
	datad => \ultrasonic_serial_inst|inst2|Add0~2_combout\,
	combout => \ultrasonic_serial_inst|inst2|count~4_combout\);

-- Location: FF_X20_Y21_N29
\ultrasonic_serial_inst|inst2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(1));

-- Location: LCCOMB_X21_Y21_N4
\ultrasonic_serial_inst|inst2|Add0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~4_combout\ = (\ultrasonic_serial_inst|inst2|count\(2) & (\ultrasonic_serial_inst|inst2|Add0~3\ $ (GND))) # (!\ultrasonic_serial_inst|inst2|count\(2) & (!\ultrasonic_serial_inst|inst2|Add0~3\ & VCC))
-- \ultrasonic_serial_inst|inst2|Add0~5\ = CARRY((\ultrasonic_serial_inst|inst2|count\(2) & !\ultrasonic_serial_inst|inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst2|count\(2),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~3\,
	combout => \ultrasonic_serial_inst|inst2|Add0~4_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~5\);

-- Location: LCCOMB_X20_Y21_N6
\ultrasonic_serial_inst|inst2|count~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|count~3_combout\ = (!\ultrasonic_serial_inst|inst2|Equal0~10_combout\ & \ultrasonic_serial_inst|inst2|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst2|Equal0~10_combout\,
	datad => \ultrasonic_serial_inst|inst2|Add0~4_combout\,
	combout => \ultrasonic_serial_inst|inst2|count~3_combout\);

-- Location: FF_X20_Y21_N7
\ultrasonic_serial_inst|inst2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(2));

-- Location: LCCOMB_X21_Y21_N6
\ultrasonic_serial_inst|inst2|Add0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~6_combout\ = (\ultrasonic_serial_inst|inst2|count\(3) & (!\ultrasonic_serial_inst|inst2|Add0~5\)) # (!\ultrasonic_serial_inst|inst2|count\(3) & ((\ultrasonic_serial_inst|inst2|Add0~5\) # (GND)))
-- \ultrasonic_serial_inst|inst2|Add0~7\ = CARRY((!\ultrasonic_serial_inst|inst2|Add0~5\) # (!\ultrasonic_serial_inst|inst2|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst2|count\(3),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~5\,
	combout => \ultrasonic_serial_inst|inst2|Add0~6_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~7\);

-- Location: FF_X21_Y21_N7
\ultrasonic_serial_inst|inst2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(3));

-- Location: LCCOMB_X21_Y21_N8
\ultrasonic_serial_inst|inst2|Add0~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~8_combout\ = (\ultrasonic_serial_inst|inst2|count\(4) & (\ultrasonic_serial_inst|inst2|Add0~7\ $ (GND))) # (!\ultrasonic_serial_inst|inst2|count\(4) & (!\ultrasonic_serial_inst|inst2|Add0~7\ & VCC))
-- \ultrasonic_serial_inst|inst2|Add0~9\ = CARRY((\ultrasonic_serial_inst|inst2|count\(4) & !\ultrasonic_serial_inst|inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst2|count\(4),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~7\,
	combout => \ultrasonic_serial_inst|inst2|Add0~8_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~9\);

-- Location: FF_X21_Y21_N9
\ultrasonic_serial_inst|inst2|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(4));

-- Location: LCCOMB_X21_Y21_N10
\ultrasonic_serial_inst|inst2|Add0~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~10_combout\ = (\ultrasonic_serial_inst|inst2|count\(5) & (!\ultrasonic_serial_inst|inst2|Add0~9\)) # (!\ultrasonic_serial_inst|inst2|count\(5) & ((\ultrasonic_serial_inst|inst2|Add0~9\) # (GND)))
-- \ultrasonic_serial_inst|inst2|Add0~11\ = CARRY((!\ultrasonic_serial_inst|inst2|Add0~9\) # (!\ultrasonic_serial_inst|inst2|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst2|count\(5),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~9\,
	combout => \ultrasonic_serial_inst|inst2|Add0~10_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~11\);

-- Location: LCCOMB_X20_Y21_N22
\ultrasonic_serial_inst|inst2|count~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|count~2_combout\ = (\ultrasonic_serial_inst|inst2|Add0~10_combout\ & !\ultrasonic_serial_inst|inst2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ultrasonic_serial_inst|inst2|Add0~10_combout\,
	datad => \ultrasonic_serial_inst|inst2|Equal0~10_combout\,
	combout => \ultrasonic_serial_inst|inst2|count~2_combout\);

-- Location: FF_X20_Y21_N23
\ultrasonic_serial_inst|inst2|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(5));

-- Location: LCCOMB_X21_Y21_N12
\ultrasonic_serial_inst|inst2|Add0~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~12_combout\ = (\ultrasonic_serial_inst|inst2|count\(6) & (\ultrasonic_serial_inst|inst2|Add0~11\ $ (GND))) # (!\ultrasonic_serial_inst|inst2|count\(6) & (!\ultrasonic_serial_inst|inst2|Add0~11\ & VCC))
-- \ultrasonic_serial_inst|inst2|Add0~13\ = CARRY((\ultrasonic_serial_inst|inst2|count\(6) & !\ultrasonic_serial_inst|inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst2|count\(6),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~11\,
	combout => \ultrasonic_serial_inst|inst2|Add0~12_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~13\);

-- Location: LCCOMB_X20_Y21_N8
\ultrasonic_serial_inst|inst2|count~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|count~1_combout\ = (\ultrasonic_serial_inst|inst2|Add0~12_combout\ & !\ultrasonic_serial_inst|inst2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ultrasonic_serial_inst|inst2|Add0~12_combout\,
	datad => \ultrasonic_serial_inst|inst2|Equal0~10_combout\,
	combout => \ultrasonic_serial_inst|inst2|count~1_combout\);

-- Location: FF_X20_Y21_N9
\ultrasonic_serial_inst|inst2|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(6));

-- Location: LCCOMB_X21_Y21_N14
\ultrasonic_serial_inst|inst2|Add0~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~14_combout\ = (\ultrasonic_serial_inst|inst2|count\(7) & (!\ultrasonic_serial_inst|inst2|Add0~13\)) # (!\ultrasonic_serial_inst|inst2|count\(7) & ((\ultrasonic_serial_inst|inst2|Add0~13\) # (GND)))
-- \ultrasonic_serial_inst|inst2|Add0~15\ = CARRY((!\ultrasonic_serial_inst|inst2|Add0~13\) # (!\ultrasonic_serial_inst|inst2|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst2|count\(7),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~13\,
	combout => \ultrasonic_serial_inst|inst2|Add0~14_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~15\);

-- Location: FF_X21_Y21_N15
\ultrasonic_serial_inst|inst2|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(7));

-- Location: LCCOMB_X21_Y21_N16
\ultrasonic_serial_inst|inst2|Add0~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~16_combout\ = (\ultrasonic_serial_inst|inst2|count\(8) & (\ultrasonic_serial_inst|inst2|Add0~15\ $ (GND))) # (!\ultrasonic_serial_inst|inst2|count\(8) & (!\ultrasonic_serial_inst|inst2|Add0~15\ & VCC))
-- \ultrasonic_serial_inst|inst2|Add0~17\ = CARRY((\ultrasonic_serial_inst|inst2|count\(8) & !\ultrasonic_serial_inst|inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst2|count\(8),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~15\,
	combout => \ultrasonic_serial_inst|inst2|Add0~16_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~17\);

-- Location: LCCOMB_X20_Y21_N20
\ultrasonic_serial_inst|inst2|count~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|count~0_combout\ = (!\ultrasonic_serial_inst|inst2|Equal0~10_combout\ & \ultrasonic_serial_inst|inst2|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst2|Equal0~10_combout\,
	datad => \ultrasonic_serial_inst|inst2|Add0~16_combout\,
	combout => \ultrasonic_serial_inst|inst2|count~0_combout\);

-- Location: FF_X20_Y21_N21
\ultrasonic_serial_inst|inst2|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(8));

-- Location: LCCOMB_X21_Y21_N18
\ultrasonic_serial_inst|inst2|Add0~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~18_combout\ = (\ultrasonic_serial_inst|inst2|count\(9) & (!\ultrasonic_serial_inst|inst2|Add0~17\)) # (!\ultrasonic_serial_inst|inst2|count\(9) & ((\ultrasonic_serial_inst|inst2|Add0~17\) # (GND)))
-- \ultrasonic_serial_inst|inst2|Add0~19\ = CARRY((!\ultrasonic_serial_inst|inst2|Add0~17\) # (!\ultrasonic_serial_inst|inst2|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst2|count\(9),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~17\,
	combout => \ultrasonic_serial_inst|inst2|Add0~18_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~19\);

-- Location: FF_X21_Y21_N19
\ultrasonic_serial_inst|inst2|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(9));

-- Location: LCCOMB_X21_Y21_N20
\ultrasonic_serial_inst|inst2|Add0~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~20_combout\ = (\ultrasonic_serial_inst|inst2|count\(10) & (\ultrasonic_serial_inst|inst2|Add0~19\ $ (GND))) # (!\ultrasonic_serial_inst|inst2|count\(10) & (!\ultrasonic_serial_inst|inst2|Add0~19\ & VCC))
-- \ultrasonic_serial_inst|inst2|Add0~21\ = CARRY((\ultrasonic_serial_inst|inst2|count\(10) & !\ultrasonic_serial_inst|inst2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst2|count\(10),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~19\,
	combout => \ultrasonic_serial_inst|inst2|Add0~20_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~21\);

-- Location: FF_X21_Y21_N21
\ultrasonic_serial_inst|inst2|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(10));

-- Location: LCCOMB_X21_Y21_N22
\ultrasonic_serial_inst|inst2|Add0~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~22_combout\ = (\ultrasonic_serial_inst|inst2|count\(11) & (!\ultrasonic_serial_inst|inst2|Add0~21\)) # (!\ultrasonic_serial_inst|inst2|count\(11) & ((\ultrasonic_serial_inst|inst2|Add0~21\) # (GND)))
-- \ultrasonic_serial_inst|inst2|Add0~23\ = CARRY((!\ultrasonic_serial_inst|inst2|Add0~21\) # (!\ultrasonic_serial_inst|inst2|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst2|count\(11),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~21\,
	combout => \ultrasonic_serial_inst|inst2|Add0~22_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~23\);

-- Location: FF_X21_Y21_N23
\ultrasonic_serial_inst|inst2|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(11));

-- Location: LCCOMB_X20_Y21_N12
\ultrasonic_serial_inst|inst2|Equal0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Equal0~6_combout\ = (!\ultrasonic_serial_inst|inst2|count\(9) & (!\ultrasonic_serial_inst|inst2|count\(11) & (!\ultrasonic_serial_inst|inst2|count\(10) & \ultrasonic_serial_inst|inst2|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst2|count\(9),
	datab => \ultrasonic_serial_inst|inst2|count\(11),
	datac => \ultrasonic_serial_inst|inst2|count\(10),
	datad => \ultrasonic_serial_inst|inst2|count\(8),
	combout => \ultrasonic_serial_inst|inst2|Equal0~6_combout\);

-- Location: LCCOMB_X21_Y21_N24
\ultrasonic_serial_inst|inst2|Add0~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~24_combout\ = (\ultrasonic_serial_inst|inst2|count\(12) & (\ultrasonic_serial_inst|inst2|Add0~23\ $ (GND))) # (!\ultrasonic_serial_inst|inst2|count\(12) & (!\ultrasonic_serial_inst|inst2|Add0~23\ & VCC))
-- \ultrasonic_serial_inst|inst2|Add0~25\ = CARRY((\ultrasonic_serial_inst|inst2|count\(12) & !\ultrasonic_serial_inst|inst2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst2|count\(12),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~23\,
	combout => \ultrasonic_serial_inst|inst2|Add0~24_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~25\);

-- Location: FF_X21_Y21_N25
\ultrasonic_serial_inst|inst2|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(12));

-- Location: LCCOMB_X21_Y21_N26
\ultrasonic_serial_inst|inst2|Add0~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~26_combout\ = (\ultrasonic_serial_inst|inst2|count\(13) & (!\ultrasonic_serial_inst|inst2|Add0~25\)) # (!\ultrasonic_serial_inst|inst2|count\(13) & ((\ultrasonic_serial_inst|inst2|Add0~25\) # (GND)))
-- \ultrasonic_serial_inst|inst2|Add0~27\ = CARRY((!\ultrasonic_serial_inst|inst2|Add0~25\) # (!\ultrasonic_serial_inst|inst2|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst2|count\(13),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~25\,
	combout => \ultrasonic_serial_inst|inst2|Add0~26_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~27\);

-- Location: FF_X21_Y21_N27
\ultrasonic_serial_inst|inst2|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(13));

-- Location: LCCOMB_X21_Y21_N28
\ultrasonic_serial_inst|inst2|Add0~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~28_combout\ = (\ultrasonic_serial_inst|inst2|count\(14) & (\ultrasonic_serial_inst|inst2|Add0~27\ $ (GND))) # (!\ultrasonic_serial_inst|inst2|count\(14) & (!\ultrasonic_serial_inst|inst2|Add0~27\ & VCC))
-- \ultrasonic_serial_inst|inst2|Add0~29\ = CARRY((\ultrasonic_serial_inst|inst2|count\(14) & !\ultrasonic_serial_inst|inst2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst2|count\(14),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~27\,
	combout => \ultrasonic_serial_inst|inst2|Add0~28_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~29\);

-- Location: FF_X21_Y21_N29
\ultrasonic_serial_inst|inst2|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(14));

-- Location: LCCOMB_X21_Y21_N30
\ultrasonic_serial_inst|inst2|Add0~30\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~30_combout\ = (\ultrasonic_serial_inst|inst2|count\(15) & (!\ultrasonic_serial_inst|inst2|Add0~29\)) # (!\ultrasonic_serial_inst|inst2|count\(15) & ((\ultrasonic_serial_inst|inst2|Add0~29\) # (GND)))
-- \ultrasonic_serial_inst|inst2|Add0~31\ = CARRY((!\ultrasonic_serial_inst|inst2|Add0~29\) # (!\ultrasonic_serial_inst|inst2|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst2|count\(15),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~29\,
	combout => \ultrasonic_serial_inst|inst2|Add0~30_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~31\);

-- Location: FF_X21_Y21_N31
\ultrasonic_serial_inst|inst2|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(15));

-- Location: LCCOMB_X20_Y21_N26
\ultrasonic_serial_inst|inst2|Equal0~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Equal0~5_combout\ = (!\ultrasonic_serial_inst|inst2|count\(15) & !\ultrasonic_serial_inst|inst2|count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ultrasonic_serial_inst|inst2|count\(15),
	datad => \ultrasonic_serial_inst|inst2|count\(14),
	combout => \ultrasonic_serial_inst|inst2|Equal0~5_combout\);

-- Location: LCCOMB_X20_Y21_N10
\ultrasonic_serial_inst|inst2|Equal0~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Equal0~7_combout\ = (\ultrasonic_serial_inst|inst2|Equal0~6_combout\ & (!\ultrasonic_serial_inst|inst2|count\(12) & (\ultrasonic_serial_inst|inst2|Equal0~5_combout\ & !\ultrasonic_serial_inst|inst2|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst2|Equal0~6_combout\,
	datab => \ultrasonic_serial_inst|inst2|count\(12),
	datac => \ultrasonic_serial_inst|inst2|Equal0~5_combout\,
	datad => \ultrasonic_serial_inst|inst2|count\(13),
	combout => \ultrasonic_serial_inst|inst2|Equal0~7_combout\);

-- Location: LCCOMB_X21_Y20_N0
\ultrasonic_serial_inst|inst2|Add0~32\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~32_combout\ = (\ultrasonic_serial_inst|inst2|count\(16) & (\ultrasonic_serial_inst|inst2|Add0~31\ $ (GND))) # (!\ultrasonic_serial_inst|inst2|count\(16) & (!\ultrasonic_serial_inst|inst2|Add0~31\ & VCC))
-- \ultrasonic_serial_inst|inst2|Add0~33\ = CARRY((\ultrasonic_serial_inst|inst2|count\(16) & !\ultrasonic_serial_inst|inst2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst2|count\(16),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~31\,
	combout => \ultrasonic_serial_inst|inst2|Add0~32_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~33\);

-- Location: FF_X21_Y20_N1
\ultrasonic_serial_inst|inst2|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(16));

-- Location: LCCOMB_X21_Y20_N2
\ultrasonic_serial_inst|inst2|Add0~34\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~34_combout\ = (\ultrasonic_serial_inst|inst2|count\(17) & (!\ultrasonic_serial_inst|inst2|Add0~33\)) # (!\ultrasonic_serial_inst|inst2|count\(17) & ((\ultrasonic_serial_inst|inst2|Add0~33\) # (GND)))
-- \ultrasonic_serial_inst|inst2|Add0~35\ = CARRY((!\ultrasonic_serial_inst|inst2|Add0~33\) # (!\ultrasonic_serial_inst|inst2|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst2|count\(17),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~33\,
	combout => \ultrasonic_serial_inst|inst2|Add0~34_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~35\);

-- Location: FF_X21_Y20_N3
\ultrasonic_serial_inst|inst2|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(17));

-- Location: LCCOMB_X21_Y20_N4
\ultrasonic_serial_inst|inst2|Add0~36\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~36_combout\ = (\ultrasonic_serial_inst|inst2|count\(18) & (\ultrasonic_serial_inst|inst2|Add0~35\ $ (GND))) # (!\ultrasonic_serial_inst|inst2|count\(18) & (!\ultrasonic_serial_inst|inst2|Add0~35\ & VCC))
-- \ultrasonic_serial_inst|inst2|Add0~37\ = CARRY((\ultrasonic_serial_inst|inst2|count\(18) & !\ultrasonic_serial_inst|inst2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst2|count\(18),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~35\,
	combout => \ultrasonic_serial_inst|inst2|Add0~36_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~37\);

-- Location: FF_X21_Y20_N5
\ultrasonic_serial_inst|inst2|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(18));

-- Location: LCCOMB_X21_Y20_N6
\ultrasonic_serial_inst|inst2|Add0~38\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~38_combout\ = (\ultrasonic_serial_inst|inst2|count\(19) & (!\ultrasonic_serial_inst|inst2|Add0~37\)) # (!\ultrasonic_serial_inst|inst2|count\(19) & ((\ultrasonic_serial_inst|inst2|Add0~37\) # (GND)))
-- \ultrasonic_serial_inst|inst2|Add0~39\ = CARRY((!\ultrasonic_serial_inst|inst2|Add0~37\) # (!\ultrasonic_serial_inst|inst2|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst2|count\(19),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~37\,
	combout => \ultrasonic_serial_inst|inst2|Add0~38_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~39\);

-- Location: FF_X21_Y20_N7
\ultrasonic_serial_inst|inst2|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(19));

-- Location: LCCOMB_X21_Y20_N8
\ultrasonic_serial_inst|inst2|Add0~40\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~40_combout\ = (\ultrasonic_serial_inst|inst2|count\(20) & (\ultrasonic_serial_inst|inst2|Add0~39\ $ (GND))) # (!\ultrasonic_serial_inst|inst2|count\(20) & (!\ultrasonic_serial_inst|inst2|Add0~39\ & VCC))
-- \ultrasonic_serial_inst|inst2|Add0~41\ = CARRY((\ultrasonic_serial_inst|inst2|count\(20) & !\ultrasonic_serial_inst|inst2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst2|count\(20),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~39\,
	combout => \ultrasonic_serial_inst|inst2|Add0~40_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~41\);

-- Location: FF_X21_Y20_N9
\ultrasonic_serial_inst|inst2|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(20));

-- Location: LCCOMB_X21_Y20_N10
\ultrasonic_serial_inst|inst2|Add0~42\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~42_combout\ = (\ultrasonic_serial_inst|inst2|count\(21) & (!\ultrasonic_serial_inst|inst2|Add0~41\)) # (!\ultrasonic_serial_inst|inst2|count\(21) & ((\ultrasonic_serial_inst|inst2|Add0~41\) # (GND)))
-- \ultrasonic_serial_inst|inst2|Add0~43\ = CARRY((!\ultrasonic_serial_inst|inst2|Add0~41\) # (!\ultrasonic_serial_inst|inst2|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst2|count\(21),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~41\,
	combout => \ultrasonic_serial_inst|inst2|Add0~42_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~43\);

-- Location: FF_X21_Y20_N11
\ultrasonic_serial_inst|inst2|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(21));

-- Location: LCCOMB_X21_Y20_N12
\ultrasonic_serial_inst|inst2|Add0~44\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~44_combout\ = (\ultrasonic_serial_inst|inst2|count\(22) & (\ultrasonic_serial_inst|inst2|Add0~43\ $ (GND))) # (!\ultrasonic_serial_inst|inst2|count\(22) & (!\ultrasonic_serial_inst|inst2|Add0~43\ & VCC))
-- \ultrasonic_serial_inst|inst2|Add0~45\ = CARRY((\ultrasonic_serial_inst|inst2|count\(22) & !\ultrasonic_serial_inst|inst2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst2|count\(22),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~43\,
	combout => \ultrasonic_serial_inst|inst2|Add0~44_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~45\);

-- Location: FF_X21_Y20_N13
\ultrasonic_serial_inst|inst2|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(22));

-- Location: LCCOMB_X21_Y20_N14
\ultrasonic_serial_inst|inst2|Add0~46\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~46_combout\ = (\ultrasonic_serial_inst|inst2|count\(23) & (!\ultrasonic_serial_inst|inst2|Add0~45\)) # (!\ultrasonic_serial_inst|inst2|count\(23) & ((\ultrasonic_serial_inst|inst2|Add0~45\) # (GND)))
-- \ultrasonic_serial_inst|inst2|Add0~47\ = CARRY((!\ultrasonic_serial_inst|inst2|Add0~45\) # (!\ultrasonic_serial_inst|inst2|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst2|count\(23),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~45\,
	combout => \ultrasonic_serial_inst|inst2|Add0~46_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~47\);

-- Location: FF_X21_Y20_N15
\ultrasonic_serial_inst|inst2|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(23));

-- Location: LCCOMB_X20_Y20_N10
\ultrasonic_serial_inst|inst2|Equal0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Equal0~2_combout\ = (!\ultrasonic_serial_inst|inst2|count\(21) & (!\ultrasonic_serial_inst|inst2|count\(20) & (!\ultrasonic_serial_inst|inst2|count\(22) & !\ultrasonic_serial_inst|inst2|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst2|count\(21),
	datab => \ultrasonic_serial_inst|inst2|count\(20),
	datac => \ultrasonic_serial_inst|inst2|count\(22),
	datad => \ultrasonic_serial_inst|inst2|count\(23),
	combout => \ultrasonic_serial_inst|inst2|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y20_N16
\ultrasonic_serial_inst|inst2|Add0~48\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~48_combout\ = (\ultrasonic_serial_inst|inst2|count\(24) & (\ultrasonic_serial_inst|inst2|Add0~47\ $ (GND))) # (!\ultrasonic_serial_inst|inst2|count\(24) & (!\ultrasonic_serial_inst|inst2|Add0~47\ & VCC))
-- \ultrasonic_serial_inst|inst2|Add0~49\ = CARRY((\ultrasonic_serial_inst|inst2|count\(24) & !\ultrasonic_serial_inst|inst2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst2|count\(24),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~47\,
	combout => \ultrasonic_serial_inst|inst2|Add0~48_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~49\);

-- Location: FF_X21_Y20_N17
\ultrasonic_serial_inst|inst2|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(24));

-- Location: LCCOMB_X21_Y20_N18
\ultrasonic_serial_inst|inst2|Add0~50\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~50_combout\ = (\ultrasonic_serial_inst|inst2|count\(25) & (!\ultrasonic_serial_inst|inst2|Add0~49\)) # (!\ultrasonic_serial_inst|inst2|count\(25) & ((\ultrasonic_serial_inst|inst2|Add0~49\) # (GND)))
-- \ultrasonic_serial_inst|inst2|Add0~51\ = CARRY((!\ultrasonic_serial_inst|inst2|Add0~49\) # (!\ultrasonic_serial_inst|inst2|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst2|count\(25),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~49\,
	combout => \ultrasonic_serial_inst|inst2|Add0~50_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~51\);

-- Location: FF_X21_Y20_N19
\ultrasonic_serial_inst|inst2|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(25));

-- Location: LCCOMB_X21_Y20_N20
\ultrasonic_serial_inst|inst2|Add0~52\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~52_combout\ = (\ultrasonic_serial_inst|inst2|count\(26) & (\ultrasonic_serial_inst|inst2|Add0~51\ $ (GND))) # (!\ultrasonic_serial_inst|inst2|count\(26) & (!\ultrasonic_serial_inst|inst2|Add0~51\ & VCC))
-- \ultrasonic_serial_inst|inst2|Add0~53\ = CARRY((\ultrasonic_serial_inst|inst2|count\(26) & !\ultrasonic_serial_inst|inst2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst2|count\(26),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~51\,
	combout => \ultrasonic_serial_inst|inst2|Add0~52_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~53\);

-- Location: FF_X21_Y20_N21
\ultrasonic_serial_inst|inst2|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(26));

-- Location: LCCOMB_X21_Y20_N22
\ultrasonic_serial_inst|inst2|Add0~54\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~54_combout\ = (\ultrasonic_serial_inst|inst2|count\(27) & (!\ultrasonic_serial_inst|inst2|Add0~53\)) # (!\ultrasonic_serial_inst|inst2|count\(27) & ((\ultrasonic_serial_inst|inst2|Add0~53\) # (GND)))
-- \ultrasonic_serial_inst|inst2|Add0~55\ = CARRY((!\ultrasonic_serial_inst|inst2|Add0~53\) # (!\ultrasonic_serial_inst|inst2|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst2|count\(27),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~53\,
	combout => \ultrasonic_serial_inst|inst2|Add0~54_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~55\);

-- Location: FF_X21_Y20_N23
\ultrasonic_serial_inst|inst2|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(27));

-- Location: LCCOMB_X20_Y20_N18
\ultrasonic_serial_inst|inst2|Equal0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Equal0~1_combout\ = (!\ultrasonic_serial_inst|inst2|count\(25) & (!\ultrasonic_serial_inst|inst2|count\(24) & (!\ultrasonic_serial_inst|inst2|count\(26) & !\ultrasonic_serial_inst|inst2|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst2|count\(25),
	datab => \ultrasonic_serial_inst|inst2|count\(24),
	datac => \ultrasonic_serial_inst|inst2|count\(26),
	datad => \ultrasonic_serial_inst|inst2|count\(27),
	combout => \ultrasonic_serial_inst|inst2|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y20_N4
\ultrasonic_serial_inst|inst2|Equal0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Equal0~3_combout\ = (!\ultrasonic_serial_inst|inst2|count\(18) & (!\ultrasonic_serial_inst|inst2|count\(19) & (!\ultrasonic_serial_inst|inst2|count\(16) & !\ultrasonic_serial_inst|inst2|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst2|count\(18),
	datab => \ultrasonic_serial_inst|inst2|count\(19),
	datac => \ultrasonic_serial_inst|inst2|count\(16),
	datad => \ultrasonic_serial_inst|inst2|count\(17),
	combout => \ultrasonic_serial_inst|inst2|Equal0~3_combout\);

-- Location: LCCOMB_X21_Y20_N24
\ultrasonic_serial_inst|inst2|Add0~56\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~56_combout\ = (\ultrasonic_serial_inst|inst2|count\(28) & (\ultrasonic_serial_inst|inst2|Add0~55\ $ (GND))) # (!\ultrasonic_serial_inst|inst2|count\(28) & (!\ultrasonic_serial_inst|inst2|Add0~55\ & VCC))
-- \ultrasonic_serial_inst|inst2|Add0~57\ = CARRY((\ultrasonic_serial_inst|inst2|count\(28) & !\ultrasonic_serial_inst|inst2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst2|count\(28),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~55\,
	combout => \ultrasonic_serial_inst|inst2|Add0~56_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~57\);

-- Location: FF_X21_Y20_N25
\ultrasonic_serial_inst|inst2|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(28));

-- Location: LCCOMB_X21_Y20_N26
\ultrasonic_serial_inst|inst2|Add0~58\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~58_combout\ = (\ultrasonic_serial_inst|inst2|count\(29) & (!\ultrasonic_serial_inst|inst2|Add0~57\)) # (!\ultrasonic_serial_inst|inst2|count\(29) & ((\ultrasonic_serial_inst|inst2|Add0~57\) # (GND)))
-- \ultrasonic_serial_inst|inst2|Add0~59\ = CARRY((!\ultrasonic_serial_inst|inst2|Add0~57\) # (!\ultrasonic_serial_inst|inst2|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst2|count\(29),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~57\,
	combout => \ultrasonic_serial_inst|inst2|Add0~58_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~59\);

-- Location: FF_X21_Y20_N27
\ultrasonic_serial_inst|inst2|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(29));

-- Location: LCCOMB_X21_Y20_N28
\ultrasonic_serial_inst|inst2|Add0~60\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~60_combout\ = (\ultrasonic_serial_inst|inst2|count\(30) & (\ultrasonic_serial_inst|inst2|Add0~59\ $ (GND))) # (!\ultrasonic_serial_inst|inst2|count\(30) & (!\ultrasonic_serial_inst|inst2|Add0~59\ & VCC))
-- \ultrasonic_serial_inst|inst2|Add0~61\ = CARRY((\ultrasonic_serial_inst|inst2|count\(30) & !\ultrasonic_serial_inst|inst2|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst2|count\(30),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst2|Add0~59\,
	combout => \ultrasonic_serial_inst|inst2|Add0~60_combout\,
	cout => \ultrasonic_serial_inst|inst2|Add0~61\);

-- Location: FF_X21_Y20_N29
\ultrasonic_serial_inst|inst2|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(30));

-- Location: LCCOMB_X21_Y20_N30
\ultrasonic_serial_inst|inst2|Add0~62\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Add0~62_combout\ = \ultrasonic_serial_inst|inst2|count\(31) $ (\ultrasonic_serial_inst|inst2|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst2|count\(31),
	cin => \ultrasonic_serial_inst|inst2|Add0~61\,
	combout => \ultrasonic_serial_inst|inst2|Add0~62_combout\);

-- Location: FF_X21_Y20_N31
\ultrasonic_serial_inst|inst2|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|count\(31));

-- Location: LCCOMB_X20_Y20_N12
\ultrasonic_serial_inst|inst2|Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Equal0~0_combout\ = (!\ultrasonic_serial_inst|inst2|count\(29) & (!\ultrasonic_serial_inst|inst2|count\(30) & (!\ultrasonic_serial_inst|inst2|count\(31) & !\ultrasonic_serial_inst|inst2|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst2|count\(29),
	datab => \ultrasonic_serial_inst|inst2|count\(30),
	datac => \ultrasonic_serial_inst|inst2|count\(31),
	datad => \ultrasonic_serial_inst|inst2|count\(28),
	combout => \ultrasonic_serial_inst|inst2|Equal0~0_combout\);

-- Location: LCCOMB_X20_Y20_N0
\ultrasonic_serial_inst|inst2|Equal0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Equal0~4_combout\ = (\ultrasonic_serial_inst|inst2|Equal0~2_combout\ & (\ultrasonic_serial_inst|inst2|Equal0~1_combout\ & (\ultrasonic_serial_inst|inst2|Equal0~3_combout\ & \ultrasonic_serial_inst|inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst2|Equal0~2_combout\,
	datab => \ultrasonic_serial_inst|inst2|Equal0~1_combout\,
	datac => \ultrasonic_serial_inst|inst2|Equal0~3_combout\,
	datad => \ultrasonic_serial_inst|inst2|Equal0~0_combout\,
	combout => \ultrasonic_serial_inst|inst2|Equal0~4_combout\);

-- Location: LCCOMB_X20_Y21_N4
\ultrasonic_serial_inst|inst2|Equal0~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Equal0~8_combout\ = (\ultrasonic_serial_inst|inst2|count\(5) & (!\ultrasonic_serial_inst|inst2|count\(4) & (!\ultrasonic_serial_inst|inst2|count\(7) & \ultrasonic_serial_inst|inst2|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst2|count\(5),
	datab => \ultrasonic_serial_inst|inst2|count\(4),
	datac => \ultrasonic_serial_inst|inst2|count\(7),
	datad => \ultrasonic_serial_inst|inst2|count\(6),
	combout => \ultrasonic_serial_inst|inst2|Equal0~8_combout\);

-- Location: LCCOMB_X20_Y21_N16
\ultrasonic_serial_inst|inst2|Equal0~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Equal0~9_combout\ = (!\ultrasonic_serial_inst|inst2|count\(3) & (!\ultrasonic_serial_inst|inst2|count\(0) & (!\ultrasonic_serial_inst|inst2|count\(1) & \ultrasonic_serial_inst|inst2|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst2|count\(3),
	datab => \ultrasonic_serial_inst|inst2|count\(0),
	datac => \ultrasonic_serial_inst|inst2|count\(1),
	datad => \ultrasonic_serial_inst|inst2|count\(2),
	combout => \ultrasonic_serial_inst|inst2|Equal0~9_combout\);

-- Location: LCCOMB_X20_Y21_N24
\ultrasonic_serial_inst|inst2|Equal0~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|Equal0~10_combout\ = (\ultrasonic_serial_inst|inst2|Equal0~7_combout\ & (\ultrasonic_serial_inst|inst2|Equal0~4_combout\ & (\ultrasonic_serial_inst|inst2|Equal0~8_combout\ & \ultrasonic_serial_inst|inst2|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst2|Equal0~7_combout\,
	datab => \ultrasonic_serial_inst|inst2|Equal0~4_combout\,
	datac => \ultrasonic_serial_inst|inst2|Equal0~8_combout\,
	datad => \ultrasonic_serial_inst|inst2|Equal0~9_combout\,
	combout => \ultrasonic_serial_inst|inst2|Equal0~10_combout\);

-- Location: LCCOMB_X19_Y25_N2
\ultrasonic_serial_inst|inst2|tmp~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst2|tmp~0_combout\ = \ultrasonic_serial_inst|inst2|tmp~q\ $ (\ultrasonic_serial_inst|inst2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ultrasonic_serial_inst|inst2|tmp~q\,
	datad => \ultrasonic_serial_inst|inst2|Equal0~10_combout\,
	combout => \ultrasonic_serial_inst|inst2|tmp~0_combout\);

-- Location: FF_X19_Y25_N3
\ultrasonic_serial_inst|inst2|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst2|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst2|tmp~q\);

-- Location: CLKCTRL_G12
\ultrasonic_serial_inst|inst2|tmp~clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\);

-- Location: IOIBUF_X41_Y18_N15
\bMKR_D[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bMKR_D(7),
	o => \bMKR_D[7]~input_o\);

-- Location: LCCOMB_X33_Y12_N22
\ultrasonic_serial_inst|inst|next_state~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|next_state~6_combout\ = (!\ultrasonic_serial_inst|inst4|current_state.State_Measure~q\ & !\ultrasonic_serial_inst|inst|current_state.Ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ultrasonic_serial_inst|inst4|current_state.State_Measure~q\,
	datad => \ultrasonic_serial_inst|inst|current_state.Ready~q\,
	combout => \ultrasonic_serial_inst|inst|next_state~6_combout\);

-- Location: FF_X33_Y12_N23
\ultrasonic_serial_inst|inst|next_state.Triggering\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|next_state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|next_state.Triggering~q\);

-- Location: FF_X33_Y12_N3
\ultrasonic_serial_inst|inst|current_state.Triggering\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	asdata => \ultrasonic_serial_inst|inst|next_state.Triggering~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|current_state.Triggering~q\);

-- Location: LCCOMB_X33_Y12_N12
\ultrasonic_serial_inst|inst|Selector1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Selector1~0_combout\ = (\ultrasonic_serial_inst|inst|current_state.Triggering~q\) # ((\ultrasonic_serial_inst|inst|current_state.Waiting~q\ & !\bMKR_D[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|current_state.Waiting~q\,
	datac => \bMKR_D[7]~input_o\,
	datad => \ultrasonic_serial_inst|inst|current_state.Triggering~q\,
	combout => \ultrasonic_serial_inst|inst|Selector1~0_combout\);

-- Location: FF_X33_Y12_N13
\ultrasonic_serial_inst|inst|next_state.Waiting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|next_state.Waiting~q\);

-- Location: LCCOMB_X33_Y12_N30
\ultrasonic_serial_inst|inst|current_state.Waiting~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|current_state.Waiting~feeder_combout\ = \ultrasonic_serial_inst|inst|next_state.Waiting~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ultrasonic_serial_inst|inst|next_state.Waiting~q\,
	combout => \ultrasonic_serial_inst|inst|current_state.Waiting~feeder_combout\);

-- Location: FF_X33_Y12_N31
\ultrasonic_serial_inst|inst|current_state.Waiting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|current_state.Waiting~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|current_state.Waiting~q\);

-- Location: LCCOMB_X33_Y12_N20
\ultrasonic_serial_inst|inst|Selector2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Selector2~0_combout\ = (\ultrasonic_serial_inst|inst|current_state.Waiting~q\ & ((\bMKR_D[7]~input_o\) # ((\ultrasonic_serial_inst|inst|current_state.Measuring~q\ & !\ultrasonic_serial_inst|inst|process_1~2_combout\)))) # 
-- (!\ultrasonic_serial_inst|inst|current_state.Waiting~q\ & (\ultrasonic_serial_inst|inst|current_state.Measuring~q\ & ((!\ultrasonic_serial_inst|inst|process_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|current_state.Waiting~q\,
	datab => \ultrasonic_serial_inst|inst|current_state.Measuring~q\,
	datac => \bMKR_D[7]~input_o\,
	datad => \ultrasonic_serial_inst|inst|process_1~2_combout\,
	combout => \ultrasonic_serial_inst|inst|Selector2~0_combout\);

-- Location: FF_X33_Y12_N21
\ultrasonic_serial_inst|inst|next_state.Measuring\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|next_state.Measuring~q\);

-- Location: LCCOMB_X33_Y12_N14
\ultrasonic_serial_inst|inst|current_state.Measuring~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|current_state.Measuring~feeder_combout\ = \ultrasonic_serial_inst|inst|next_state.Measuring~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ultrasonic_serial_inst|inst|next_state.Measuring~q\,
	combout => \ultrasonic_serial_inst|inst|current_state.Measuring~feeder_combout\);

-- Location: FF_X33_Y12_N15
\ultrasonic_serial_inst|inst|current_state.Measuring\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|current_state.Measuring~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|current_state.Measuring~q\);

-- Location: LCCOMB_X30_Y12_N8
\ultrasonic_serial_inst|inst|Add0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Add0~0_combout\ = \ultrasonic_serial_inst|inst|count\(0) $ (VCC)
-- \ultrasonic_serial_inst|inst|Add0~1\ = CARRY(\ultrasonic_serial_inst|inst|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|count\(0),
	datad => VCC,
	combout => \ultrasonic_serial_inst|inst|Add0~0_combout\,
	cout => \ultrasonic_serial_inst|inst|Add0~1\);

-- Location: LCCOMB_X31_Y12_N20
\ultrasonic_serial_inst|inst|Selector14~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Selector14~0_combout\ = (\ultrasonic_serial_inst|inst|current_state.Ready~q\ & (\ultrasonic_serial_inst|inst|current_state.Measuring~q\ & ((\ultrasonic_serial_inst|inst|Add0~0_combout\)))) # 
-- (!\ultrasonic_serial_inst|inst|current_state.Ready~q\ & ((\ultrasonic_serial_inst|inst|count\(0)) # ((\ultrasonic_serial_inst|inst|current_state.Measuring~q\ & \ultrasonic_serial_inst|inst|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|current_state.Ready~q\,
	datab => \ultrasonic_serial_inst|inst|current_state.Measuring~q\,
	datac => \ultrasonic_serial_inst|inst|count\(0),
	datad => \ultrasonic_serial_inst|inst|Add0~0_combout\,
	combout => \ultrasonic_serial_inst|inst|Selector14~0_combout\);

-- Location: FF_X31_Y12_N21
\ultrasonic_serial_inst|inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|count\(0));

-- Location: LCCOMB_X30_Y12_N10
\ultrasonic_serial_inst|inst|Add0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Add0~2_combout\ = (\ultrasonic_serial_inst|inst|count\(1) & (!\ultrasonic_serial_inst|inst|Add0~1\)) # (!\ultrasonic_serial_inst|inst|count\(1) & ((\ultrasonic_serial_inst|inst|Add0~1\) # (GND)))
-- \ultrasonic_serial_inst|inst|Add0~3\ = CARRY((!\ultrasonic_serial_inst|inst|Add0~1\) # (!\ultrasonic_serial_inst|inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|count\(1),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst|Add0~1\,
	combout => \ultrasonic_serial_inst|inst|Add0~2_combout\,
	cout => \ultrasonic_serial_inst|inst|Add0~3\);

-- Location: LCCOMB_X31_Y12_N2
\ultrasonic_serial_inst|inst|Selector13~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Selector13~0_combout\ = (\ultrasonic_serial_inst|inst|current_state.Ready~q\ & (\ultrasonic_serial_inst|inst|Add0~2_combout\ & ((\ultrasonic_serial_inst|inst|current_state.Measuring~q\)))) # 
-- (!\ultrasonic_serial_inst|inst|current_state.Ready~q\ & ((\ultrasonic_serial_inst|inst|count\(1)) # ((\ultrasonic_serial_inst|inst|Add0~2_combout\ & \ultrasonic_serial_inst|inst|current_state.Measuring~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|current_state.Ready~q\,
	datab => \ultrasonic_serial_inst|inst|Add0~2_combout\,
	datac => \ultrasonic_serial_inst|inst|count\(1),
	datad => \ultrasonic_serial_inst|inst|current_state.Measuring~q\,
	combout => \ultrasonic_serial_inst|inst|Selector13~0_combout\);

-- Location: FF_X31_Y12_N3
\ultrasonic_serial_inst|inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|count\(1));

-- Location: LCCOMB_X30_Y12_N12
\ultrasonic_serial_inst|inst|Add0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Add0~4_combout\ = (\ultrasonic_serial_inst|inst|count\(2) & (\ultrasonic_serial_inst|inst|Add0~3\ $ (GND))) # (!\ultrasonic_serial_inst|inst|count\(2) & (!\ultrasonic_serial_inst|inst|Add0~3\ & VCC))
-- \ultrasonic_serial_inst|inst|Add0~5\ = CARRY((\ultrasonic_serial_inst|inst|count\(2) & !\ultrasonic_serial_inst|inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst|count\(2),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst|Add0~3\,
	combout => \ultrasonic_serial_inst|inst|Add0~4_combout\,
	cout => \ultrasonic_serial_inst|inst|Add0~5\);

-- Location: LCCOMB_X30_Y12_N0
\ultrasonic_serial_inst|inst|Selector12~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Selector12~0_combout\ = (\ultrasonic_serial_inst|inst|Add0~4_combout\ & ((\ultrasonic_serial_inst|inst|current_state.Measuring~q\) # ((!\ultrasonic_serial_inst|inst|current_state.Ready~q\ & 
-- \ultrasonic_serial_inst|inst|count\(2))))) # (!\ultrasonic_serial_inst|inst|Add0~4_combout\ & (!\ultrasonic_serial_inst|inst|current_state.Ready~q\ & (\ultrasonic_serial_inst|inst|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|Add0~4_combout\,
	datab => \ultrasonic_serial_inst|inst|current_state.Ready~q\,
	datac => \ultrasonic_serial_inst|inst|count\(2),
	datad => \ultrasonic_serial_inst|inst|current_state.Measuring~q\,
	combout => \ultrasonic_serial_inst|inst|Selector12~0_combout\);

-- Location: FF_X30_Y12_N1
\ultrasonic_serial_inst|inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|count\(2));

-- Location: LCCOMB_X30_Y12_N14
\ultrasonic_serial_inst|inst|Add0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Add0~6_combout\ = (\ultrasonic_serial_inst|inst|count\(3) & (!\ultrasonic_serial_inst|inst|Add0~5\)) # (!\ultrasonic_serial_inst|inst|count\(3) & ((\ultrasonic_serial_inst|inst|Add0~5\) # (GND)))
-- \ultrasonic_serial_inst|inst|Add0~7\ = CARRY((!\ultrasonic_serial_inst|inst|Add0~5\) # (!\ultrasonic_serial_inst|inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|count\(3),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst|Add0~5\,
	combout => \ultrasonic_serial_inst|inst|Add0~6_combout\,
	cout => \ultrasonic_serial_inst|inst|Add0~7\);

-- Location: LCCOMB_X30_Y12_N6
\ultrasonic_serial_inst|inst|Selector11~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Selector11~0_combout\ = (\ultrasonic_serial_inst|inst|Add0~6_combout\ & ((\ultrasonic_serial_inst|inst|current_state.Measuring~q\) # ((!\ultrasonic_serial_inst|inst|current_state.Ready~q\ & 
-- \ultrasonic_serial_inst|inst|count\(3))))) # (!\ultrasonic_serial_inst|inst|Add0~6_combout\ & (!\ultrasonic_serial_inst|inst|current_state.Ready~q\ & (\ultrasonic_serial_inst|inst|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|Add0~6_combout\,
	datab => \ultrasonic_serial_inst|inst|current_state.Ready~q\,
	datac => \ultrasonic_serial_inst|inst|count\(3),
	datad => \ultrasonic_serial_inst|inst|current_state.Measuring~q\,
	combout => \ultrasonic_serial_inst|inst|Selector11~0_combout\);

-- Location: FF_X30_Y12_N7
\ultrasonic_serial_inst|inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|count\(3));

-- Location: LCCOMB_X30_Y12_N16
\ultrasonic_serial_inst|inst|Add0~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Add0~8_combout\ = (\ultrasonic_serial_inst|inst|count\(4) & (\ultrasonic_serial_inst|inst|Add0~7\ $ (GND))) # (!\ultrasonic_serial_inst|inst|count\(4) & (!\ultrasonic_serial_inst|inst|Add0~7\ & VCC))
-- \ultrasonic_serial_inst|inst|Add0~9\ = CARRY((\ultrasonic_serial_inst|inst|count\(4) & !\ultrasonic_serial_inst|inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst|count\(4),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst|Add0~7\,
	combout => \ultrasonic_serial_inst|inst|Add0~8_combout\,
	cout => \ultrasonic_serial_inst|inst|Add0~9\);

-- Location: LCCOMB_X31_Y12_N16
\ultrasonic_serial_inst|inst|Selector10~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Selector10~0_combout\ = (\ultrasonic_serial_inst|inst|current_state.Ready~q\ & (\ultrasonic_serial_inst|inst|Add0~8_combout\ & ((\ultrasonic_serial_inst|inst|current_state.Measuring~q\)))) # 
-- (!\ultrasonic_serial_inst|inst|current_state.Ready~q\ & ((\ultrasonic_serial_inst|inst|count\(4)) # ((\ultrasonic_serial_inst|inst|Add0~8_combout\ & \ultrasonic_serial_inst|inst|current_state.Measuring~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|current_state.Ready~q\,
	datab => \ultrasonic_serial_inst|inst|Add0~8_combout\,
	datac => \ultrasonic_serial_inst|inst|count\(4),
	datad => \ultrasonic_serial_inst|inst|current_state.Measuring~q\,
	combout => \ultrasonic_serial_inst|inst|Selector10~0_combout\);

-- Location: FF_X31_Y12_N17
\ultrasonic_serial_inst|inst|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|count\(4));

-- Location: LCCOMB_X30_Y12_N18
\ultrasonic_serial_inst|inst|Add0~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Add0~10_combout\ = (\ultrasonic_serial_inst|inst|count\(5) & (!\ultrasonic_serial_inst|inst|Add0~9\)) # (!\ultrasonic_serial_inst|inst|count\(5) & ((\ultrasonic_serial_inst|inst|Add0~9\) # (GND)))
-- \ultrasonic_serial_inst|inst|Add0~11\ = CARRY((!\ultrasonic_serial_inst|inst|Add0~9\) # (!\ultrasonic_serial_inst|inst|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst|count\(5),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst|Add0~9\,
	combout => \ultrasonic_serial_inst|inst|Add0~10_combout\,
	cout => \ultrasonic_serial_inst|inst|Add0~11\);

-- Location: LCCOMB_X31_Y12_N18
\ultrasonic_serial_inst|inst|Selector9~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Selector9~0_combout\ = (\ultrasonic_serial_inst|inst|current_state.Ready~q\ & (\ultrasonic_serial_inst|inst|Add0~10_combout\ & ((\ultrasonic_serial_inst|inst|current_state.Measuring~q\)))) # 
-- (!\ultrasonic_serial_inst|inst|current_state.Ready~q\ & ((\ultrasonic_serial_inst|inst|count\(5)) # ((\ultrasonic_serial_inst|inst|Add0~10_combout\ & \ultrasonic_serial_inst|inst|current_state.Measuring~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|current_state.Ready~q\,
	datab => \ultrasonic_serial_inst|inst|Add0~10_combout\,
	datac => \ultrasonic_serial_inst|inst|count\(5),
	datad => \ultrasonic_serial_inst|inst|current_state.Measuring~q\,
	combout => \ultrasonic_serial_inst|inst|Selector9~0_combout\);

-- Location: FF_X31_Y12_N19
\ultrasonic_serial_inst|inst|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|count\(5));

-- Location: LCCOMB_X30_Y12_N20
\ultrasonic_serial_inst|inst|Add0~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Add0~12_combout\ = (\ultrasonic_serial_inst|inst|count\(6) & (\ultrasonic_serial_inst|inst|Add0~11\ $ (GND))) # (!\ultrasonic_serial_inst|inst|count\(6) & (!\ultrasonic_serial_inst|inst|Add0~11\ & VCC))
-- \ultrasonic_serial_inst|inst|Add0~13\ = CARRY((\ultrasonic_serial_inst|inst|count\(6) & !\ultrasonic_serial_inst|inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst|count\(6),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst|Add0~11\,
	combout => \ultrasonic_serial_inst|inst|Add0~12_combout\,
	cout => \ultrasonic_serial_inst|inst|Add0~13\);

-- Location: LCCOMB_X31_Y12_N28
\ultrasonic_serial_inst|inst|Selector8~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Selector8~0_combout\ = (\ultrasonic_serial_inst|inst|current_state.Ready~q\ & (\ultrasonic_serial_inst|inst|Add0~12_combout\ & ((\ultrasonic_serial_inst|inst|current_state.Measuring~q\)))) # 
-- (!\ultrasonic_serial_inst|inst|current_state.Ready~q\ & ((\ultrasonic_serial_inst|inst|count\(6)) # ((\ultrasonic_serial_inst|inst|Add0~12_combout\ & \ultrasonic_serial_inst|inst|current_state.Measuring~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|current_state.Ready~q\,
	datab => \ultrasonic_serial_inst|inst|Add0~12_combout\,
	datac => \ultrasonic_serial_inst|inst|count\(6),
	datad => \ultrasonic_serial_inst|inst|current_state.Measuring~q\,
	combout => \ultrasonic_serial_inst|inst|Selector8~0_combout\);

-- Location: FF_X31_Y12_N29
\ultrasonic_serial_inst|inst|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|count\(6));

-- Location: LCCOMB_X30_Y12_N22
\ultrasonic_serial_inst|inst|Add0~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Add0~14_combout\ = (\ultrasonic_serial_inst|inst|count\(7) & (!\ultrasonic_serial_inst|inst|Add0~13\)) # (!\ultrasonic_serial_inst|inst|count\(7) & ((\ultrasonic_serial_inst|inst|Add0~13\) # (GND)))
-- \ultrasonic_serial_inst|inst|Add0~15\ = CARRY((!\ultrasonic_serial_inst|inst|Add0~13\) # (!\ultrasonic_serial_inst|inst|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst|count\(7),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst|Add0~13\,
	combout => \ultrasonic_serial_inst|inst|Add0~14_combout\,
	cout => \ultrasonic_serial_inst|inst|Add0~15\);

-- Location: LCCOMB_X31_Y12_N12
\ultrasonic_serial_inst|inst|Selector7~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Selector7~0_combout\ = (\ultrasonic_serial_inst|inst|current_state.Ready~q\ & (\ultrasonic_serial_inst|inst|Add0~14_combout\ & ((\ultrasonic_serial_inst|inst|current_state.Measuring~q\)))) # 
-- (!\ultrasonic_serial_inst|inst|current_state.Ready~q\ & ((\ultrasonic_serial_inst|inst|count\(7)) # ((\ultrasonic_serial_inst|inst|Add0~14_combout\ & \ultrasonic_serial_inst|inst|current_state.Measuring~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|current_state.Ready~q\,
	datab => \ultrasonic_serial_inst|inst|Add0~14_combout\,
	datac => \ultrasonic_serial_inst|inst|count\(7),
	datad => \ultrasonic_serial_inst|inst|current_state.Measuring~q\,
	combout => \ultrasonic_serial_inst|inst|Selector7~0_combout\);

-- Location: FF_X31_Y12_N13
\ultrasonic_serial_inst|inst|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|count\(7));

-- Location: LCCOMB_X30_Y12_N24
\ultrasonic_serial_inst|inst|Add0~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Add0~16_combout\ = (\ultrasonic_serial_inst|inst|count\(8) & (\ultrasonic_serial_inst|inst|Add0~15\ $ (GND))) # (!\ultrasonic_serial_inst|inst|count\(8) & (!\ultrasonic_serial_inst|inst|Add0~15\ & VCC))
-- \ultrasonic_serial_inst|inst|Add0~17\ = CARRY((\ultrasonic_serial_inst|inst|count\(8) & !\ultrasonic_serial_inst|inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|count\(8),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst|Add0~15\,
	combout => \ultrasonic_serial_inst|inst|Add0~16_combout\,
	cout => \ultrasonic_serial_inst|inst|Add0~17\);

-- Location: LCCOMB_X31_Y12_N30
\ultrasonic_serial_inst|inst|Selector6~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Selector6~0_combout\ = (\ultrasonic_serial_inst|inst|current_state.Ready~q\ & (\ultrasonic_serial_inst|inst|Add0~16_combout\ & ((\ultrasonic_serial_inst|inst|current_state.Measuring~q\)))) # 
-- (!\ultrasonic_serial_inst|inst|current_state.Ready~q\ & ((\ultrasonic_serial_inst|inst|count\(8)) # ((\ultrasonic_serial_inst|inst|Add0~16_combout\ & \ultrasonic_serial_inst|inst|current_state.Measuring~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|current_state.Ready~q\,
	datab => \ultrasonic_serial_inst|inst|Add0~16_combout\,
	datac => \ultrasonic_serial_inst|inst|count\(8),
	datad => \ultrasonic_serial_inst|inst|current_state.Measuring~q\,
	combout => \ultrasonic_serial_inst|inst|Selector6~0_combout\);

-- Location: FF_X31_Y12_N31
\ultrasonic_serial_inst|inst|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|count\(8));

-- Location: LCCOMB_X30_Y12_N26
\ultrasonic_serial_inst|inst|Add0~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Add0~18_combout\ = (\ultrasonic_serial_inst|inst|count\(9) & (!\ultrasonic_serial_inst|inst|Add0~17\)) # (!\ultrasonic_serial_inst|inst|count\(9) & ((\ultrasonic_serial_inst|inst|Add0~17\) # (GND)))
-- \ultrasonic_serial_inst|inst|Add0~19\ = CARRY((!\ultrasonic_serial_inst|inst|Add0~17\) # (!\ultrasonic_serial_inst|inst|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst|count\(9),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst|Add0~17\,
	combout => \ultrasonic_serial_inst|inst|Add0~18_combout\,
	cout => \ultrasonic_serial_inst|inst|Add0~19\);

-- Location: LCCOMB_X30_Y12_N2
\ultrasonic_serial_inst|inst|Selector5~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Selector5~0_combout\ = (\ultrasonic_serial_inst|inst|Add0~18_combout\ & ((\ultrasonic_serial_inst|inst|current_state.Measuring~q\) # ((!\ultrasonic_serial_inst|inst|current_state.Ready~q\ & 
-- \ultrasonic_serial_inst|inst|count\(9))))) # (!\ultrasonic_serial_inst|inst|Add0~18_combout\ & (!\ultrasonic_serial_inst|inst|current_state.Ready~q\ & (\ultrasonic_serial_inst|inst|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|Add0~18_combout\,
	datab => \ultrasonic_serial_inst|inst|current_state.Ready~q\,
	datac => \ultrasonic_serial_inst|inst|count\(9),
	datad => \ultrasonic_serial_inst|inst|current_state.Measuring~q\,
	combout => \ultrasonic_serial_inst|inst|Selector5~0_combout\);

-- Location: FF_X30_Y12_N3
\ultrasonic_serial_inst|inst|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|count\(9));

-- Location: LCCOMB_X30_Y12_N28
\ultrasonic_serial_inst|inst|Add0~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Add0~20_combout\ = (\ultrasonic_serial_inst|inst|count\(10) & (\ultrasonic_serial_inst|inst|Add0~19\ $ (GND))) # (!\ultrasonic_serial_inst|inst|count\(10) & (!\ultrasonic_serial_inst|inst|Add0~19\ & VCC))
-- \ultrasonic_serial_inst|inst|Add0~21\ = CARRY((\ultrasonic_serial_inst|inst|count\(10) & !\ultrasonic_serial_inst|inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst|count\(10),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst|Add0~19\,
	combout => \ultrasonic_serial_inst|inst|Add0~20_combout\,
	cout => \ultrasonic_serial_inst|inst|Add0~21\);

-- Location: LCCOMB_X33_Y12_N4
\ultrasonic_serial_inst|inst|Selector4~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Selector4~0_combout\ = (\ultrasonic_serial_inst|inst|Add0~20_combout\ & ((\ultrasonic_serial_inst|inst|current_state.Measuring~q\) # ((\ultrasonic_serial_inst|inst|count\(10) & 
-- !\ultrasonic_serial_inst|inst|current_state.Ready~q\)))) # (!\ultrasonic_serial_inst|inst|Add0~20_combout\ & (((\ultrasonic_serial_inst|inst|count\(10) & !\ultrasonic_serial_inst|inst|current_state.Ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|Add0~20_combout\,
	datab => \ultrasonic_serial_inst|inst|current_state.Measuring~q\,
	datac => \ultrasonic_serial_inst|inst|count\(10),
	datad => \ultrasonic_serial_inst|inst|current_state.Ready~q\,
	combout => \ultrasonic_serial_inst|inst|Selector4~0_combout\);

-- Location: FF_X33_Y12_N5
\ultrasonic_serial_inst|inst|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|count\(10));

-- Location: LCCOMB_X30_Y12_N30
\ultrasonic_serial_inst|inst|Add0~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Add0~22_combout\ = \ultrasonic_serial_inst|inst|Add0~21\ $ (\ultrasonic_serial_inst|inst|count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ultrasonic_serial_inst|inst|count\(11),
	cin => \ultrasonic_serial_inst|inst|Add0~21\,
	combout => \ultrasonic_serial_inst|inst|Add0~22_combout\);

-- Location: LCCOMB_X31_Y12_N22
\ultrasonic_serial_inst|inst|Selector3~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Selector3~0_combout\ = (\ultrasonic_serial_inst|inst|current_state.Ready~q\ & (\ultrasonic_serial_inst|inst|Add0~22_combout\ & ((\ultrasonic_serial_inst|inst|current_state.Measuring~q\)))) # 
-- (!\ultrasonic_serial_inst|inst|current_state.Ready~q\ & ((\ultrasonic_serial_inst|inst|count\(11)) # ((\ultrasonic_serial_inst|inst|Add0~22_combout\ & \ultrasonic_serial_inst|inst|current_state.Measuring~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|current_state.Ready~q\,
	datab => \ultrasonic_serial_inst|inst|Add0~22_combout\,
	datac => \ultrasonic_serial_inst|inst|count\(11),
	datad => \ultrasonic_serial_inst|inst|current_state.Measuring~q\,
	combout => \ultrasonic_serial_inst|inst|Selector3~0_combout\);

-- Location: FF_X31_Y12_N23
\ultrasonic_serial_inst|inst|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|count\(11));

-- Location: LCCOMB_X30_Y12_N4
\ultrasonic_serial_inst|inst|LessThan0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|LessThan0~0_combout\ = (\ultrasonic_serial_inst|inst|count\(3) & ((\ultrasonic_serial_inst|inst|count\(2)) # ((\ultrasonic_serial_inst|inst|count\(0)) # (\ultrasonic_serial_inst|inst|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|count\(3),
	datab => \ultrasonic_serial_inst|inst|count\(2),
	datac => \ultrasonic_serial_inst|inst|count\(0),
	datad => \ultrasonic_serial_inst|inst|count\(1),
	combout => \ultrasonic_serial_inst|inst|LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y12_N24
\ultrasonic_serial_inst|inst|process_1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|process_1~0_combout\ = (\ultrasonic_serial_inst|inst|count\(6) & ((\ultrasonic_serial_inst|inst|count\(5)) # ((\ultrasonic_serial_inst|inst|LessThan0~0_combout\ & \ultrasonic_serial_inst|inst|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|count\(6),
	datab => \ultrasonic_serial_inst|inst|count\(5),
	datac => \ultrasonic_serial_inst|inst|LessThan0~0_combout\,
	datad => \ultrasonic_serial_inst|inst|count\(4),
	combout => \ultrasonic_serial_inst|inst|process_1~0_combout\);

-- Location: LCCOMB_X31_Y12_N26
\ultrasonic_serial_inst|inst|process_1~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|process_1~1_combout\ = (\ultrasonic_serial_inst|inst|count\(11) & ((\ultrasonic_serial_inst|inst|count\(8)) # ((\ultrasonic_serial_inst|inst|process_1~0_combout\ & \ultrasonic_serial_inst|inst|count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|count\(11),
	datab => \ultrasonic_serial_inst|inst|process_1~0_combout\,
	datac => \ultrasonic_serial_inst|inst|count\(8),
	datad => \ultrasonic_serial_inst|inst|count\(7),
	combout => \ultrasonic_serial_inst|inst|process_1~1_combout\);

-- Location: LCCOMB_X33_Y12_N10
\ultrasonic_serial_inst|inst|process_1~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|process_1~2_combout\ = ((\ultrasonic_serial_inst|inst|process_1~1_combout\ & (\ultrasonic_serial_inst|inst|count\(9) & \ultrasonic_serial_inst|inst|count\(10)))) # (!\bMKR_D[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|process_1~1_combout\,
	datab => \ultrasonic_serial_inst|inst|count\(9),
	datac => \bMKR_D[7]~input_o\,
	datad => \ultrasonic_serial_inst|inst|count\(10),
	combout => \ultrasonic_serial_inst|inst|process_1~2_combout\);

-- Location: LCCOMB_X33_Y12_N24
\ultrasonic_serial_inst|inst|Selector0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Selector0~0_combout\ = (\ultrasonic_serial_inst|inst|process_1~2_combout\ & (!\ultrasonic_serial_inst|inst|current_state.Measuring~q\ & ((\ultrasonic_serial_inst|inst|current_state.Ready~q\) # 
-- (!\ultrasonic_serial_inst|inst4|current_state.State_Measure~q\)))) # (!\ultrasonic_serial_inst|inst|process_1~2_combout\ & (((\ultrasonic_serial_inst|inst|current_state.Ready~q\)) # (!\ultrasonic_serial_inst|inst4|current_state.State_Measure~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|process_1~2_combout\,
	datab => \ultrasonic_serial_inst|inst4|current_state.State_Measure~q\,
	datac => \ultrasonic_serial_inst|inst|current_state.Measuring~q\,
	datad => \ultrasonic_serial_inst|inst|current_state.Ready~q\,
	combout => \ultrasonic_serial_inst|inst|Selector0~0_combout\);

-- Location: FF_X33_Y12_N25
\ultrasonic_serial_inst|inst|next_state.Ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|next_state.Ready~q\);

-- Location: LCCOMB_X33_Y12_N0
\ultrasonic_serial_inst|inst|current_state.Ready~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|current_state.Ready~feeder_combout\ = \ultrasonic_serial_inst|inst|next_state.Ready~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ultrasonic_serial_inst|inst|next_state.Ready~q\,
	combout => \ultrasonic_serial_inst|inst|current_state.Ready~feeder_combout\);

-- Location: FF_X33_Y12_N1
\ultrasonic_serial_inst|inst|current_state.Ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|current_state.Ready~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|current_state.Ready~q\);

-- Location: LCCOMB_X33_Y12_N8
\ultrasonic_serial_inst|inst|Finished~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Finished~0_combout\ = !\ultrasonic_serial_inst|inst|current_state.Ready~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ultrasonic_serial_inst|inst|current_state.Ready~q\,
	combout => \ultrasonic_serial_inst|inst|Finished~0_combout\);

-- Location: FF_X33_Y12_N9
\ultrasonic_serial_inst|inst|Finished\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Finished~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|Finished~q\);

-- Location: LCCOMB_X33_Y9_N20
\ultrasonic_serial_inst|inst4|Selector8~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector8~0_combout\ = ((\ultrasonic_serial_inst|inst4|current_state.State_Wait~q\ & !\ultrasonic_serial_inst|inst|Finished~q\)) # (!\ultrasonic_serial_inst|inst4|current_state.State_Measure~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst4|current_state.State_Measure~q\,
	datac => \ultrasonic_serial_inst|inst4|current_state.State_Wait~q\,
	datad => \ultrasonic_serial_inst|inst|Finished~q\,
	combout => \ultrasonic_serial_inst|inst4|Selector8~0_combout\);

-- Location: FF_X33_Y9_N21
\ultrasonic_serial_inst|inst4|current_state.State_Wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst5|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst4|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst4|current_state.State_Wait~q\);

-- Location: LCCOMB_X33_Y9_N10
\ultrasonic_serial_inst|inst4|Selector9~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector9~0_combout\ = (\ultrasonic_serial_inst|inst3|o_TX_Active~q\ & (\ultrasonic_serial_inst|inst4|current_state.State_Wait~q\ & ((\ultrasonic_serial_inst|inst|Finished~q\)))) # 
-- (!\ultrasonic_serial_inst|inst3|o_TX_Active~q\ & ((\ultrasonic_serial_inst|inst4|current_state.State_Digit1Trasmit~q\) # ((\ultrasonic_serial_inst|inst4|current_state.State_Wait~q\ & \ultrasonic_serial_inst|inst|Finished~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|o_TX_Active~q\,
	datab => \ultrasonic_serial_inst|inst4|current_state.State_Wait~q\,
	datac => \ultrasonic_serial_inst|inst4|current_state.State_Digit1Trasmit~q\,
	datad => \ultrasonic_serial_inst|inst|Finished~q\,
	combout => \ultrasonic_serial_inst|inst4|Selector9~0_combout\);

-- Location: FF_X33_Y9_N11
\ultrasonic_serial_inst|inst4|current_state.State_Digit1Trasmit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst5|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst4|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst4|current_state.State_Digit1Trasmit~q\);

-- Location: LCCOMB_X33_Y9_N2
\ultrasonic_serial_inst|inst4|WideOr0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|WideOr0~0_combout\ = (\ultrasonic_serial_inst|inst4|current_state.State_Digit1Trasmit~q\) # ((\ultrasonic_serial_inst|inst4|current_state.State_Digit3Trasmit~q\) # 
-- ((\ultrasonic_serial_inst|inst4|current_state.State_Digit4Trasmit~q\) # (\ultrasonic_serial_inst|inst4|current_state.State_Digit2Trasmit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst4|current_state.State_Digit1Trasmit~q\,
	datab => \ultrasonic_serial_inst|inst4|current_state.State_Digit3Trasmit~q\,
	datac => \ultrasonic_serial_inst|inst4|current_state.State_Digit4Trasmit~q\,
	datad => \ultrasonic_serial_inst|inst4|current_state.State_Digit2Trasmit~q\,
	combout => \ultrasonic_serial_inst|inst4|WideOr0~0_combout\);

-- Location: LCCOMB_X33_Y10_N26
\ultrasonic_serial_inst|inst3|Selector20~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Selector20~0_combout\ = (!\ultrasonic_serial_inst|inst3|r_SM_Main.s_Idle~q\ & ((\ultrasonic_serial_inst|inst4|WideOr0~0_combout\) # ((\ultrasonic_serial_inst|inst4|current_state.State_LFTrasmit~q\) # 
-- (\ultrasonic_serial_inst|inst4|current_state.State_CRTrasmit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst4|WideOr0~0_combout\,
	datab => \ultrasonic_serial_inst|inst4|current_state.State_LFTrasmit~q\,
	datac => \ultrasonic_serial_inst|inst4|current_state.State_CRTrasmit~q\,
	datad => \ultrasonic_serial_inst|inst3|r_SM_Main.s_Idle~q\,
	combout => \ultrasonic_serial_inst|inst3|Selector20~0_combout\);

-- Location: LCCOMB_X32_Y10_N24
\ultrasonic_serial_inst|inst3|Selector20~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Selector20~1_combout\ = (\ultrasonic_serial_inst|inst3|Selector20~0_combout\) # ((!\ultrasonic_serial_inst|inst3|LessThan1~3_combout\ & \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Start_Bit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|LessThan1~3_combout\,
	datac => \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Start_Bit~q\,
	datad => \ultrasonic_serial_inst|inst3|Selector20~0_combout\,
	combout => \ultrasonic_serial_inst|inst3|Selector20~1_combout\);

-- Location: FF_X32_Y10_N25
\ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Start_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst3|Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Start_Bit~q\);

-- Location: LCCOMB_X32_Y10_N28
\ultrasonic_serial_inst|inst3|Selector3~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Selector3~0_combout\ = (!\ultrasonic_serial_inst|inst3|LessThan1~3_combout\ & ((\ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Start_Bit~q\) # ((\ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit~q\) # 
-- (\ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Data_Bits~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|LessThan1~3_combout\,
	datab => \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Start_Bit~q\,
	datac => \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit~q\,
	datad => \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Data_Bits~q\,
	combout => \ultrasonic_serial_inst|inst3|Selector3~0_combout\);

-- Location: LCCOMB_X30_Y10_N0
\ultrasonic_serial_inst|inst3|Add0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Add0~0_combout\ = \ultrasonic_serial_inst|inst3|r_Clk_Count\(0) $ (VCC)
-- \ultrasonic_serial_inst|inst3|Add0~1\ = CARRY(\ultrasonic_serial_inst|inst3|r_Clk_Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst3|r_Clk_Count\(0),
	datad => VCC,
	combout => \ultrasonic_serial_inst|inst3|Add0~0_combout\,
	cout => \ultrasonic_serial_inst|inst3|Add0~1\);

-- Location: LCCOMB_X31_Y10_N10
\ultrasonic_serial_inst|inst3|Selector15~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Selector15~0_combout\ = (\ultrasonic_serial_inst|inst3|Add0~0_combout\ & ((\ultrasonic_serial_inst|inst3|Selector3~0_combout\) # ((\ultrasonic_serial_inst|inst3|r_Clk_Count\(0) & 
-- \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\)))) # (!\ultrasonic_serial_inst|inst3|Add0~0_combout\ & (((\ultrasonic_serial_inst|inst3|r_Clk_Count\(0) & \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|Add0~0_combout\,
	datab => \ultrasonic_serial_inst|inst3|Selector3~0_combout\,
	datac => \ultrasonic_serial_inst|inst3|r_Clk_Count\(0),
	datad => \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\,
	combout => \ultrasonic_serial_inst|inst3|Selector15~0_combout\);

-- Location: FF_X31_Y10_N11
\ultrasonic_serial_inst|inst3|r_Clk_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst3|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|r_Clk_Count\(0));

-- Location: LCCOMB_X30_Y10_N2
\ultrasonic_serial_inst|inst3|Add0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Add0~2_combout\ = (\ultrasonic_serial_inst|inst3|r_Clk_Count\(1) & (!\ultrasonic_serial_inst|inst3|Add0~1\)) # (!\ultrasonic_serial_inst|inst3|r_Clk_Count\(1) & ((\ultrasonic_serial_inst|inst3|Add0~1\) # (GND)))
-- \ultrasonic_serial_inst|inst3|Add0~3\ = CARRY((!\ultrasonic_serial_inst|inst3|Add0~1\) # (!\ultrasonic_serial_inst|inst3|r_Clk_Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|r_Clk_Count\(1),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst3|Add0~1\,
	combout => \ultrasonic_serial_inst|inst3|Add0~2_combout\,
	cout => \ultrasonic_serial_inst|inst3|Add0~3\);

-- Location: LCCOMB_X31_Y10_N30
\ultrasonic_serial_inst|inst3|Selector14~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Selector14~0_combout\ = (\ultrasonic_serial_inst|inst3|Add0~2_combout\ & ((\ultrasonic_serial_inst|inst3|Selector3~0_combout\) # ((\ultrasonic_serial_inst|inst3|r_Clk_Count\(1) & 
-- \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\)))) # (!\ultrasonic_serial_inst|inst3|Add0~2_combout\ & (((\ultrasonic_serial_inst|inst3|r_Clk_Count\(1) & \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|Add0~2_combout\,
	datab => \ultrasonic_serial_inst|inst3|Selector3~0_combout\,
	datac => \ultrasonic_serial_inst|inst3|r_Clk_Count\(1),
	datad => \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\,
	combout => \ultrasonic_serial_inst|inst3|Selector14~0_combout\);

-- Location: FF_X31_Y10_N31
\ultrasonic_serial_inst|inst3|r_Clk_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst3|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|r_Clk_Count\(1));

-- Location: LCCOMB_X30_Y10_N4
\ultrasonic_serial_inst|inst3|Add0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Add0~4_combout\ = (\ultrasonic_serial_inst|inst3|r_Clk_Count\(2) & (\ultrasonic_serial_inst|inst3|Add0~3\ $ (GND))) # (!\ultrasonic_serial_inst|inst3|r_Clk_Count\(2) & (!\ultrasonic_serial_inst|inst3|Add0~3\ & VCC))
-- \ultrasonic_serial_inst|inst3|Add0~5\ = CARRY((\ultrasonic_serial_inst|inst3|r_Clk_Count\(2) & !\ultrasonic_serial_inst|inst3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst3|r_Clk_Count\(2),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst3|Add0~3\,
	combout => \ultrasonic_serial_inst|inst3|Add0~4_combout\,
	cout => \ultrasonic_serial_inst|inst3|Add0~5\);

-- Location: LCCOMB_X31_Y10_N12
\ultrasonic_serial_inst|inst3|Selector13~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Selector13~0_combout\ = (\ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\ & ((\ultrasonic_serial_inst|inst3|r_Clk_Count\(2)) # ((\ultrasonic_serial_inst|inst3|Add0~4_combout\ & 
-- \ultrasonic_serial_inst|inst3|Selector3~0_combout\)))) # (!\ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\ & (\ultrasonic_serial_inst|inst3|Add0~4_combout\ & ((\ultrasonic_serial_inst|inst3|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\,
	datab => \ultrasonic_serial_inst|inst3|Add0~4_combout\,
	datac => \ultrasonic_serial_inst|inst3|r_Clk_Count\(2),
	datad => \ultrasonic_serial_inst|inst3|Selector3~0_combout\,
	combout => \ultrasonic_serial_inst|inst3|Selector13~0_combout\);

-- Location: FF_X31_Y10_N13
\ultrasonic_serial_inst|inst3|r_Clk_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst3|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|r_Clk_Count\(2));

-- Location: LCCOMB_X30_Y10_N6
\ultrasonic_serial_inst|inst3|Add0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Add0~6_combout\ = (\ultrasonic_serial_inst|inst3|r_Clk_Count\(3) & (!\ultrasonic_serial_inst|inst3|Add0~5\)) # (!\ultrasonic_serial_inst|inst3|r_Clk_Count\(3) & ((\ultrasonic_serial_inst|inst3|Add0~5\) # (GND)))
-- \ultrasonic_serial_inst|inst3|Add0~7\ = CARRY((!\ultrasonic_serial_inst|inst3|Add0~5\) # (!\ultrasonic_serial_inst|inst3|r_Clk_Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|r_Clk_Count\(3),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst3|Add0~5\,
	combout => \ultrasonic_serial_inst|inst3|Add0~6_combout\,
	cout => \ultrasonic_serial_inst|inst3|Add0~7\);

-- Location: LCCOMB_X31_Y10_N20
\ultrasonic_serial_inst|inst3|Selector12~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Selector12~0_combout\ = (\ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\ & ((\ultrasonic_serial_inst|inst3|r_Clk_Count\(3)) # ((\ultrasonic_serial_inst|inst3|Add0~6_combout\ & 
-- \ultrasonic_serial_inst|inst3|Selector3~0_combout\)))) # (!\ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\ & (\ultrasonic_serial_inst|inst3|Add0~6_combout\ & ((\ultrasonic_serial_inst|inst3|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\,
	datab => \ultrasonic_serial_inst|inst3|Add0~6_combout\,
	datac => \ultrasonic_serial_inst|inst3|r_Clk_Count\(3),
	datad => \ultrasonic_serial_inst|inst3|Selector3~0_combout\,
	combout => \ultrasonic_serial_inst|inst3|Selector12~0_combout\);

-- Location: FF_X31_Y10_N21
\ultrasonic_serial_inst|inst3|r_Clk_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|r_Clk_Count\(3));

-- Location: LCCOMB_X30_Y10_N8
\ultrasonic_serial_inst|inst3|Add0~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Add0~8_combout\ = (\ultrasonic_serial_inst|inst3|r_Clk_Count\(4) & (\ultrasonic_serial_inst|inst3|Add0~7\ $ (GND))) # (!\ultrasonic_serial_inst|inst3|r_Clk_Count\(4) & (!\ultrasonic_serial_inst|inst3|Add0~7\ & VCC))
-- \ultrasonic_serial_inst|inst3|Add0~9\ = CARRY((\ultrasonic_serial_inst|inst3|r_Clk_Count\(4) & !\ultrasonic_serial_inst|inst3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst3|r_Clk_Count\(4),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst3|Add0~7\,
	combout => \ultrasonic_serial_inst|inst3|Add0~8_combout\,
	cout => \ultrasonic_serial_inst|inst3|Add0~9\);

-- Location: LCCOMB_X30_Y10_N28
\ultrasonic_serial_inst|inst3|Selector11~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Selector11~0_combout\ = (\ultrasonic_serial_inst|inst3|Selector3~0_combout\ & ((\ultrasonic_serial_inst|inst3|Add0~8_combout\) # ((\ultrasonic_serial_inst|inst3|r_Clk_Count\(4) & 
-- \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\)))) # (!\ultrasonic_serial_inst|inst3|Selector3~0_combout\ & (((\ultrasonic_serial_inst|inst3|r_Clk_Count\(4) & \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|Selector3~0_combout\,
	datab => \ultrasonic_serial_inst|inst3|Add0~8_combout\,
	datac => \ultrasonic_serial_inst|inst3|r_Clk_Count\(4),
	datad => \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\,
	combout => \ultrasonic_serial_inst|inst3|Selector11~0_combout\);

-- Location: FF_X30_Y10_N29
\ultrasonic_serial_inst|inst3|r_Clk_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst3|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|r_Clk_Count\(4));

-- Location: LCCOMB_X30_Y10_N10
\ultrasonic_serial_inst|inst3|Add0~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Add0~10_combout\ = (\ultrasonic_serial_inst|inst3|r_Clk_Count\(5) & (!\ultrasonic_serial_inst|inst3|Add0~9\)) # (!\ultrasonic_serial_inst|inst3|r_Clk_Count\(5) & ((\ultrasonic_serial_inst|inst3|Add0~9\) # (GND)))
-- \ultrasonic_serial_inst|inst3|Add0~11\ = CARRY((!\ultrasonic_serial_inst|inst3|Add0~9\) # (!\ultrasonic_serial_inst|inst3|r_Clk_Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|r_Clk_Count\(5),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst3|Add0~9\,
	combout => \ultrasonic_serial_inst|inst3|Add0~10_combout\,
	cout => \ultrasonic_serial_inst|inst3|Add0~11\);

-- Location: LCCOMB_X31_Y10_N6
\ultrasonic_serial_inst|inst3|Selector10~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Selector10~0_combout\ = (\ultrasonic_serial_inst|inst3|Add0~10_combout\ & ((\ultrasonic_serial_inst|inst3|Selector3~0_combout\) # ((\ultrasonic_serial_inst|inst3|r_Clk_Count\(5) & 
-- \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\)))) # (!\ultrasonic_serial_inst|inst3|Add0~10_combout\ & (((\ultrasonic_serial_inst|inst3|r_Clk_Count\(5) & \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|Add0~10_combout\,
	datab => \ultrasonic_serial_inst|inst3|Selector3~0_combout\,
	datac => \ultrasonic_serial_inst|inst3|r_Clk_Count\(5),
	datad => \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\,
	combout => \ultrasonic_serial_inst|inst3|Selector10~0_combout\);

-- Location: FF_X31_Y10_N7
\ultrasonic_serial_inst|inst3|r_Clk_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst3|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|r_Clk_Count\(5));

-- Location: LCCOMB_X30_Y10_N12
\ultrasonic_serial_inst|inst3|Add0~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Add0~12_combout\ = (\ultrasonic_serial_inst|inst3|r_Clk_Count\(6) & (\ultrasonic_serial_inst|inst3|Add0~11\ $ (GND))) # (!\ultrasonic_serial_inst|inst3|r_Clk_Count\(6) & (!\ultrasonic_serial_inst|inst3|Add0~11\ & VCC))
-- \ultrasonic_serial_inst|inst3|Add0~13\ = CARRY((\ultrasonic_serial_inst|inst3|r_Clk_Count\(6) & !\ultrasonic_serial_inst|inst3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst3|r_Clk_Count\(6),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst3|Add0~11\,
	combout => \ultrasonic_serial_inst|inst3|Add0~12_combout\,
	cout => \ultrasonic_serial_inst|inst3|Add0~13\);

-- Location: LCCOMB_X31_Y10_N8
\ultrasonic_serial_inst|inst3|Selector9~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Selector9~0_combout\ = (\ultrasonic_serial_inst|inst3|Add0~12_combout\ & ((\ultrasonic_serial_inst|inst3|Selector3~0_combout\) # ((\ultrasonic_serial_inst|inst3|r_Clk_Count\(6) & 
-- \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\)))) # (!\ultrasonic_serial_inst|inst3|Add0~12_combout\ & (((\ultrasonic_serial_inst|inst3|r_Clk_Count\(6) & \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|Add0~12_combout\,
	datab => \ultrasonic_serial_inst|inst3|Selector3~0_combout\,
	datac => \ultrasonic_serial_inst|inst3|r_Clk_Count\(6),
	datad => \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\,
	combout => \ultrasonic_serial_inst|inst3|Selector9~0_combout\);

-- Location: FF_X31_Y10_N9
\ultrasonic_serial_inst|inst3|r_Clk_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst3|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|r_Clk_Count\(6));

-- Location: LCCOMB_X30_Y10_N14
\ultrasonic_serial_inst|inst3|Add0~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Add0~14_combout\ = (\ultrasonic_serial_inst|inst3|r_Clk_Count\(7) & (!\ultrasonic_serial_inst|inst3|Add0~13\)) # (!\ultrasonic_serial_inst|inst3|r_Clk_Count\(7) & ((\ultrasonic_serial_inst|inst3|Add0~13\) # (GND)))
-- \ultrasonic_serial_inst|inst3|Add0~15\ = CARRY((!\ultrasonic_serial_inst|inst3|Add0~13\) # (!\ultrasonic_serial_inst|inst3|r_Clk_Count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|r_Clk_Count\(7),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst3|Add0~13\,
	combout => \ultrasonic_serial_inst|inst3|Add0~14_combout\,
	cout => \ultrasonic_serial_inst|inst3|Add0~15\);

-- Location: LCCOMB_X30_Y10_N30
\ultrasonic_serial_inst|inst3|Selector8~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Selector8~0_combout\ = (\ultrasonic_serial_inst|inst3|Selector3~0_combout\ & ((\ultrasonic_serial_inst|inst3|Add0~14_combout\) # ((\ultrasonic_serial_inst|inst3|r_Clk_Count\(7) & 
-- \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\)))) # (!\ultrasonic_serial_inst|inst3|Selector3~0_combout\ & (((\ultrasonic_serial_inst|inst3|r_Clk_Count\(7) & \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|Selector3~0_combout\,
	datab => \ultrasonic_serial_inst|inst3|Add0~14_combout\,
	datac => \ultrasonic_serial_inst|inst3|r_Clk_Count\(7),
	datad => \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\,
	combout => \ultrasonic_serial_inst|inst3|Selector8~0_combout\);

-- Location: FF_X30_Y10_N31
\ultrasonic_serial_inst|inst3|r_Clk_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst3|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|r_Clk_Count\(7));

-- Location: LCCOMB_X30_Y10_N16
\ultrasonic_serial_inst|inst3|Add0~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Add0~16_combout\ = (\ultrasonic_serial_inst|inst3|r_Clk_Count\(8) & (\ultrasonic_serial_inst|inst3|Add0~15\ $ (GND))) # (!\ultrasonic_serial_inst|inst3|r_Clk_Count\(8) & (!\ultrasonic_serial_inst|inst3|Add0~15\ & VCC))
-- \ultrasonic_serial_inst|inst3|Add0~17\ = CARRY((\ultrasonic_serial_inst|inst3|r_Clk_Count\(8) & !\ultrasonic_serial_inst|inst3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|r_Clk_Count\(8),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst3|Add0~15\,
	combout => \ultrasonic_serial_inst|inst3|Add0~16_combout\,
	cout => \ultrasonic_serial_inst|inst3|Add0~17\);

-- Location: LCCOMB_X31_Y10_N2
\ultrasonic_serial_inst|inst3|Selector7~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Selector7~0_combout\ = (\ultrasonic_serial_inst|inst3|Add0~16_combout\ & ((\ultrasonic_serial_inst|inst3|Selector3~0_combout\) # ((\ultrasonic_serial_inst|inst3|r_Clk_Count\(8) & 
-- \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\)))) # (!\ultrasonic_serial_inst|inst3|Add0~16_combout\ & (((\ultrasonic_serial_inst|inst3|r_Clk_Count\(8) & \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|Add0~16_combout\,
	datab => \ultrasonic_serial_inst|inst3|Selector3~0_combout\,
	datac => \ultrasonic_serial_inst|inst3|r_Clk_Count\(8),
	datad => \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\,
	combout => \ultrasonic_serial_inst|inst3|Selector7~0_combout\);

-- Location: FF_X31_Y10_N3
\ultrasonic_serial_inst|inst3|r_Clk_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst3|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|r_Clk_Count\(8));

-- Location: LCCOMB_X30_Y10_N18
\ultrasonic_serial_inst|inst3|Add0~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Add0~18_combout\ = (\ultrasonic_serial_inst|inst3|r_Clk_Count\(9) & (!\ultrasonic_serial_inst|inst3|Add0~17\)) # (!\ultrasonic_serial_inst|inst3|r_Clk_Count\(9) & ((\ultrasonic_serial_inst|inst3|Add0~17\) # (GND)))
-- \ultrasonic_serial_inst|inst3|Add0~19\ = CARRY((!\ultrasonic_serial_inst|inst3|Add0~17\) # (!\ultrasonic_serial_inst|inst3|r_Clk_Count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst3|r_Clk_Count\(9),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst3|Add0~17\,
	combout => \ultrasonic_serial_inst|inst3|Add0~18_combout\,
	cout => \ultrasonic_serial_inst|inst3|Add0~19\);

-- Location: LCCOMB_X31_Y10_N16
\ultrasonic_serial_inst|inst3|Selector6~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Selector6~0_combout\ = (\ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\ & ((\ultrasonic_serial_inst|inst3|r_Clk_Count\(9)) # ((\ultrasonic_serial_inst|inst3|Add0~18_combout\ & 
-- \ultrasonic_serial_inst|inst3|Selector3~0_combout\)))) # (!\ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\ & (\ultrasonic_serial_inst|inst3|Add0~18_combout\ & ((\ultrasonic_serial_inst|inst3|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\,
	datab => \ultrasonic_serial_inst|inst3|Add0~18_combout\,
	datac => \ultrasonic_serial_inst|inst3|r_Clk_Count\(9),
	datad => \ultrasonic_serial_inst|inst3|Selector3~0_combout\,
	combout => \ultrasonic_serial_inst|inst3|Selector6~0_combout\);

-- Location: FF_X31_Y10_N17
\ultrasonic_serial_inst|inst3|r_Clk_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst3|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|r_Clk_Count\(9));

-- Location: LCCOMB_X30_Y10_N20
\ultrasonic_serial_inst|inst3|Add0~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Add0~20_combout\ = (\ultrasonic_serial_inst|inst3|r_Clk_Count\(10) & (\ultrasonic_serial_inst|inst3|Add0~19\ $ (GND))) # (!\ultrasonic_serial_inst|inst3|r_Clk_Count\(10) & (!\ultrasonic_serial_inst|inst3|Add0~19\ & VCC))
-- \ultrasonic_serial_inst|inst3|Add0~21\ = CARRY((\ultrasonic_serial_inst|inst3|r_Clk_Count\(10) & !\ultrasonic_serial_inst|inst3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst3|r_Clk_Count\(10),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst3|Add0~19\,
	combout => \ultrasonic_serial_inst|inst3|Add0~20_combout\,
	cout => \ultrasonic_serial_inst|inst3|Add0~21\);

-- Location: LCCOMB_X31_Y10_N18
\ultrasonic_serial_inst|inst3|Selector5~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Selector5~0_combout\ = (\ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\ & ((\ultrasonic_serial_inst|inst3|r_Clk_Count\(10)) # ((\ultrasonic_serial_inst|inst3|Add0~20_combout\ & 
-- \ultrasonic_serial_inst|inst3|Selector3~0_combout\)))) # (!\ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\ & (\ultrasonic_serial_inst|inst3|Add0~20_combout\ & ((\ultrasonic_serial_inst|inst3|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\,
	datab => \ultrasonic_serial_inst|inst3|Add0~20_combout\,
	datac => \ultrasonic_serial_inst|inst3|r_Clk_Count\(10),
	datad => \ultrasonic_serial_inst|inst3|Selector3~0_combout\,
	combout => \ultrasonic_serial_inst|inst3|Selector5~0_combout\);

-- Location: FF_X31_Y10_N19
\ultrasonic_serial_inst|inst3|r_Clk_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst3|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|r_Clk_Count\(10));

-- Location: LCCOMB_X30_Y10_N22
\ultrasonic_serial_inst|inst3|Add0~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Add0~22_combout\ = (\ultrasonic_serial_inst|inst3|r_Clk_Count\(11) & (!\ultrasonic_serial_inst|inst3|Add0~21\)) # (!\ultrasonic_serial_inst|inst3|r_Clk_Count\(11) & ((\ultrasonic_serial_inst|inst3|Add0~21\) # (GND)))
-- \ultrasonic_serial_inst|inst3|Add0~23\ = CARRY((!\ultrasonic_serial_inst|inst3|Add0~21\) # (!\ultrasonic_serial_inst|inst3|r_Clk_Count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst3|r_Clk_Count\(11),
	datad => VCC,
	cin => \ultrasonic_serial_inst|inst3|Add0~21\,
	combout => \ultrasonic_serial_inst|inst3|Add0~22_combout\,
	cout => \ultrasonic_serial_inst|inst3|Add0~23\);

-- Location: LCCOMB_X31_Y10_N24
\ultrasonic_serial_inst|inst3|Selector4~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Selector4~0_combout\ = (\ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\ & ((\ultrasonic_serial_inst|inst3|r_Clk_Count\(11)) # ((\ultrasonic_serial_inst|inst3|Add0~22_combout\ & 
-- \ultrasonic_serial_inst|inst3|Selector3~0_combout\)))) # (!\ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\ & (\ultrasonic_serial_inst|inst3|Add0~22_combout\ & ((\ultrasonic_serial_inst|inst3|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\,
	datab => \ultrasonic_serial_inst|inst3|Add0~22_combout\,
	datac => \ultrasonic_serial_inst|inst3|r_Clk_Count\(11),
	datad => \ultrasonic_serial_inst|inst3|Selector3~0_combout\,
	combout => \ultrasonic_serial_inst|inst3|Selector4~0_combout\);

-- Location: FF_X31_Y10_N25
\ultrasonic_serial_inst|inst3|r_Clk_Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst3|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|r_Clk_Count\(11));

-- Location: LCCOMB_X30_Y10_N24
\ultrasonic_serial_inst|inst3|Add0~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Add0~24_combout\ = \ultrasonic_serial_inst|inst3|Add0~23\ $ (!\ultrasonic_serial_inst|inst3|r_Clk_Count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ultrasonic_serial_inst|inst3|r_Clk_Count\(12),
	cin => \ultrasonic_serial_inst|inst3|Add0~23\,
	combout => \ultrasonic_serial_inst|inst3|Add0~24_combout\);

-- Location: LCCOMB_X31_Y10_N22
\ultrasonic_serial_inst|inst3|Selector3~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Selector3~1_combout\ = (\ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\ & ((\ultrasonic_serial_inst|inst3|r_Clk_Count\(12)) # ((\ultrasonic_serial_inst|inst3|Add0~24_combout\ & 
-- \ultrasonic_serial_inst|inst3|Selector3~0_combout\)))) # (!\ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\ & (\ultrasonic_serial_inst|inst3|Add0~24_combout\ & ((\ultrasonic_serial_inst|inst3|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\,
	datab => \ultrasonic_serial_inst|inst3|Add0~24_combout\,
	datac => \ultrasonic_serial_inst|inst3|r_Clk_Count\(12),
	datad => \ultrasonic_serial_inst|inst3|Selector3~0_combout\,
	combout => \ultrasonic_serial_inst|inst3|Selector3~1_combout\);

-- Location: FF_X31_Y10_N23
\ultrasonic_serial_inst|inst3|r_Clk_Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst3|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|r_Clk_Count\(12));

-- Location: LCCOMB_X30_Y10_N26
\ultrasonic_serial_inst|inst3|LessThan1~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|LessThan1~1_combout\ = (!\ultrasonic_serial_inst|inst3|r_Clk_Count\(7) & (!\ultrasonic_serial_inst|inst3|r_Clk_Count\(4) & (!\ultrasonic_serial_inst|inst3|r_Clk_Count\(6) & !\ultrasonic_serial_inst|inst3|r_Clk_Count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|r_Clk_Count\(7),
	datab => \ultrasonic_serial_inst|inst3|r_Clk_Count\(4),
	datac => \ultrasonic_serial_inst|inst3|r_Clk_Count\(6),
	datad => \ultrasonic_serial_inst|inst3|r_Clk_Count\(5),
	combout => \ultrasonic_serial_inst|inst3|LessThan1~1_combout\);

-- Location: LCCOMB_X31_Y10_N26
\ultrasonic_serial_inst|inst3|LessThan1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|LessThan1~0_combout\ = (((!\ultrasonic_serial_inst|inst3|r_Clk_Count\(0) & !\ultrasonic_serial_inst|inst3|r_Clk_Count\(1))) # (!\ultrasonic_serial_inst|inst3|r_Clk_Count\(2))) # 
-- (!\ultrasonic_serial_inst|inst3|r_Clk_Count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|r_Clk_Count\(0),
	datab => \ultrasonic_serial_inst|inst3|r_Clk_Count\(3),
	datac => \ultrasonic_serial_inst|inst3|r_Clk_Count\(1),
	datad => \ultrasonic_serial_inst|inst3|r_Clk_Count\(2),
	combout => \ultrasonic_serial_inst|inst3|LessThan1~0_combout\);

-- Location: LCCOMB_X31_Y10_N4
\ultrasonic_serial_inst|inst3|LessThan1~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|LessThan1~2_combout\ = (!\ultrasonic_serial_inst|inst3|r_Clk_Count\(9) & (((\ultrasonic_serial_inst|inst3|LessThan1~1_combout\ & \ultrasonic_serial_inst|inst3|LessThan1~0_combout\)) # 
-- (!\ultrasonic_serial_inst|inst3|r_Clk_Count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|LessThan1~1_combout\,
	datab => \ultrasonic_serial_inst|inst3|r_Clk_Count\(9),
	datac => \ultrasonic_serial_inst|inst3|LessThan1~0_combout\,
	datad => \ultrasonic_serial_inst|inst3|r_Clk_Count\(8),
	combout => \ultrasonic_serial_inst|inst3|LessThan1~2_combout\);

-- Location: LCCOMB_X31_Y10_N14
\ultrasonic_serial_inst|inst3|LessThan1~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|LessThan1~3_combout\ = (\ultrasonic_serial_inst|inst3|r_Clk_Count\(12) & (\ultrasonic_serial_inst|inst3|r_Clk_Count\(11) & (!\ultrasonic_serial_inst|inst3|LessThan1~2_combout\ & 
-- \ultrasonic_serial_inst|inst3|r_Clk_Count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|r_Clk_Count\(12),
	datab => \ultrasonic_serial_inst|inst3|r_Clk_Count\(11),
	datac => \ultrasonic_serial_inst|inst3|LessThan1~2_combout\,
	datad => \ultrasonic_serial_inst|inst3|r_Clk_Count\(10),
	combout => \ultrasonic_serial_inst|inst3|LessThan1~3_combout\);

-- Location: LCCOMB_X32_Y10_N6
\ultrasonic_serial_inst|inst3|r_SM_Main~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|r_SM_Main~7_combout\ = (\ultrasonic_serial_inst|inst3|LessThan1~3_combout\ & \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|LessThan1~3_combout\,
	datac => \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit~q\,
	combout => \ultrasonic_serial_inst|inst3|r_SM_Main~7_combout\);

-- Location: FF_X32_Y10_N7
\ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst3|r_SM_Main~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\);

-- Location: LCCOMB_X32_Y10_N12
\ultrasonic_serial_inst|inst3|Selector1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Selector1~0_combout\ = (\ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit~q\) # (((\ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\ & \ultrasonic_serial_inst|inst3|o_TX_Serial~q\)) # 
-- (!\ultrasonic_serial_inst|inst3|r_SM_Main.s_Idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|r_SM_Main.s_Cleanup~q\,
	datab => \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Stop_Bit~q\,
	datac => \ultrasonic_serial_inst|inst3|o_TX_Serial~q\,
	datad => \ultrasonic_serial_inst|inst3|r_SM_Main.s_Idle~q\,
	combout => \ultrasonic_serial_inst|inst3|Selector1~0_combout\);

-- Location: LCCOMB_X31_Y12_N14
\ultrasonic_serial_inst|inst|Pulse_len~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Pulse_len~6_combout\ = (\ultrasonic_serial_inst|inst|count\(6) & !\ultrasonic_serial_inst|inst|current_state.Ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst|count\(6),
	datad => \ultrasonic_serial_inst|inst|current_state.Ready~q\,
	combout => \ultrasonic_serial_inst|inst|Pulse_len~6_combout\);

-- Location: FF_X31_Y12_N15
\ultrasonic_serial_inst|inst|Pulse_len[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Pulse_len~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|Pulse_len\(6));

-- Location: LCCOMB_X32_Y12_N26
\ultrasonic_serial_inst|inst|Pulse_len~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Pulse_len~5_combout\ = (\ultrasonic_serial_inst|inst|count\(7) & !\ultrasonic_serial_inst|inst|current_state.Ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|count\(7),
	datad => \ultrasonic_serial_inst|inst|current_state.Ready~q\,
	combout => \ultrasonic_serial_inst|inst|Pulse_len~5_combout\);

-- Location: FF_X32_Y12_N27
\ultrasonic_serial_inst|inst|Pulse_len[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Pulse_len~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|Pulse_len\(7));

-- Location: LCCOMB_X32_Y12_N12
\ultrasonic_serial_inst|inst|Pulse_len~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Pulse_len~1_combout\ = (\ultrasonic_serial_inst|inst|count\(8) & !\ultrasonic_serial_inst|inst|current_state.Ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst|count\(8),
	datad => \ultrasonic_serial_inst|inst|current_state.Ready~q\,
	combout => \ultrasonic_serial_inst|inst|Pulse_len~1_combout\);

-- Location: FF_X32_Y12_N13
\ultrasonic_serial_inst|inst|Pulse_len[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Pulse_len~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|Pulse_len\(8));

-- Location: LCCOMB_X33_Y12_N18
\ultrasonic_serial_inst|inst|Pulse_len~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Pulse_len~4_combout\ = (!\ultrasonic_serial_inst|inst|current_state.Ready~q\ & \ultrasonic_serial_inst|inst|count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst|current_state.Ready~q\,
	datad => \ultrasonic_serial_inst|inst|count\(10),
	combout => \ultrasonic_serial_inst|inst|Pulse_len~4_combout\);

-- Location: FF_X33_Y12_N19
\ultrasonic_serial_inst|inst|Pulse_len[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Pulse_len~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|Pulse_len\(10));

-- Location: LCCOMB_X31_Y12_N6
\ultrasonic_serial_inst|inst|Pulse_len~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Pulse_len~2_combout\ = (\ultrasonic_serial_inst|inst|count\(11) & !\ultrasonic_serial_inst|inst|current_state.Ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ultrasonic_serial_inst|inst|count\(11),
	datad => \ultrasonic_serial_inst|inst|current_state.Ready~q\,
	combout => \ultrasonic_serial_inst|inst|Pulse_len~2_combout\);

-- Location: FF_X31_Y12_N7
\ultrasonic_serial_inst|inst|Pulse_len[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Pulse_len~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|Pulse_len\(11));

-- Location: LCCOMB_X33_Y12_N26
\ultrasonic_serial_inst|inst|Pulse_len~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Pulse_len~3_combout\ = (\ultrasonic_serial_inst|inst|count\(9) & !\ultrasonic_serial_inst|inst|current_state.Ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ultrasonic_serial_inst|inst|count\(9),
	datad => \ultrasonic_serial_inst|inst|current_state.Ready~q\,
	combout => \ultrasonic_serial_inst|inst|Pulse_len~3_combout\);

-- Location: FF_X33_Y12_N27
\ultrasonic_serial_inst|inst|Pulse_len[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Pulse_len~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|Pulse_len\(9));

-- Location: LCCOMB_X32_Y12_N28
\ultrasonic_serial_inst|inst1|bcd~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~5_combout\ = (\ultrasonic_serial_inst|inst|Pulse_len\(8) & (!\ultrasonic_serial_inst|inst|Pulse_len\(10) & (\ultrasonic_serial_inst|inst|Pulse_len\(11) & !\ultrasonic_serial_inst|inst|Pulse_len\(9)))) # 
-- (!\ultrasonic_serial_inst|inst|Pulse_len\(8) & (\ultrasonic_serial_inst|inst|Pulse_len\(10) & (\ultrasonic_serial_inst|inst|Pulse_len\(11) $ (!\ultrasonic_serial_inst|inst|Pulse_len\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|Pulse_len\(8),
	datab => \ultrasonic_serial_inst|inst|Pulse_len\(10),
	datac => \ultrasonic_serial_inst|inst|Pulse_len\(11),
	datad => \ultrasonic_serial_inst|inst|Pulse_len\(9),
	combout => \ultrasonic_serial_inst|inst1|bcd~5_combout\);

-- Location: LCCOMB_X32_Y12_N4
\ultrasonic_serial_inst|inst1|bcd~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~6_combout\ = (\ultrasonic_serial_inst|inst|Pulse_len\(11) & (!\ultrasonic_serial_inst|inst|Pulse_len\(9) & ((\ultrasonic_serial_inst|inst|Pulse_len\(10)) # (!\ultrasonic_serial_inst|inst|Pulse_len\(8))))) # 
-- (!\ultrasonic_serial_inst|inst|Pulse_len\(11) & (\ultrasonic_serial_inst|inst|Pulse_len\(9) & ((\ultrasonic_serial_inst|inst|Pulse_len\(8)) # (!\ultrasonic_serial_inst|inst|Pulse_len\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|Pulse_len\(8),
	datab => \ultrasonic_serial_inst|inst|Pulse_len\(10),
	datac => \ultrasonic_serial_inst|inst|Pulse_len\(11),
	datad => \ultrasonic_serial_inst|inst|Pulse_len\(9),
	combout => \ultrasonic_serial_inst|inst1|bcd~6_combout\);

-- Location: LCCOMB_X32_Y12_N20
\ultrasonic_serial_inst|inst1|bcd~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~4_combout\ = (\ultrasonic_serial_inst|inst|Pulse_len\(8) & (\ultrasonic_serial_inst|inst|Pulse_len\(10) $ (((\ultrasonic_serial_inst|inst|Pulse_len\(9)) # (!\ultrasonic_serial_inst|inst|Pulse_len\(11)))))) # 
-- (!\ultrasonic_serial_inst|inst|Pulse_len\(8) & ((\ultrasonic_serial_inst|inst|Pulse_len\(10) & (!\ultrasonic_serial_inst|inst|Pulse_len\(11) & \ultrasonic_serial_inst|inst|Pulse_len\(9))) # (!\ultrasonic_serial_inst|inst|Pulse_len\(10) & 
-- (\ultrasonic_serial_inst|inst|Pulse_len\(11) & !\ultrasonic_serial_inst|inst|Pulse_len\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|Pulse_len\(8),
	datab => \ultrasonic_serial_inst|inst|Pulse_len\(10),
	datac => \ultrasonic_serial_inst|inst|Pulse_len\(11),
	datad => \ultrasonic_serial_inst|inst|Pulse_len\(9),
	combout => \ultrasonic_serial_inst|inst1|bcd~4_combout\);

-- Location: LCCOMB_X32_Y12_N22
\ultrasonic_serial_inst|inst1|bcd~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~8_combout\ = (\ultrasonic_serial_inst|inst1|bcd~6_combout\ & (!\ultrasonic_serial_inst|inst|Pulse_len\(7) & ((!\ultrasonic_serial_inst|inst1|bcd~4_combout\)))) # (!\ultrasonic_serial_inst|inst1|bcd~6_combout\ & 
-- (\ultrasonic_serial_inst|inst1|bcd~5_combout\ & ((\ultrasonic_serial_inst|inst|Pulse_len\(7)) # (\ultrasonic_serial_inst|inst1|bcd~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|Pulse_len\(7),
	datab => \ultrasonic_serial_inst|inst1|bcd~5_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~6_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~4_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~8_combout\);

-- Location: LCCOMB_X32_Y12_N24
\ultrasonic_serial_inst|inst1|bcd~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~7_combout\ = (\ultrasonic_serial_inst|inst|Pulse_len\(7) & (!\ultrasonic_serial_inst|inst1|bcd~5_combout\ & (!\ultrasonic_serial_inst|inst1|bcd~6_combout\))) # (!\ultrasonic_serial_inst|inst|Pulse_len\(7) & 
-- ((\ultrasonic_serial_inst|inst1|bcd~5_combout\) # ((\ultrasonic_serial_inst|inst1|bcd~6_combout\ & \ultrasonic_serial_inst|inst1|bcd~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|Pulse_len\(7),
	datab => \ultrasonic_serial_inst|inst1|bcd~5_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~6_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~4_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~7_combout\);

-- Location: LCCOMB_X32_Y12_N16
\ultrasonic_serial_inst|inst1|bcd~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~9_combout\ = (\ultrasonic_serial_inst|inst|Pulse_len\(7) & (((\ultrasonic_serial_inst|inst1|bcd~4_combout\)))) # (!\ultrasonic_serial_inst|inst|Pulse_len\(7) & ((\ultrasonic_serial_inst|inst1|bcd~5_combout\ & 
-- ((!\ultrasonic_serial_inst|inst1|bcd~4_combout\))) # (!\ultrasonic_serial_inst|inst1|bcd~5_combout\ & (!\ultrasonic_serial_inst|inst1|bcd~6_combout\ & \ultrasonic_serial_inst|inst1|bcd~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|Pulse_len\(7),
	datab => \ultrasonic_serial_inst|inst1|bcd~5_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~6_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~4_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~9_combout\);

-- Location: LCCOMB_X31_Y13_N6
\ultrasonic_serial_inst|inst1|bcd~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~10_combout\ = (\ultrasonic_serial_inst|inst|Pulse_len\(6) & (!\ultrasonic_serial_inst|inst1|bcd~8_combout\ & ((!\ultrasonic_serial_inst|inst1|bcd~9_combout\)))) # (!\ultrasonic_serial_inst|inst|Pulse_len\(6) & 
-- ((\ultrasonic_serial_inst|inst1|bcd~8_combout\) # ((\ultrasonic_serial_inst|inst1|bcd~7_combout\ & \ultrasonic_serial_inst|inst1|bcd~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|Pulse_len\(6),
	datab => \ultrasonic_serial_inst|inst1|bcd~8_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~7_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~9_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~10_combout\);

-- Location: LCCOMB_X31_Y13_N24
\ultrasonic_serial_inst|inst1|bcd~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~12_combout\ = (\ultrasonic_serial_inst|inst|Pulse_len\(6) & (((\ultrasonic_serial_inst|inst1|bcd~7_combout\)))) # (!\ultrasonic_serial_inst|inst|Pulse_len\(6) & ((\ultrasonic_serial_inst|inst1|bcd~8_combout\ & 
-- (!\ultrasonic_serial_inst|inst1|bcd~7_combout\)) # (!\ultrasonic_serial_inst|inst1|bcd~8_combout\ & (\ultrasonic_serial_inst|inst1|bcd~7_combout\ & !\ultrasonic_serial_inst|inst1|bcd~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|Pulse_len\(6),
	datab => \ultrasonic_serial_inst|inst1|bcd~8_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~7_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~9_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~12_combout\);

-- Location: LCCOMB_X31_Y12_N10
\ultrasonic_serial_inst|inst|Pulse_len~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Pulse_len~7_combout\ = (\ultrasonic_serial_inst|inst|count\(5) & !\ultrasonic_serial_inst|inst|current_state.Ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst|count\(5),
	datad => \ultrasonic_serial_inst|inst|current_state.Ready~q\,
	combout => \ultrasonic_serial_inst|inst|Pulse_len~7_combout\);

-- Location: FF_X31_Y12_N11
\ultrasonic_serial_inst|inst|Pulse_len[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Pulse_len~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|Pulse_len\(5));

-- Location: LCCOMB_X31_Y13_N18
\ultrasonic_serial_inst|inst1|bcd~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~11_combout\ = (\ultrasonic_serial_inst|inst1|bcd~9_combout\ & (!\ultrasonic_serial_inst|inst|Pulse_len\(6) & ((!\ultrasonic_serial_inst|inst1|bcd~7_combout\)))) # (!\ultrasonic_serial_inst|inst1|bcd~9_combout\ & 
-- (\ultrasonic_serial_inst|inst1|bcd~8_combout\ & ((\ultrasonic_serial_inst|inst|Pulse_len\(6)) # (\ultrasonic_serial_inst|inst1|bcd~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|Pulse_len\(6),
	datab => \ultrasonic_serial_inst|inst1|bcd~8_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~7_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~9_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~11_combout\);

-- Location: LCCOMB_X31_Y13_N10
\ultrasonic_serial_inst|inst1|bcd~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~15_combout\ = (\ultrasonic_serial_inst|inst1|bcd~10_combout\ & ((\ultrasonic_serial_inst|inst|Pulse_len\(5)) # ((!\ultrasonic_serial_inst|inst1|bcd~12_combout\ & !\ultrasonic_serial_inst|inst1|bcd~11_combout\)))) # 
-- (!\ultrasonic_serial_inst|inst1|bcd~10_combout\ & (((!\ultrasonic_serial_inst|inst|Pulse_len\(5) & \ultrasonic_serial_inst|inst1|bcd~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~10_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~12_combout\,
	datac => \ultrasonic_serial_inst|inst|Pulse_len\(5),
	datad => \ultrasonic_serial_inst|inst1|bcd~11_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~15_combout\);

-- Location: LCCOMB_X31_Y12_N0
\ultrasonic_serial_inst|inst|Pulse_len~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Pulse_len~8_combout\ = (\ultrasonic_serial_inst|inst|count\(4) & !\ultrasonic_serial_inst|inst|current_state.Ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst|count\(4),
	datad => \ultrasonic_serial_inst|inst|current_state.Ready~q\,
	combout => \ultrasonic_serial_inst|inst|Pulse_len~8_combout\);

-- Location: FF_X31_Y12_N1
\ultrasonic_serial_inst|inst|Pulse_len[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Pulse_len~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|Pulse_len\(4));

-- Location: LCCOMB_X31_Y13_N22
\ultrasonic_serial_inst|inst1|bcd~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~14_combout\ = (\ultrasonic_serial_inst|inst1|bcd~12_combout\ & (!\ultrasonic_serial_inst|inst1|bcd~10_combout\ & (!\ultrasonic_serial_inst|inst|Pulse_len\(5)))) # (!\ultrasonic_serial_inst|inst1|bcd~12_combout\ & 
-- (\ultrasonic_serial_inst|inst1|bcd~11_combout\ & ((\ultrasonic_serial_inst|inst1|bcd~10_combout\) # (\ultrasonic_serial_inst|inst|Pulse_len\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~10_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~12_combout\,
	datac => \ultrasonic_serial_inst|inst|Pulse_len\(5),
	datad => \ultrasonic_serial_inst|inst1|bcd~11_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~14_combout\);

-- Location: LCCOMB_X31_Y13_N16
\ultrasonic_serial_inst|inst1|bcd~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~13_combout\ = (\ultrasonic_serial_inst|inst1|bcd~12_combout\ & (!\ultrasonic_serial_inst|inst|Pulse_len\(5) & ((\ultrasonic_serial_inst|inst1|bcd~10_combout\) # (\ultrasonic_serial_inst|inst1|bcd~11_combout\)))) # 
-- (!\ultrasonic_serial_inst|inst1|bcd~12_combout\ & ((\ultrasonic_serial_inst|inst|Pulse_len\(5) $ (\ultrasonic_serial_inst|inst1|bcd~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~10_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~12_combout\,
	datac => \ultrasonic_serial_inst|inst|Pulse_len\(5),
	datad => \ultrasonic_serial_inst|inst1|bcd~11_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~13_combout\);

-- Location: LCCOMB_X31_Y13_N30
\ultrasonic_serial_inst|inst1|bcd~32\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~32_combout\ = \ultrasonic_serial_inst|inst1|bcd~14_combout\ $ ((((!\ultrasonic_serial_inst|inst|Pulse_len\(4) & !\ultrasonic_serial_inst|inst1|bcd~13_combout\)) # (!\ultrasonic_serial_inst|inst1|bcd~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~15_combout\,
	datab => \ultrasonic_serial_inst|inst|Pulse_len\(4),
	datac => \ultrasonic_serial_inst|inst1|bcd~14_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~13_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~32_combout\);

-- Location: LCCOMB_X32_Y12_N30
\ultrasonic_serial_inst|inst1|LessThan2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|LessThan2~0_combout\ = (\ultrasonic_serial_inst|inst|Pulse_len\(11) & ((\ultrasonic_serial_inst|inst|Pulse_len\(10)) # (\ultrasonic_serial_inst|inst|Pulse_len\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst|Pulse_len\(10),
	datac => \ultrasonic_serial_inst|inst|Pulse_len\(11),
	datad => \ultrasonic_serial_inst|inst|Pulse_len\(9),
	combout => \ultrasonic_serial_inst|inst1|LessThan2~0_combout\);

-- Location: LCCOMB_X32_Y12_N6
\ultrasonic_serial_inst|inst1|bcd~25\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~25_combout\ = (\ultrasonic_serial_inst|inst|Pulse_len\(10) & ((\ultrasonic_serial_inst|inst|Pulse_len\(8) & ((\ultrasonic_serial_inst|inst|Pulse_len\(9)) # (!\ultrasonic_serial_inst|inst|Pulse_len\(11)))) # 
-- (!\ultrasonic_serial_inst|inst|Pulse_len\(8) & (!\ultrasonic_serial_inst|inst|Pulse_len\(11) & \ultrasonic_serial_inst|inst|Pulse_len\(9))))) # (!\ultrasonic_serial_inst|inst|Pulse_len\(10) & (((\ultrasonic_serial_inst|inst|Pulse_len\(11) & 
-- !\ultrasonic_serial_inst|inst|Pulse_len\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|Pulse_len\(8),
	datab => \ultrasonic_serial_inst|inst|Pulse_len\(10),
	datac => \ultrasonic_serial_inst|inst|Pulse_len\(11),
	datad => \ultrasonic_serial_inst|inst|Pulse_len\(9),
	combout => \ultrasonic_serial_inst|inst1|bcd~25_combout\);

-- Location: LCCOMB_X31_Y13_N26
\ultrasonic_serial_inst|inst1|bcd~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~24_combout\ = \ultrasonic_serial_inst|inst1|bcd~8_combout\ $ ((((!\ultrasonic_serial_inst|inst|Pulse_len\(6) & !\ultrasonic_serial_inst|inst1|bcd~7_combout\)) # (!\ultrasonic_serial_inst|inst1|bcd~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|Pulse_len\(6),
	datab => \ultrasonic_serial_inst|inst1|bcd~8_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~7_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~9_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~24_combout\);

-- Location: LCCOMB_X32_Y12_N14
\ultrasonic_serial_inst|inst1|bcd~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~26_combout\ = \ultrasonic_serial_inst|inst1|bcd~5_combout\ $ ((((!\ultrasonic_serial_inst|inst|Pulse_len\(7) & !\ultrasonic_serial_inst|inst1|bcd~4_combout\)) # (!\ultrasonic_serial_inst|inst1|bcd~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|Pulse_len\(7),
	datab => \ultrasonic_serial_inst|inst1|bcd~5_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~6_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~4_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~26_combout\);

-- Location: LCCOMB_X32_Y13_N18
\ultrasonic_serial_inst|inst1|bcd~30\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~30_combout\ = (\ultrasonic_serial_inst|inst1|bcd~25_combout\ & (\ultrasonic_serial_inst|inst1|bcd~24_combout\ & (\ultrasonic_serial_inst|inst1|LessThan2~0_combout\ $ (\ultrasonic_serial_inst|inst1|bcd~26_combout\)))) # 
-- (!\ultrasonic_serial_inst|inst1|bcd~25_combout\ & (\ultrasonic_serial_inst|inst1|LessThan2~0_combout\ & (!\ultrasonic_serial_inst|inst1|bcd~24_combout\ & \ultrasonic_serial_inst|inst1|bcd~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|LessThan2~0_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~25_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~24_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~26_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~30_combout\);

-- Location: LCCOMB_X32_Y13_N6
\ultrasonic_serial_inst|inst1|LessThan10~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|LessThan10~0_combout\ = (\ultrasonic_serial_inst|inst1|LessThan2~0_combout\ & ((\ultrasonic_serial_inst|inst1|bcd~25_combout\ & (!\ultrasonic_serial_inst|inst1|bcd~24_combout\ & 
-- !\ultrasonic_serial_inst|inst1|bcd~26_combout\)) # (!\ultrasonic_serial_inst|inst1|bcd~25_combout\ & ((\ultrasonic_serial_inst|inst1|bcd~26_combout\))))) # (!\ultrasonic_serial_inst|inst1|LessThan2~0_combout\ & 
-- (\ultrasonic_serial_inst|inst1|bcd~25_combout\ & ((!\ultrasonic_serial_inst|inst1|bcd~26_combout\) # (!\ultrasonic_serial_inst|inst1|bcd~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|LessThan2~0_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~25_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~24_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~26_combout\,
	combout => \ultrasonic_serial_inst|inst1|LessThan10~0_combout\);

-- Location: LCCOMB_X32_Y12_N2
\ultrasonic_serial_inst|inst1|bcd~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~28_combout\ = (\ultrasonic_serial_inst|inst|Pulse_len\(8) & (\ultrasonic_serial_inst|inst|Pulse_len\(10) & (\ultrasonic_serial_inst|inst|Pulse_len\(11) & \ultrasonic_serial_inst|inst|Pulse_len\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|Pulse_len\(8),
	datab => \ultrasonic_serial_inst|inst|Pulse_len\(10),
	datac => \ultrasonic_serial_inst|inst|Pulse_len\(11),
	datad => \ultrasonic_serial_inst|inst|Pulse_len\(9),
	combout => \ultrasonic_serial_inst|inst1|bcd~28_combout\);

-- Location: LCCOMB_X32_Y12_N0
\ultrasonic_serial_inst|inst1|bcd~56\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~56_combout\ = (\ultrasonic_serial_inst|inst1|bcd~26_combout\) # ((\ultrasonic_serial_inst|inst|Pulse_len\(11) & ((\ultrasonic_serial_inst|inst|Pulse_len\(10)) # (\ultrasonic_serial_inst|inst|Pulse_len\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~26_combout\,
	datab => \ultrasonic_serial_inst|inst|Pulse_len\(10),
	datac => \ultrasonic_serial_inst|inst|Pulse_len\(11),
	datad => \ultrasonic_serial_inst|inst|Pulse_len\(9),
	combout => \ultrasonic_serial_inst|inst1|bcd~56_combout\);

-- Location: LCCOMB_X32_Y13_N26
\ultrasonic_serial_inst|inst1|bcd~29\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~29_combout\ = (\ultrasonic_serial_inst|inst1|LessThan10~0_combout\ & ((\ultrasonic_serial_inst|inst1|bcd~24_combout\ $ (!\ultrasonic_serial_inst|inst1|bcd~56_combout\)))) # 
-- (!\ultrasonic_serial_inst|inst1|LessThan10~0_combout\ & ((\ultrasonic_serial_inst|inst1|bcd~28_combout\) # ((!\ultrasonic_serial_inst|inst1|bcd~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|LessThan10~0_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~28_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~24_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~56_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~29_combout\);

-- Location: LCCOMB_X31_Y13_N14
\ultrasonic_serial_inst|inst1|bcd~23\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~23_combout\ = \ultrasonic_serial_inst|inst1|bcd~11_combout\ $ ((((!\ultrasonic_serial_inst|inst1|bcd~10_combout\ & !\ultrasonic_serial_inst|inst|Pulse_len\(5))) # (!\ultrasonic_serial_inst|inst1|bcd~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~10_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~12_combout\,
	datac => \ultrasonic_serial_inst|inst|Pulse_len\(5),
	datad => \ultrasonic_serial_inst|inst1|bcd~11_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~23_combout\);

-- Location: LCCOMB_X32_Y13_N28
\ultrasonic_serial_inst|inst1|LessThan13~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|LessThan13~0_combout\ = (\ultrasonic_serial_inst|inst1|bcd~24_combout\ $ (!\ultrasonic_serial_inst|inst1|LessThan10~0_combout\)) # (!\ultrasonic_serial_inst|inst1|bcd~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~23_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~24_combout\,
	datad => \ultrasonic_serial_inst|inst1|LessThan10~0_combout\,
	combout => \ultrasonic_serial_inst|inst1|LessThan13~0_combout\);

-- Location: LCCOMB_X31_Y13_N20
\ultrasonic_serial_inst|inst1|bcd~33\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~33_combout\ = \ultrasonic_serial_inst|inst1|bcd~23_combout\ $ (((\ultrasonic_serial_inst|inst1|bcd~30_combout\) # ((\ultrasonic_serial_inst|inst1|bcd~29_combout\ & \ultrasonic_serial_inst|inst1|LessThan13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~30_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~29_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~23_combout\,
	datad => \ultrasonic_serial_inst|inst1|LessThan13~0_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~33_combout\);

-- Location: LCCOMB_X32_Y13_N12
\ultrasonic_serial_inst|inst1|bcd~27\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~27_combout\ = (\ultrasonic_serial_inst|inst1|bcd~25_combout\ & ((\ultrasonic_serial_inst|inst1|LessThan2~0_combout\ & ((\ultrasonic_serial_inst|inst1|bcd~24_combout\) # (!\ultrasonic_serial_inst|inst1|bcd~26_combout\))) # 
-- (!\ultrasonic_serial_inst|inst1|LessThan2~0_combout\ & ((\ultrasonic_serial_inst|inst1|bcd~26_combout\) # (!\ultrasonic_serial_inst|inst1|bcd~24_combout\))))) # (!\ultrasonic_serial_inst|inst1|bcd~25_combout\ & 
-- (\ultrasonic_serial_inst|inst1|bcd~24_combout\ $ (((\ultrasonic_serial_inst|inst1|LessThan2~0_combout\ & \ultrasonic_serial_inst|inst1|bcd~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|LessThan2~0_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~25_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~24_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~26_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~27_combout\);

-- Location: LCCOMB_X31_Y13_N12
\ultrasonic_serial_inst|inst1|bcd~34\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~34_combout\ = (\ultrasonic_serial_inst|inst1|bcd~30_combout\ & (\ultrasonic_serial_inst|inst1|bcd~23_combout\ $ ((\ultrasonic_serial_inst|inst1|bcd~27_combout\)))) # (!\ultrasonic_serial_inst|inst1|bcd~30_combout\ & 
-- ((\ultrasonic_serial_inst|inst1|bcd~27_combout\) # ((\ultrasonic_serial_inst|inst1|bcd~23_combout\ & \ultrasonic_serial_inst|inst1|bcd~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~30_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~23_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~27_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~29_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~34_combout\);

-- Location: LCCOMB_X31_Y13_N2
\ultrasonic_serial_inst|inst1|bcd~31\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~31_combout\ = (\ultrasonic_serial_inst|inst1|bcd~29_combout\ & (((\ultrasonic_serial_inst|inst1|bcd~23_combout\ & \ultrasonic_serial_inst|inst1|bcd~27_combout\)))) # (!\ultrasonic_serial_inst|inst1|bcd~29_combout\ & 
-- (\ultrasonic_serial_inst|inst1|bcd~30_combout\ & ((!\ultrasonic_serial_inst|inst1|bcd~27_combout\) # (!\ultrasonic_serial_inst|inst1|bcd~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~30_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~23_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~27_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~29_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~31_combout\);

-- Location: LCCOMB_X30_Y9_N12
\ultrasonic_serial_inst|inst1|bcd~35\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~35_combout\ = (\ultrasonic_serial_inst|inst1|bcd~34_combout\ & (\ultrasonic_serial_inst|inst1|bcd~31_combout\ & ((!\ultrasonic_serial_inst|inst1|bcd~33_combout\) # (!\ultrasonic_serial_inst|inst1|bcd~32_combout\)))) # 
-- (!\ultrasonic_serial_inst|inst1|bcd~34_combout\ & (\ultrasonic_serial_inst|inst1|bcd~32_combout\ & (\ultrasonic_serial_inst|inst1|bcd~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~32_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~33_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~34_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~31_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~35_combout\);

-- Location: LCCOMB_X30_Y9_N4
\ultrasonic_serial_inst|inst1|bcd~37\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~37_combout\ = (\ultrasonic_serial_inst|inst1|bcd~32_combout\ & (!\ultrasonic_serial_inst|inst1|bcd~31_combout\ & ((\ultrasonic_serial_inst|inst1|bcd~33_combout\) # (\ultrasonic_serial_inst|inst1|bcd~34_combout\)))) # 
-- (!\ultrasonic_serial_inst|inst1|bcd~32_combout\ & (((\ultrasonic_serial_inst|inst1|bcd~31_combout\) # (!\ultrasonic_serial_inst|inst1|bcd~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~32_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~33_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~34_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~31_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~37_combout\);

-- Location: LCCOMB_X31_Y13_N4
\ultrasonic_serial_inst|inst1|bcd~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~17_combout\ = (\ultrasonic_serial_inst|inst1|bcd~15_combout\ & (!\ultrasonic_serial_inst|inst|Pulse_len\(4) & ((!\ultrasonic_serial_inst|inst1|bcd~13_combout\)))) # (!\ultrasonic_serial_inst|inst1|bcd~15_combout\ & 
-- (\ultrasonic_serial_inst|inst1|bcd~14_combout\ & ((\ultrasonic_serial_inst|inst|Pulse_len\(4)) # (\ultrasonic_serial_inst|inst1|bcd~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~15_combout\,
	datab => \ultrasonic_serial_inst|inst|Pulse_len\(4),
	datac => \ultrasonic_serial_inst|inst1|bcd~14_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~13_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~17_combout\);

-- Location: LCCOMB_X31_Y13_N8
\ultrasonic_serial_inst|inst1|bcd~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~18_combout\ = (\ultrasonic_serial_inst|inst|Pulse_len\(4) & (((\ultrasonic_serial_inst|inst1|bcd~13_combout\)))) # (!\ultrasonic_serial_inst|inst|Pulse_len\(4) & ((\ultrasonic_serial_inst|inst1|bcd~14_combout\ & 
-- ((!\ultrasonic_serial_inst|inst1|bcd~13_combout\))) # (!\ultrasonic_serial_inst|inst1|bcd~14_combout\ & (!\ultrasonic_serial_inst|inst1|bcd~15_combout\ & \ultrasonic_serial_inst|inst1|bcd~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~15_combout\,
	datab => \ultrasonic_serial_inst|inst|Pulse_len\(4),
	datac => \ultrasonic_serial_inst|inst1|bcd~14_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~13_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~18_combout\);

-- Location: LCCOMB_X30_Y13_N14
\ultrasonic_serial_inst|inst|Pulse_len~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Pulse_len~9_combout\ = (\ultrasonic_serial_inst|inst|count\(3) & !\ultrasonic_serial_inst|inst|current_state.Ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst|count\(3),
	datad => \ultrasonic_serial_inst|inst|current_state.Ready~q\,
	combout => \ultrasonic_serial_inst|inst|Pulse_len~9_combout\);

-- Location: FF_X30_Y13_N15
\ultrasonic_serial_inst|inst|Pulse_len[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Pulse_len~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|Pulse_len\(3));

-- Location: LCCOMB_X31_Y13_N28
\ultrasonic_serial_inst|inst1|bcd~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~16_combout\ = (\ultrasonic_serial_inst|inst1|bcd~15_combout\ & (!\ultrasonic_serial_inst|inst|Pulse_len\(4) & ((\ultrasonic_serial_inst|inst1|bcd~14_combout\) # (\ultrasonic_serial_inst|inst1|bcd~13_combout\)))) # 
-- (!\ultrasonic_serial_inst|inst1|bcd~15_combout\ & (\ultrasonic_serial_inst|inst|Pulse_len\(4) $ ((\ultrasonic_serial_inst|inst1|bcd~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~15_combout\,
	datab => \ultrasonic_serial_inst|inst|Pulse_len\(4),
	datac => \ultrasonic_serial_inst|inst1|bcd~14_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~13_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~16_combout\);

-- Location: LCCOMB_X30_Y13_N12
\ultrasonic_serial_inst|inst1|bcd~36\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~36_combout\ = \ultrasonic_serial_inst|inst1|bcd~17_combout\ $ ((((!\ultrasonic_serial_inst|inst|Pulse_len\(3) & !\ultrasonic_serial_inst|inst1|bcd~16_combout\)) # (!\ultrasonic_serial_inst|inst1|bcd~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~17_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~18_combout\,
	datac => \ultrasonic_serial_inst|inst|Pulse_len\(3),
	datad => \ultrasonic_serial_inst|inst1|bcd~16_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~36_combout\);

-- Location: LCCOMB_X30_Y9_N18
\ultrasonic_serial_inst|inst1|bcd~38\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~38_combout\ = (\ultrasonic_serial_inst|inst1|bcd~32_combout\ & ((\ultrasonic_serial_inst|inst1|bcd~33_combout\ & ((!\ultrasonic_serial_inst|inst1|bcd~31_combout\))) # (!\ultrasonic_serial_inst|inst1|bcd~33_combout\ & 
-- ((\ultrasonic_serial_inst|inst1|bcd~31_combout\) # (!\ultrasonic_serial_inst|inst1|bcd~34_combout\))))) # (!\ultrasonic_serial_inst|inst1|bcd~32_combout\ & (\ultrasonic_serial_inst|inst1|bcd~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~32_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~33_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~34_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~31_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~38_combout\);

-- Location: LCCOMB_X30_Y9_N8
\ultrasonic_serial_inst|inst1|bcd~39\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~39_combout\ = (\ultrasonic_serial_inst|inst1|bcd~38_combout\ & (\ultrasonic_serial_inst|inst1|bcd~35_combout\ & ((!\ultrasonic_serial_inst|inst1|bcd~36_combout\) # (!\ultrasonic_serial_inst|inst1|bcd~37_combout\)))) # 
-- (!\ultrasonic_serial_inst|inst1|bcd~38_combout\ & (((\ultrasonic_serial_inst|inst1|bcd~37_combout\ & \ultrasonic_serial_inst|inst1|bcd~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~35_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~37_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~36_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~38_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~39_combout\);

-- Location: LCCOMB_X30_Y9_N20
\ultrasonic_serial_inst|inst1|bcd~41\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~41_combout\ = (\ultrasonic_serial_inst|inst1|bcd~35_combout\ & (\ultrasonic_serial_inst|inst1|bcd~37_combout\ $ ((\ultrasonic_serial_inst|inst1|bcd~36_combout\)))) # (!\ultrasonic_serial_inst|inst1|bcd~35_combout\ & 
-- ((\ultrasonic_serial_inst|inst1|bcd~37_combout\) # ((\ultrasonic_serial_inst|inst1|bcd~36_combout\ & !\ultrasonic_serial_inst|inst1|bcd~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~35_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~37_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~36_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~38_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~41_combout\);

-- Location: LCCOMB_X30_Y13_N26
\ultrasonic_serial_inst|inst1|bcd~21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~21_combout\ = (\ultrasonic_serial_inst|inst1|bcd~17_combout\ & (((!\ultrasonic_serial_inst|inst|Pulse_len\(3))))) # (!\ultrasonic_serial_inst|inst1|bcd~17_combout\ & ((\ultrasonic_serial_inst|inst1|bcd~18_combout\ & 
-- (!\ultrasonic_serial_inst|inst|Pulse_len\(3) & \ultrasonic_serial_inst|inst1|bcd~16_combout\)) # (!\ultrasonic_serial_inst|inst1|bcd~18_combout\ & (\ultrasonic_serial_inst|inst|Pulse_len\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~17_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~18_combout\,
	datac => \ultrasonic_serial_inst|inst|Pulse_len\(3),
	datad => \ultrasonic_serial_inst|inst1|bcd~16_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~21_combout\);

-- Location: LCCOMB_X30_Y13_N16
\ultrasonic_serial_inst|inst|Pulse_len~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Pulse_len~10_combout\ = (\ultrasonic_serial_inst|inst|count\(2) & !\ultrasonic_serial_inst|inst|current_state.Ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst|count\(2),
	datad => \ultrasonic_serial_inst|inst|current_state.Ready~q\,
	combout => \ultrasonic_serial_inst|inst|Pulse_len~10_combout\);

-- Location: FF_X30_Y13_N17
\ultrasonic_serial_inst|inst|Pulse_len[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Pulse_len~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|Pulse_len\(2));

-- Location: LCCOMB_X30_Y13_N30
\ultrasonic_serial_inst|inst1|bcd~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~19_combout\ = (\ultrasonic_serial_inst|inst1|bcd~17_combout\ & ((\ultrasonic_serial_inst|inst|Pulse_len\(3) $ (!\ultrasonic_serial_inst|inst1|bcd~16_combout\)))) # (!\ultrasonic_serial_inst|inst1|bcd~17_combout\ & 
-- (\ultrasonic_serial_inst|inst1|bcd~16_combout\ & ((\ultrasonic_serial_inst|inst|Pulse_len\(3)) # (!\ultrasonic_serial_inst|inst1|bcd~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~17_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~18_combout\,
	datac => \ultrasonic_serial_inst|inst|Pulse_len\(3),
	datad => \ultrasonic_serial_inst|inst1|bcd~16_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~19_combout\);

-- Location: LCCOMB_X30_Y13_N20
\ultrasonic_serial_inst|inst1|bcd~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~20_combout\ = (\ultrasonic_serial_inst|inst1|bcd~18_combout\ & (((!\ultrasonic_serial_inst|inst|Pulse_len\(3) & !\ultrasonic_serial_inst|inst1|bcd~16_combout\)))) # (!\ultrasonic_serial_inst|inst1|bcd~18_combout\ & 
-- (\ultrasonic_serial_inst|inst1|bcd~17_combout\ & ((\ultrasonic_serial_inst|inst|Pulse_len\(3)) # (\ultrasonic_serial_inst|inst1|bcd~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~17_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~18_combout\,
	datac => \ultrasonic_serial_inst|inst|Pulse_len\(3),
	datad => \ultrasonic_serial_inst|inst1|bcd~16_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~20_combout\);

-- Location: LCCOMB_X30_Y13_N8
\ultrasonic_serial_inst|inst1|bcd~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~22_combout\ = \ultrasonic_serial_inst|inst1|bcd~20_combout\ $ ((((!\ultrasonic_serial_inst|inst1|bcd~21_combout\ & !\ultrasonic_serial_inst|inst|Pulse_len\(2))) # (!\ultrasonic_serial_inst|inst1|bcd~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~21_combout\,
	datab => \ultrasonic_serial_inst|inst|Pulse_len\(2),
	datac => \ultrasonic_serial_inst|inst1|bcd~19_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~20_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~22_combout\);

-- Location: LCCOMB_X30_Y9_N14
\ultrasonic_serial_inst|inst1|bcd~40\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~40_combout\ = (\ultrasonic_serial_inst|inst1|bcd~35_combout\ & (((!\ultrasonic_serial_inst|inst1|bcd~36_combout\)))) # (!\ultrasonic_serial_inst|inst1|bcd~35_combout\ & ((\ultrasonic_serial_inst|inst1|bcd~36_combout\ & 
-- ((\ultrasonic_serial_inst|inst1|bcd~37_combout\) # (\ultrasonic_serial_inst|inst1|bcd~38_combout\))) # (!\ultrasonic_serial_inst|inst1|bcd~36_combout\ & ((!\ultrasonic_serial_inst|inst1|bcd~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~35_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~37_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~36_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~38_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~40_combout\);

-- Location: LCCOMB_X31_Y9_N26
\ultrasonic_serial_inst|inst1|LessThan23~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|LessThan23~1_combout\ = (!\ultrasonic_serial_inst|inst1|bcd~40_combout\) # (!\ultrasonic_serial_inst|inst1|bcd~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ultrasonic_serial_inst|inst1|bcd~22_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~40_combout\,
	combout => \ultrasonic_serial_inst|inst1|LessThan23~1_combout\);

-- Location: LCCOMB_X32_Y9_N26
\ultrasonic_serial_inst|inst4|Temp_char~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Temp_char~6_combout\ = (\ultrasonic_serial_inst|inst4|current_state.State_Digit2Wait~q\) # (\ultrasonic_serial_inst|inst4|current_state.State_Digit2Trasmit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ultrasonic_serial_inst|inst4|current_state.State_Digit2Wait~q\,
	datad => \ultrasonic_serial_inst|inst4|current_state.State_Digit2Trasmit~q\,
	combout => \ultrasonic_serial_inst|inst4|Temp_char~6_combout\);

-- Location: LCCOMB_X31_Y9_N10
\ultrasonic_serial_inst|inst4|Selector3~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector3~2_combout\ = (\ultrasonic_serial_inst|inst4|Temp_char~6_combout\ & (\ultrasonic_serial_inst|inst1|bcd~39_combout\ $ (((!\ultrasonic_serial_inst|inst1|bcd~41_combout\ & 
-- \ultrasonic_serial_inst|inst1|LessThan23~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~39_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~41_combout\,
	datac => \ultrasonic_serial_inst|inst1|LessThan23~1_combout\,
	datad => \ultrasonic_serial_inst|inst4|Temp_char~6_combout\,
	combout => \ultrasonic_serial_inst|inst4|Selector3~2_combout\);

-- Location: LCCOMB_X31_Y12_N4
\ultrasonic_serial_inst|inst|Pulse_len~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Pulse_len~11_combout\ = (\ultrasonic_serial_inst|inst|count\(1) & !\ultrasonic_serial_inst|inst|current_state.Ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst|count\(1),
	datad => \ultrasonic_serial_inst|inst|current_state.Ready~q\,
	combout => \ultrasonic_serial_inst|inst|Pulse_len~11_combout\);

-- Location: FF_X31_Y12_N5
\ultrasonic_serial_inst|inst|Pulse_len[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Pulse_len~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|Pulse_len\(1));

-- Location: LCCOMB_X30_Y13_N10
\ultrasonic_serial_inst|inst1|LessThan18~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|LessThan18~0_combout\ = (\ultrasonic_serial_inst|inst1|bcd~20_combout\) # ((\ultrasonic_serial_inst|inst1|bcd~19_combout\ & ((\ultrasonic_serial_inst|inst1|bcd~21_combout\) # (\ultrasonic_serial_inst|inst|Pulse_len\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~21_combout\,
	datab => \ultrasonic_serial_inst|inst|Pulse_len\(2),
	datac => \ultrasonic_serial_inst|inst1|bcd~19_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~20_combout\,
	combout => \ultrasonic_serial_inst|inst1|LessThan18~0_combout\);

-- Location: LCCOMB_X30_Y13_N18
\ultrasonic_serial_inst|inst1|LessThan22~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|LessThan22~1_combout\ = (\ultrasonic_serial_inst|inst1|bcd~21_combout\ & ((\ultrasonic_serial_inst|inst|Pulse_len\(2) & ((\ultrasonic_serial_inst|inst|Pulse_len\(1)) # (!\ultrasonic_serial_inst|inst1|LessThan18~0_combout\))) 
-- # (!\ultrasonic_serial_inst|inst|Pulse_len\(2) & (\ultrasonic_serial_inst|inst|Pulse_len\(1) & !\ultrasonic_serial_inst|inst1|LessThan18~0_combout\)))) # (!\ultrasonic_serial_inst|inst1|bcd~21_combout\ & (!\ultrasonic_serial_inst|inst|Pulse_len\(2) & 
-- ((\ultrasonic_serial_inst|inst1|LessThan18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~21_combout\,
	datab => \ultrasonic_serial_inst|inst|Pulse_len\(2),
	datac => \ultrasonic_serial_inst|inst|Pulse_len\(1),
	datad => \ultrasonic_serial_inst|inst1|LessThan18~0_combout\,
	combout => \ultrasonic_serial_inst|inst1|LessThan22~1_combout\);

-- Location: LCCOMB_X33_Y9_N24
\ultrasonic_serial_inst|inst4|Temp_char~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Temp_char~7_combout\ = (\ultrasonic_serial_inst|inst4|current_state.State_Digit4Trasmit~q\) # (\ultrasonic_serial_inst|inst4|current_state.State_Digit4Wait~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst4|current_state.State_Digit4Trasmit~q\,
	datac => \ultrasonic_serial_inst|inst4|current_state.State_Digit4Wait~q\,
	combout => \ultrasonic_serial_inst|inst4|Temp_char~7_combout\);

-- Location: LCCOMB_X31_Y12_N8
\ultrasonic_serial_inst|inst|Pulse_len~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Pulse_len~12_combout\ = (\ultrasonic_serial_inst|inst|count\(0) & !\ultrasonic_serial_inst|inst|current_state.Ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst|count\(0),
	datad => \ultrasonic_serial_inst|inst|current_state.Ready~q\,
	combout => \ultrasonic_serial_inst|inst|Pulse_len~12_combout\);

-- Location: FF_X31_Y12_N9
\ultrasonic_serial_inst|inst|Pulse_len[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Pulse_len~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|Pulse_len\(0));

-- Location: LCCOMB_X31_Y9_N24
\ultrasonic_serial_inst|inst4|Selector3~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector3~0_combout\ = (\ultrasonic_serial_inst|inst4|current_state.State_CRTrasmit~q\) # ((\ultrasonic_serial_inst|inst4|current_state.State_CRWait~q\) # ((\ultrasonic_serial_inst|inst4|Temp_char~7_combout\ & 
-- \ultrasonic_serial_inst|inst|Pulse_len\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst4|current_state.State_CRTrasmit~q\,
	datab => \ultrasonic_serial_inst|inst4|Temp_char~7_combout\,
	datac => \ultrasonic_serial_inst|inst|Pulse_len\(0),
	datad => \ultrasonic_serial_inst|inst4|current_state.State_CRWait~q\,
	combout => \ultrasonic_serial_inst|inst4|Selector3~0_combout\);

-- Location: LCCOMB_X30_Y13_N28
\ultrasonic_serial_inst|inst1|bcd~54\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~54_combout\ = (\ultrasonic_serial_inst|inst1|bcd~19_combout\ & (!\ultrasonic_serial_inst|inst1|bcd~21_combout\ & (!\ultrasonic_serial_inst|inst|Pulse_len\(2)))) # (!\ultrasonic_serial_inst|inst1|bcd~19_combout\ & 
-- (\ultrasonic_serial_inst|inst1|bcd~20_combout\ & ((\ultrasonic_serial_inst|inst1|bcd~21_combout\) # (\ultrasonic_serial_inst|inst|Pulse_len\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~21_combout\,
	datab => \ultrasonic_serial_inst|inst|Pulse_len\(2),
	datac => \ultrasonic_serial_inst|inst1|bcd~19_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~20_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~54_combout\);

-- Location: LCCOMB_X31_Y9_N18
\ultrasonic_serial_inst|inst4|Temp_char~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Temp_char~5_combout\ = (\ultrasonic_serial_inst|inst4|current_state.State_Digit3Trasmit~q\) # (\ultrasonic_serial_inst|inst4|current_state.State_Digit3Wait~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ultrasonic_serial_inst|inst4|current_state.State_Digit3Trasmit~q\,
	datad => \ultrasonic_serial_inst|inst4|current_state.State_Digit3Wait~q\,
	combout => \ultrasonic_serial_inst|inst4|Temp_char~5_combout\);

-- Location: LCCOMB_X31_Y9_N16
\ultrasonic_serial_inst|inst4|Selector3~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector3~1_combout\ = (\ultrasonic_serial_inst|inst4|Selector3~0_combout\) # ((\ultrasonic_serial_inst|inst4|Temp_char~5_combout\ & (\ultrasonic_serial_inst|inst1|LessThan22~1_combout\ $ 
-- (\ultrasonic_serial_inst|inst1|bcd~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|LessThan22~1_combout\,
	datab => \ultrasonic_serial_inst|inst4|Selector3~0_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~54_combout\,
	datad => \ultrasonic_serial_inst|inst4|Temp_char~5_combout\,
	combout => \ultrasonic_serial_inst|inst4|Selector3~1_combout\);

-- Location: LCCOMB_X32_Y12_N10
\ultrasonic_serial_inst|inst4|Selector1~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector1~3_combout\ = (\ultrasonic_serial_inst|inst|Pulse_len\(8)) # (\ultrasonic_serial_inst|inst|Pulse_len\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst|Pulse_len\(8),
	datac => \ultrasonic_serial_inst|inst|Pulse_len\(7),
	combout => \ultrasonic_serial_inst|inst4|Selector1~3_combout\);

-- Location: LCCOMB_X32_Y12_N8
\ultrasonic_serial_inst|inst4|Selector1~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector1~14_combout\ = (\ultrasonic_serial_inst|inst|Pulse_len\(10) & (\ultrasonic_serial_inst|inst|Pulse_len\(11) & ((\ultrasonic_serial_inst|inst4|Selector1~3_combout\) # (\ultrasonic_serial_inst|inst|Pulse_len\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst4|Selector1~3_combout\,
	datab => \ultrasonic_serial_inst|inst|Pulse_len\(10),
	datac => \ultrasonic_serial_inst|inst|Pulse_len\(11),
	datad => \ultrasonic_serial_inst|inst|Pulse_len\(9),
	combout => \ultrasonic_serial_inst|inst4|Selector1~14_combout\);

-- Location: LCCOMB_X32_Y13_N8
\ultrasonic_serial_inst|inst1|bcd~47\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~47_combout\ = \ultrasonic_serial_inst|inst1|bcd~30_combout\ $ (((!\ultrasonic_serial_inst|inst1|LessThan13~0_combout\) # (!\ultrasonic_serial_inst|inst1|bcd~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst1|bcd~30_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~29_combout\,
	datad => \ultrasonic_serial_inst|inst1|LessThan13~0_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~47_combout\);

-- Location: LCCOMB_X32_Y13_N10
\ultrasonic_serial_inst|inst1|bcd~43\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~43_combout\ = (\ultrasonic_serial_inst|inst1|LessThan2~0_combout\ & ((\ultrasonic_serial_inst|inst1|bcd~25_combout\ & ((\ultrasonic_serial_inst|inst1|bcd~24_combout\) # (\ultrasonic_serial_inst|inst1|bcd~26_combout\))) # 
-- (!\ultrasonic_serial_inst|inst1|bcd~25_combout\ & ((!\ultrasonic_serial_inst|inst1|bcd~26_combout\))))) # (!\ultrasonic_serial_inst|inst1|LessThan2~0_combout\ & (((\ultrasonic_serial_inst|inst1|bcd~24_combout\ & 
-- \ultrasonic_serial_inst|inst1|bcd~26_combout\)) # (!\ultrasonic_serial_inst|inst1|bcd~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|LessThan2~0_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~25_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~24_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~26_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~43_combout\);

-- Location: LCCOMB_X32_Y13_N20
\ultrasonic_serial_inst|inst1|bcd~48\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~48_combout\ = (!\ultrasonic_serial_inst|inst1|bcd~43_combout\ & ((!\ultrasonic_serial_inst|inst1|bcd~47_combout\) # (!\ultrasonic_serial_inst|inst4|Selector1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst4|Selector1~14_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~47_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~43_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~48_combout\);

-- Location: LCCOMB_X32_Y13_N22
\ultrasonic_serial_inst|inst1|bcd~44\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~44_combout\ = (\ultrasonic_serial_inst|inst1|bcd~43_combout\ & (\ultrasonic_serial_inst|inst1|bcd~30_combout\ $ (((!\ultrasonic_serial_inst|inst1|LessThan13~0_combout\) # 
-- (!\ultrasonic_serial_inst|inst1|bcd~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~43_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~30_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~29_combout\,
	datad => \ultrasonic_serial_inst|inst1|LessThan13~0_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~44_combout\);

-- Location: LCCOMB_X32_Y13_N24
\ultrasonic_serial_inst|inst1|bcd~45\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~45_combout\ = (\ultrasonic_serial_inst|inst1|LessThan2~0_combout\ & (\ultrasonic_serial_inst|inst1|bcd~44_combout\ & ((\ultrasonic_serial_inst|inst1|bcd~25_combout\) # (!\ultrasonic_serial_inst|inst1|bcd~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|LessThan2~0_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~25_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~44_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~26_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~45_combout\);

-- Location: LCCOMB_X32_Y13_N4
\ultrasonic_serial_inst|inst1|bcd~49\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~49_combout\ = (!\ultrasonic_serial_inst|inst4|Selector1~14_combout\ & (\ultrasonic_serial_inst|inst1|bcd~30_combout\ $ (((\ultrasonic_serial_inst|inst1|bcd~29_combout\ & 
-- \ultrasonic_serial_inst|inst1|LessThan13~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst4|Selector1~14_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~30_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~29_combout\,
	datad => \ultrasonic_serial_inst|inst1|LessThan13~0_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~49_combout\);

-- Location: LCCOMB_X30_Y9_N6
\ultrasonic_serial_inst|inst1|bcd~46\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~46_combout\ = \ultrasonic_serial_inst|inst1|bcd~31_combout\ $ (((\ultrasonic_serial_inst|inst1|bcd~34_combout\) # ((\ultrasonic_serial_inst|inst1|bcd~32_combout\ & \ultrasonic_serial_inst|inst1|bcd~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~32_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~33_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~34_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~31_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~46_combout\);

-- Location: LCCOMB_X32_Y9_N6
\ultrasonic_serial_inst|inst1|bcd~51\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~51_combout\ = (\ultrasonic_serial_inst|inst1|bcd~45_combout\ & ((\ultrasonic_serial_inst|inst1|bcd~49_combout\ $ (\ultrasonic_serial_inst|inst1|bcd~46_combout\)))) # (!\ultrasonic_serial_inst|inst1|bcd~45_combout\ & 
-- (\ultrasonic_serial_inst|inst1|bcd~49_combout\ & ((!\ultrasonic_serial_inst|inst1|bcd~46_combout\) # (!\ultrasonic_serial_inst|inst1|bcd~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~48_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~45_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~49_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~46_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~51_combout\);

-- Location: LCCOMB_X32_Y9_N14
\ultrasonic_serial_inst|inst1|bcd~50\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~50_combout\ = (\ultrasonic_serial_inst|inst1|bcd~48_combout\ & (((!\ultrasonic_serial_inst|inst1|bcd~49_combout\ & \ultrasonic_serial_inst|inst1|bcd~46_combout\)))) # (!\ultrasonic_serial_inst|inst1|bcd~48_combout\ & 
-- (\ultrasonic_serial_inst|inst1|bcd~45_combout\ & ((\ultrasonic_serial_inst|inst1|bcd~49_combout\) # (!\ultrasonic_serial_inst|inst1|bcd~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~48_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~45_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~49_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~46_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~50_combout\);

-- Location: LCCOMB_X33_Y9_N12
\ultrasonic_serial_inst|inst4|WideOr1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|WideOr1~0_combout\ = (\ultrasonic_serial_inst|inst4|current_state.State_Digit1Wait~q\) # ((\ultrasonic_serial_inst|inst4|current_state.State_Wait~q\) # ((\ultrasonic_serial_inst|inst4|current_state.State_Digit1Trasmit~q\) # 
-- (!\ultrasonic_serial_inst|inst4|current_state.State_Measure~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst4|current_state.State_Digit1Wait~q\,
	datab => \ultrasonic_serial_inst|inst4|current_state.State_Wait~q\,
	datac => \ultrasonic_serial_inst|inst4|current_state.State_Measure~q\,
	datad => \ultrasonic_serial_inst|inst4|current_state.State_Digit1Trasmit~q\,
	combout => \ultrasonic_serial_inst|inst4|WideOr1~0_combout\);

-- Location: LCCOMB_X30_Y9_N10
\ultrasonic_serial_inst|inst1|bcd~42\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~42_combout\ = \ultrasonic_serial_inst|inst1|bcd~35_combout\ $ (((\ultrasonic_serial_inst|inst1|bcd~38_combout\) # ((\ultrasonic_serial_inst|inst1|bcd~37_combout\ & \ultrasonic_serial_inst|inst1|bcd~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~35_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~37_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~36_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~38_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~42_combout\);

-- Location: LCCOMB_X32_Y9_N20
\ultrasonic_serial_inst|inst1|bcd~52\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~52_combout\ = (\ultrasonic_serial_inst|inst1|bcd~48_combout\ & (((!\ultrasonic_serial_inst|inst1|bcd~45_combout\ & !\ultrasonic_serial_inst|inst1|bcd~49_combout\)) # (!\ultrasonic_serial_inst|inst1|bcd~46_combout\))) # 
-- (!\ultrasonic_serial_inst|inst1|bcd~48_combout\ & (\ultrasonic_serial_inst|inst1|bcd~45_combout\ $ (((\ultrasonic_serial_inst|inst1|bcd~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~48_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~45_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~49_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~46_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~52_combout\);

-- Location: LCCOMB_X32_Y9_N18
\ultrasonic_serial_inst|inst1|LessThan24~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|LessThan24~1_combout\ = (!\ultrasonic_serial_inst|inst1|bcd~52_combout\) # (!\ultrasonic_serial_inst|inst1|bcd~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ultrasonic_serial_inst|inst1|bcd~42_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~52_combout\,
	combout => \ultrasonic_serial_inst|inst1|LessThan24~1_combout\);

-- Location: LCCOMB_X32_Y9_N24
\ultrasonic_serial_inst|inst4|Selector3~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector3~3_combout\ = (\ultrasonic_serial_inst|inst4|WideOr1~0_combout\ & (\ultrasonic_serial_inst|inst1|bcd~50_combout\ $ (((\ultrasonic_serial_inst|inst1|bcd~51_combout\ & 
-- \ultrasonic_serial_inst|inst1|LessThan24~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~51_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~50_combout\,
	datac => \ultrasonic_serial_inst|inst4|WideOr1~0_combout\,
	datad => \ultrasonic_serial_inst|inst1|LessThan24~1_combout\,
	combout => \ultrasonic_serial_inst|inst4|Selector3~3_combout\);

-- Location: LCCOMB_X32_Y9_N22
\ultrasonic_serial_inst|inst4|Selector3~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector3~4_combout\ = (\ultrasonic_serial_inst|inst4|Selector3~2_combout\) # ((\ultrasonic_serial_inst|inst4|Selector3~1_combout\) # (\ultrasonic_serial_inst|inst4|Selector3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst4|Selector3~2_combout\,
	datac => \ultrasonic_serial_inst|inst4|Selector3~1_combout\,
	datad => \ultrasonic_serial_inst|inst4|Selector3~3_combout\,
	combout => \ultrasonic_serial_inst|inst4|Selector3~4_combout\);

-- Location: FF_X32_Y9_N23
\ultrasonic_serial_inst|inst3|r_TX_Data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst4|Selector3~4_combout\,
	ena => \ultrasonic_serial_inst|inst3|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|r_TX_Data\(0));

-- Location: LCCOMB_X31_Y9_N12
\ultrasonic_serial_inst|inst1|LessThan23~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|LessThan23~0_combout\ = (\ultrasonic_serial_inst|inst1|bcd~39_combout\) # ((!\ultrasonic_serial_inst|inst1|bcd~41_combout\ & ((!\ultrasonic_serial_inst|inst1|bcd~40_combout\) # 
-- (!\ultrasonic_serial_inst|inst1|bcd~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~39_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~41_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~22_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~40_combout\,
	combout => \ultrasonic_serial_inst|inst1|LessThan23~0_combout\);

-- Location: LCCOMB_X31_Y9_N8
\ultrasonic_serial_inst|inst4|Selector2~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector2~2_combout\ = (\ultrasonic_serial_inst|inst4|current_state.State_Digit3Trasmit~q\ & (\ultrasonic_serial_inst|inst1|LessThan23~0_combout\ $ ((!\ultrasonic_serial_inst|inst1|bcd~22_combout\)))) # 
-- (!\ultrasonic_serial_inst|inst4|current_state.State_Digit3Trasmit~q\ & (\ultrasonic_serial_inst|inst4|current_state.State_Digit3Wait~q\ & (\ultrasonic_serial_inst|inst1|LessThan23~0_combout\ $ (!\ultrasonic_serial_inst|inst1|bcd~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|LessThan23~0_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~22_combout\,
	datac => \ultrasonic_serial_inst|inst4|current_state.State_Digit3Trasmit~q\,
	datad => \ultrasonic_serial_inst|inst4|current_state.State_Digit3Wait~q\,
	combout => \ultrasonic_serial_inst|inst4|Selector2~2_combout\);

-- Location: LCCOMB_X32_Y9_N12
\ultrasonic_serial_inst|inst1|LessThan20~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|LessThan20~0_combout\ = (\ultrasonic_serial_inst|inst1|bcd~48_combout\ & ((\ultrasonic_serial_inst|inst1|bcd~49_combout\) # (!\ultrasonic_serial_inst|inst1|bcd~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~48_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~49_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~46_combout\,
	combout => \ultrasonic_serial_inst|inst1|LessThan20~0_combout\);

-- Location: LCCOMB_X31_Y9_N30
\ultrasonic_serial_inst|inst4|Selector2~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector2~3_combout\ = (\ultrasonic_serial_inst|inst4|Temp_char~7_combout\ & (\ultrasonic_serial_inst|inst|Pulse_len\(1) $ (((\ultrasonic_serial_inst|inst1|LessThan22~1_combout\) # 
-- (\ultrasonic_serial_inst|inst1|bcd~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|LessThan22~1_combout\,
	datab => \ultrasonic_serial_inst|inst|Pulse_len\(1),
	datac => \ultrasonic_serial_inst|inst1|bcd~54_combout\,
	datad => \ultrasonic_serial_inst|inst4|Temp_char~7_combout\,
	combout => \ultrasonic_serial_inst|inst4|Selector2~3_combout\);

-- Location: LCCOMB_X32_Y9_N2
\ultrasonic_serial_inst|inst4|Selector2~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector2~4_combout\ = (\ultrasonic_serial_inst|inst4|Selector2~3_combout\) # ((\ultrasonic_serial_inst|inst4|WideOr1~0_combout\ & (\ultrasonic_serial_inst|inst1|LessThan20~0_combout\ $ 
-- (\ultrasonic_serial_inst|inst1|bcd~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|LessThan20~0_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~45_combout\,
	datac => \ultrasonic_serial_inst|inst4|WideOr1~0_combout\,
	datad => \ultrasonic_serial_inst|inst4|Selector2~3_combout\,
	combout => \ultrasonic_serial_inst|inst4|Selector2~4_combout\);

-- Location: LCCOMB_X33_Y10_N14
\ultrasonic_serial_inst|inst4|WideOr2~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|WideOr2~1_combout\ = (!\ultrasonic_serial_inst|inst4|current_state.State_LFWait~q\ & !\ultrasonic_serial_inst|inst4|current_state.State_LFTrasmit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ultrasonic_serial_inst|inst4|current_state.State_LFWait~q\,
	datad => \ultrasonic_serial_inst|inst4|current_state.State_LFTrasmit~q\,
	combout => \ultrasonic_serial_inst|inst4|WideOr2~1_combout\);

-- Location: LCCOMB_X32_Y9_N10
\ultrasonic_serial_inst|inst1|LessThan24~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|LessThan24~0_combout\ = (\ultrasonic_serial_inst|inst1|bcd~50_combout\) # ((\ultrasonic_serial_inst|inst1|bcd~51_combout\ & ((!\ultrasonic_serial_inst|inst1|bcd~52_combout\) # 
-- (!\ultrasonic_serial_inst|inst1|bcd~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~51_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~42_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~50_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~52_combout\,
	combout => \ultrasonic_serial_inst|inst1|LessThan24~0_combout\);

-- Location: LCCOMB_X32_Y9_N16
\ultrasonic_serial_inst|inst4|Selector2~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector2~6_combout\ = (\ultrasonic_serial_inst|inst4|current_state.State_Digit2Wait~q\ & (\ultrasonic_serial_inst|inst1|LessThan24~0_combout\ $ ((!\ultrasonic_serial_inst|inst1|bcd~42_combout\)))) # 
-- (!\ultrasonic_serial_inst|inst4|current_state.State_Digit2Wait~q\ & (\ultrasonic_serial_inst|inst4|current_state.State_Digit2Trasmit~q\ & (\ultrasonic_serial_inst|inst1|LessThan24~0_combout\ $ (!\ultrasonic_serial_inst|inst1|bcd~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|LessThan24~0_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~42_combout\,
	datac => \ultrasonic_serial_inst|inst4|current_state.State_Digit2Wait~q\,
	datad => \ultrasonic_serial_inst|inst4|current_state.State_Digit2Trasmit~q\,
	combout => \ultrasonic_serial_inst|inst4|Selector2~6_combout\);

-- Location: LCCOMB_X32_Y9_N4
\ultrasonic_serial_inst|inst4|Selector2~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector2~5_combout\ = (\ultrasonic_serial_inst|inst4|Selector2~2_combout\) # ((\ultrasonic_serial_inst|inst4|Selector2~4_combout\) # ((\ultrasonic_serial_inst|inst4|Selector2~6_combout\) # 
-- (!\ultrasonic_serial_inst|inst4|WideOr2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst4|Selector2~2_combout\,
	datab => \ultrasonic_serial_inst|inst4|Selector2~4_combout\,
	datac => \ultrasonic_serial_inst|inst4|WideOr2~1_combout\,
	datad => \ultrasonic_serial_inst|inst4|Selector2~6_combout\,
	combout => \ultrasonic_serial_inst|inst4|Selector2~5_combout\);

-- Location: FF_X32_Y9_N5
\ultrasonic_serial_inst|inst3|r_TX_Data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst4|Selector2~5_combout\,
	ena => \ultrasonic_serial_inst|inst3|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|r_TX_Data\(1));

-- Location: LCCOMB_X32_Y10_N10
\ultrasonic_serial_inst|inst3|Mux0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Mux0~0_combout\ = (\ultrasonic_serial_inst|inst3|r_Bit_Index\(0) & (((\ultrasonic_serial_inst|inst3|r_TX_Data\(1)) # (\ultrasonic_serial_inst|inst3|r_Bit_Index\(1))))) # (!\ultrasonic_serial_inst|inst3|r_Bit_Index\(0) & 
-- (\ultrasonic_serial_inst|inst3|r_TX_Data\(0) & ((!\ultrasonic_serial_inst|inst3|r_Bit_Index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|r_TX_Data\(0),
	datab => \ultrasonic_serial_inst|inst3|r_TX_Data\(1),
	datac => \ultrasonic_serial_inst|inst3|r_Bit_Index\(0),
	datad => \ultrasonic_serial_inst|inst3|r_Bit_Index\(1),
	combout => \ultrasonic_serial_inst|inst3|Mux0~0_combout\);

-- Location: LCCOMB_X31_Y9_N14
\ultrasonic_serial_inst|inst4|Selector1~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector1~9_combout\ = (\ultrasonic_serial_inst|inst4|Temp_char~5_combout\ & (\ultrasonic_serial_inst|inst1|bcd~40_combout\ $ (((!\ultrasonic_serial_inst|inst1|LessThan23~0_combout\) # 
-- (!\ultrasonic_serial_inst|inst1|bcd~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~40_combout\,
	datab => \ultrasonic_serial_inst|inst4|Temp_char~5_combout\,
	datac => \ultrasonic_serial_inst|inst1|bcd~22_combout\,
	datad => \ultrasonic_serial_inst|inst1|LessThan23~0_combout\,
	combout => \ultrasonic_serial_inst|inst4|Selector1~9_combout\);

-- Location: LCCOMB_X31_Y9_N20
\ultrasonic_serial_inst|inst4|WideOr2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|WideOr2~0_combout\ = (!\ultrasonic_serial_inst|inst4|current_state.State_CRTrasmit~q\ & !\ultrasonic_serial_inst|inst4|current_state.State_CRWait~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst4|current_state.State_CRTrasmit~q\,
	datad => \ultrasonic_serial_inst|inst4|current_state.State_CRWait~q\,
	combout => \ultrasonic_serial_inst|inst4|WideOr2~0_combout\);

-- Location: LCCOMB_X32_Y9_N8
\ultrasonic_serial_inst|inst4|Selector1~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector1~11_combout\ = ((!\ultrasonic_serial_inst|inst1|bcd~44_combout\ & (\ultrasonic_serial_inst|inst4|Selector1~14_combout\ & \ultrasonic_serial_inst|inst4|WideOr1~0_combout\))) # 
-- (!\ultrasonic_serial_inst|inst4|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~44_combout\,
	datab => \ultrasonic_serial_inst|inst4|Selector1~14_combout\,
	datac => \ultrasonic_serial_inst|inst4|WideOr1~0_combout\,
	datad => \ultrasonic_serial_inst|inst4|WideOr2~0_combout\,
	combout => \ultrasonic_serial_inst|inst4|Selector1~11_combout\);

-- Location: LCCOMB_X32_Y9_N30
\ultrasonic_serial_inst|inst4|Selector1~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector1~10_combout\ = (\ultrasonic_serial_inst|inst4|Temp_char~6_combout\ & (\ultrasonic_serial_inst|inst1|bcd~52_combout\ $ (((!\ultrasonic_serial_inst|inst1|bcd~42_combout\) # 
-- (!\ultrasonic_serial_inst|inst1|LessThan24~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|LessThan24~0_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~42_combout\,
	datac => \ultrasonic_serial_inst|inst4|Temp_char~6_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~52_combout\,
	combout => \ultrasonic_serial_inst|inst4|Selector1~10_combout\);

-- Location: LCCOMB_X30_Y13_N22
\ultrasonic_serial_inst|inst1|bcd~53\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~53_combout\ = (\ultrasonic_serial_inst|inst|Pulse_len\(2) & (((!\ultrasonic_serial_inst|inst1|bcd~19_combout\ & !\ultrasonic_serial_inst|inst1|bcd~20_combout\)))) # (!\ultrasonic_serial_inst|inst|Pulse_len\(2) & 
-- ((\ultrasonic_serial_inst|inst1|bcd~20_combout\) # ((\ultrasonic_serial_inst|inst1|bcd~21_combout\ & \ultrasonic_serial_inst|inst1|bcd~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~21_combout\,
	datab => \ultrasonic_serial_inst|inst|Pulse_len\(2),
	datac => \ultrasonic_serial_inst|inst1|bcd~19_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~20_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~53_combout\);

-- Location: LCCOMB_X30_Y13_N2
\ultrasonic_serial_inst|inst1|bcd~55\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|bcd~55_combout\ = (\ultrasonic_serial_inst|inst1|bcd~21_combout\ & ((\ultrasonic_serial_inst|inst|Pulse_len\(2)) # ((!\ultrasonic_serial_inst|inst1|bcd~19_combout\ & !\ultrasonic_serial_inst|inst1|bcd~20_combout\)))) # 
-- (!\ultrasonic_serial_inst|inst1|bcd~21_combout\ & (!\ultrasonic_serial_inst|inst|Pulse_len\(2) & ((\ultrasonic_serial_inst|inst1|bcd~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~21_combout\,
	datab => \ultrasonic_serial_inst|inst|Pulse_len\(2),
	datac => \ultrasonic_serial_inst|inst1|bcd~19_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~20_combout\,
	combout => \ultrasonic_serial_inst|inst1|bcd~55_combout\);

-- Location: LCCOMB_X30_Y13_N0
\ultrasonic_serial_inst|inst1|LessThan22~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|LessThan22~0_combout\ = (\ultrasonic_serial_inst|inst1|bcd~54_combout\) # ((\ultrasonic_serial_inst|inst1|bcd~55_combout\ & ((\ultrasonic_serial_inst|inst1|bcd~53_combout\) # (\ultrasonic_serial_inst|inst|Pulse_len\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~53_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~54_combout\,
	datac => \ultrasonic_serial_inst|inst|Pulse_len\(1),
	datad => \ultrasonic_serial_inst|inst1|bcd~55_combout\,
	combout => \ultrasonic_serial_inst|inst1|LessThan22~0_combout\);

-- Location: LCCOMB_X30_Y13_N24
\ultrasonic_serial_inst|inst4|Selector1~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector1~12_combout\ = (\ultrasonic_serial_inst|inst4|Temp_char~7_combout\ & (\ultrasonic_serial_inst|inst1|bcd~53_combout\ $ (((!\ultrasonic_serial_inst|inst|Pulse_len\(1) & 
-- \ultrasonic_serial_inst|inst1|LessThan22~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst4|Temp_char~7_combout\,
	datab => \ultrasonic_serial_inst|inst|Pulse_len\(1),
	datac => \ultrasonic_serial_inst|inst1|bcd~53_combout\,
	datad => \ultrasonic_serial_inst|inst1|LessThan22~0_combout\,
	combout => \ultrasonic_serial_inst|inst4|Selector1~12_combout\);

-- Location: LCCOMB_X32_Y9_N0
\ultrasonic_serial_inst|inst4|Selector1~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector1~13_combout\ = (\ultrasonic_serial_inst|inst4|Selector1~9_combout\) # ((\ultrasonic_serial_inst|inst4|Selector1~11_combout\) # ((\ultrasonic_serial_inst|inst4|Selector1~10_combout\) # 
-- (\ultrasonic_serial_inst|inst4|Selector1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst4|Selector1~9_combout\,
	datab => \ultrasonic_serial_inst|inst4|Selector1~11_combout\,
	datac => \ultrasonic_serial_inst|inst4|Selector1~10_combout\,
	datad => \ultrasonic_serial_inst|inst4|Selector1~12_combout\,
	combout => \ultrasonic_serial_inst|inst4|Selector1~13_combout\);

-- Location: FF_X32_Y9_N1
\ultrasonic_serial_inst|inst3|r_TX_Data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst4|Selector1~13_combout\,
	ena => \ultrasonic_serial_inst|inst3|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|r_TX_Data\(2));

-- Location: LCCOMB_X32_Y9_N28
\ultrasonic_serial_inst|inst4|Selector0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector0~1_combout\ = (\ultrasonic_serial_inst|inst4|Temp_char~6_combout\ & ((\ultrasonic_serial_inst|inst1|bcd~51_combout\ & ((!\ultrasonic_serial_inst|inst1|LessThan24~1_combout\))) # 
-- (!\ultrasonic_serial_inst|inst1|bcd~51_combout\ & (\ultrasonic_serial_inst|inst1|bcd~50_combout\ & \ultrasonic_serial_inst|inst1|LessThan24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~51_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~50_combout\,
	datac => \ultrasonic_serial_inst|inst4|Temp_char~6_combout\,
	datad => \ultrasonic_serial_inst|inst1|LessThan24~1_combout\,
	combout => \ultrasonic_serial_inst|inst4|Selector0~1_combout\);

-- Location: LCCOMB_X30_Y13_N6
\ultrasonic_serial_inst|inst1|Add22~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst1|Add22~0_combout\ = \ultrasonic_serial_inst|inst1|bcd~21_combout\ $ (((\ultrasonic_serial_inst|inst|Pulse_len\(2) & ((\ultrasonic_serial_inst|inst|Pulse_len\(1)) # (!\ultrasonic_serial_inst|inst1|LessThan18~0_combout\))) # 
-- (!\ultrasonic_serial_inst|inst|Pulse_len\(2) & (\ultrasonic_serial_inst|inst|Pulse_len\(1) & !\ultrasonic_serial_inst|inst1|LessThan18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|bcd~21_combout\,
	datab => \ultrasonic_serial_inst|inst|Pulse_len\(2),
	datac => \ultrasonic_serial_inst|inst|Pulse_len\(1),
	datad => \ultrasonic_serial_inst|inst1|LessThan18~0_combout\,
	combout => \ultrasonic_serial_inst|inst1|Add22~0_combout\);

-- Location: LCCOMB_X30_Y13_N4
\ultrasonic_serial_inst|inst4|Selector0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector0~2_combout\ = (\ultrasonic_serial_inst|inst4|Temp_char~7_combout\ & ((\ultrasonic_serial_inst|inst1|LessThan22~0_combout\ & (\ultrasonic_serial_inst|inst1|Add22~0_combout\)) # 
-- (!\ultrasonic_serial_inst|inst1|LessThan22~0_combout\ & ((\ultrasonic_serial_inst|inst1|bcd~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|Add22~0_combout\,
	datab => \ultrasonic_serial_inst|inst1|LessThan22~0_combout\,
	datac => \ultrasonic_serial_inst|inst4|Temp_char~7_combout\,
	datad => \ultrasonic_serial_inst|inst1|bcd~55_combout\,
	combout => \ultrasonic_serial_inst|inst4|Selector0~2_combout\);

-- Location: LCCOMB_X33_Y10_N0
\ultrasonic_serial_inst|inst4|WideOr2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|WideOr2~combout\ = (!\ultrasonic_serial_inst|inst4|current_state.State_CRWait~q\ & (!\ultrasonic_serial_inst|inst4|current_state.State_LFTrasmit~q\ & (!\ultrasonic_serial_inst|inst4|current_state.State_CRTrasmit~q\ & 
-- !\ultrasonic_serial_inst|inst4|current_state.State_LFWait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst4|current_state.State_CRWait~q\,
	datab => \ultrasonic_serial_inst|inst4|current_state.State_LFTrasmit~q\,
	datac => \ultrasonic_serial_inst|inst4|current_state.State_CRTrasmit~q\,
	datad => \ultrasonic_serial_inst|inst4|current_state.State_LFWait~q\,
	combout => \ultrasonic_serial_inst|inst4|WideOr2~combout\);

-- Location: LCCOMB_X31_Y9_N4
\ultrasonic_serial_inst|inst4|Selector0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector0~0_combout\ = (\ultrasonic_serial_inst|inst4|Temp_char~5_combout\ & (\ultrasonic_serial_inst|inst1|bcd~41_combout\ $ (((!\ultrasonic_serial_inst|inst1|LessThan23~1_combout\) # 
-- (!\ultrasonic_serial_inst|inst1|LessThan23~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst1|LessThan23~0_combout\,
	datab => \ultrasonic_serial_inst|inst1|bcd~41_combout\,
	datac => \ultrasonic_serial_inst|inst1|LessThan23~1_combout\,
	datad => \ultrasonic_serial_inst|inst4|Temp_char~5_combout\,
	combout => \ultrasonic_serial_inst|inst4|Selector0~0_combout\);

-- Location: LCCOMB_X32_Y10_N26
\ultrasonic_serial_inst|inst4|Selector0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst4|Selector0~3_combout\ = (\ultrasonic_serial_inst|inst4|Selector0~1_combout\) # ((\ultrasonic_serial_inst|inst4|Selector0~2_combout\) # ((\ultrasonic_serial_inst|inst4|Selector0~0_combout\) # 
-- (!\ultrasonic_serial_inst|inst4|WideOr2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst4|Selector0~1_combout\,
	datab => \ultrasonic_serial_inst|inst4|Selector0~2_combout\,
	datac => \ultrasonic_serial_inst|inst4|WideOr2~combout\,
	datad => \ultrasonic_serial_inst|inst4|Selector0~0_combout\,
	combout => \ultrasonic_serial_inst|inst4|Selector0~3_combout\);

-- Location: FF_X32_Y10_N27
\ultrasonic_serial_inst|inst3|r_TX_Data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst4|Selector0~3_combout\,
	ena => \ultrasonic_serial_inst|inst3|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|r_TX_Data\(3));

-- Location: LCCOMB_X32_Y10_N8
\ultrasonic_serial_inst|inst3|Mux0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Mux0~1_combout\ = (\ultrasonic_serial_inst|inst3|Mux0~0_combout\ & (((\ultrasonic_serial_inst|inst3|r_TX_Data\(3)) # (!\ultrasonic_serial_inst|inst3|r_Bit_Index\(1))))) # (!\ultrasonic_serial_inst|inst3|Mux0~0_combout\ & 
-- (\ultrasonic_serial_inst|inst3|r_TX_Data\(2) & ((\ultrasonic_serial_inst|inst3|r_Bit_Index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|Mux0~0_combout\,
	datab => \ultrasonic_serial_inst|inst3|r_TX_Data\(2),
	datac => \ultrasonic_serial_inst|inst3|r_TX_Data\(3),
	datad => \ultrasonic_serial_inst|inst3|r_Bit_Index\(1),
	combout => \ultrasonic_serial_inst|inst3|Mux0~1_combout\);

-- Location: FF_X32_Y10_N31
\ultrasonic_serial_inst|inst3|r_TX_Data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	asdata => \ultrasonic_serial_inst|inst4|WideOr2~combout\,
	sload => VCC,
	ena => \ultrasonic_serial_inst|inst3|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|r_TX_Data\(4));

-- Location: LCCOMB_X32_Y10_N30
\ultrasonic_serial_inst|inst3|Selector1~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Selector1~1_combout\ = (\ultrasonic_serial_inst|inst3|r_Bit_Index\(2) & (((\ultrasonic_serial_inst|inst3|r_TX_Data\(4) & !\ultrasonic_serial_inst|inst3|r_Bit_Index\(1))))) # (!\ultrasonic_serial_inst|inst3|r_Bit_Index\(2) & 
-- (\ultrasonic_serial_inst|inst3|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|r_Bit_Index\(2),
	datab => \ultrasonic_serial_inst|inst3|Mux0~1_combout\,
	datac => \ultrasonic_serial_inst|inst3|r_TX_Data\(4),
	datad => \ultrasonic_serial_inst|inst3|r_Bit_Index\(1),
	combout => \ultrasonic_serial_inst|inst3|Selector1~1_combout\);

-- Location: LCCOMB_X32_Y10_N4
\ultrasonic_serial_inst|inst3|Selector1~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst3|Selector1~2_combout\ = (\ultrasonic_serial_inst|inst3|Selector1~0_combout\) # ((\ultrasonic_serial_inst|inst3|Selector1~1_combout\ & \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Data_Bits~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ultrasonic_serial_inst|inst3|Selector1~0_combout\,
	datac => \ultrasonic_serial_inst|inst3|Selector1~1_combout\,
	datad => \ultrasonic_serial_inst|inst3|r_SM_Main.s_TX_Data_Bits~q\,
	combout => \ultrasonic_serial_inst|inst3|Selector1~2_combout\);

-- Location: FF_X32_Y10_N5
\ultrasonic_serial_inst|inst3|o_TX_Serial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wOSC_CLK~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst3|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst3|o_TX_Serial~q\);

-- Location: LCCOMB_X37_Y18_N14
\ultrasonic_serial_inst|inst|Trig~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ultrasonic_serial_inst|inst|Trig~feeder_combout\ = \ultrasonic_serial_inst|inst|current_state.Triggering~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ultrasonic_serial_inst|inst|current_state.Triggering~q\,
	combout => \ultrasonic_serial_inst|inst|Trig~feeder_combout\);

-- Location: FF_X37_Y18_N15
\ultrasonic_serial_inst|inst|Trig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ultrasonic_serial_inst|inst2|tmp~clkctrl_outclk\,
	d => \ultrasonic_serial_inst|inst|Trig~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ultrasonic_serial_inst|inst|Trig~q\);

-- Location: IOIBUF_X0_Y14_N1
\iCLK~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iCLK,
	o => \iCLK~input_o\);

-- Location: PLL_1
\PLL_inst|altpll_component|auto_generated|pll1\ : cyclone10lp_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 3,
	c0_initial => 4,
	c0_low => 3,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "unused",
	clk0_divide_by => 0,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 0,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "c0",
	clk3_divide_by => 12,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 25,
	clk3_phase_shift => "5000",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock3",
	inclk0_input_frequency => 20833,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 24,
	m => 25,
	m_initial => 1,
	m_ph => 0,
	n => 2,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \PLL_inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \PLL_inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \PLL_inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\PLL_inst|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y14_N8
\iRESETn~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iRESETn,
	o => \iRESETn~input_o\);

-- Location: IOIBUF_X41_Y9_N15
\iSAM_INT~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSAM_INT,
	o => \iSAM_INT~input_o\);

-- Location: IOIBUF_X21_Y0_N15
\iPEX_PIN11~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iPEX_PIN11,
	o => \iPEX_PIN11~input_o\);

-- Location: IOIBUF_X21_Y0_N22
\iPEX_PIN13~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iPEX_PIN13,
	o => \iPEX_PIN13~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\iPEX_PIN23~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iPEX_PIN23,
	o => \iPEX_PIN23~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\iPEX_PIN25~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iPEX_PIN25,
	o => \iPEX_PIN25~input_o\);

-- Location: IOIBUF_X19_Y29_N1
\iPEX_PIN31~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iPEX_PIN31,
	o => \iPEX_PIN31~input_o\);

-- Location: IOIBUF_X19_Y29_N8
\iPEX_PIN33~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iPEX_PIN33,
	o => \iPEX_PIN33~input_o\);

-- Location: IOIBUF_X41_Y14_N1
\iWM_PIO32~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iWM_PIO32,
	o => \iWM_PIO32~input_o\);

-- Location: IOIBUF_X41_Y15_N1
\iWM_TX~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iWM_TX,
	o => \iWM_TX~input_o\);

-- Location: IOIBUF_X41_Y15_N22
\iHDMI_HPD~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iHDMI_HPD,
	o => \iHDMI_HPD~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\iMIPI_D[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iMIPI_D(0),
	ibar => \ww_iMIPI_D[0](n)\,
	o => \iMIPI_D[0]~input_o\);

-- Location: IOIBUF_X0_Y13_N15
\iMIPI_D[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iMIPI_D(1),
	ibar => \ww_iMIPI_D[1](n)\,
	o => \iMIPI_D[1]~input_o\);

-- Location: IOIBUF_X0_Y14_N15
\iMIPI_CLK~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iMIPI_CLK,
	ibar => \ww_iMIPI_CLK(n)\,
	o => \iMIPI_CLK~input_o\);

-- Location: IOIBUF_X3_Y29_N15
\bSDRAM_DQ[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bSDRAM_DQ(0),
	o => \bSDRAM_DQ[0]~input_o\);

-- Location: IOIBUF_X3_Y29_N8
\bSDRAM_DQ[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bSDRAM_DQ(1),
	o => \bSDRAM_DQ[1]~input_o\);

-- Location: IOIBUF_X1_Y29_N1
\bSDRAM_DQ[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bSDRAM_DQ(2),
	o => \bSDRAM_DQ[2]~input_o\);

-- Location: IOIBUF_X3_Y29_N29
\bSDRAM_DQ[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bSDRAM_DQ(3),
	o => \bSDRAM_DQ[3]~input_o\);

-- Location: IOIBUF_X3_Y29_N1
\bSDRAM_DQ[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bSDRAM_DQ(4),
	o => \bSDRAM_DQ[4]~input_o\);

-- Location: IOIBUF_X5_Y29_N1
\bSDRAM_DQ[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bSDRAM_DQ(5),
	o => \bSDRAM_DQ[5]~input_o\);

-- Location: IOIBUF_X5_Y29_N15
\bSDRAM_DQ[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bSDRAM_DQ(6),
	o => \bSDRAM_DQ[6]~input_o\);

-- Location: IOIBUF_X9_Y29_N1
\bSDRAM_DQ[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bSDRAM_DQ(7),
	o => \bSDRAM_DQ[7]~input_o\);

-- Location: IOIBUF_X14_Y29_N29
\bSDRAM_DQ[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bSDRAM_DQ(8),
	o => \bSDRAM_DQ[8]~input_o\);

-- Location: IOIBUF_X14_Y29_N1
\bSDRAM_DQ[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bSDRAM_DQ(9),
	o => \bSDRAM_DQ[9]~input_o\);

-- Location: IOIBUF_X7_Y29_N8
\bSDRAM_DQ[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bSDRAM_DQ(10),
	o => \bSDRAM_DQ[10]~input_o\);

-- Location: IOIBUF_X14_Y29_N22
\bSDRAM_DQ[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bSDRAM_DQ(11),
	o => \bSDRAM_DQ[11]~input_o\);

-- Location: IOIBUF_X7_Y29_N29
\bSDRAM_DQ[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bSDRAM_DQ(12),
	o => \bSDRAM_DQ[12]~input_o\);

-- Location: IOIBUF_X14_Y29_N8
\bSDRAM_DQ[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bSDRAM_DQ(13),
	o => \bSDRAM_DQ[13]~input_o\);

-- Location: IOIBUF_X5_Y29_N22
\bSDRAM_DQ[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bSDRAM_DQ(14),
	o => \bSDRAM_DQ[14]~input_o\);

-- Location: IOIBUF_X9_Y29_N8
\bSDRAM_DQ[15]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bSDRAM_DQ(15),
	o => \bSDRAM_DQ[15]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\bMKR_AREF~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bMKR_AREF,
	o => \bMKR_AREF~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\bMKR_A[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bMKR_A(0),
	o => \bMKR_A[0]~input_o\);

-- Location: IOIBUF_X1_Y29_N22
\bMKR_A[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bMKR_A(1),
	o => \bMKR_A[1]~input_o\);

-- Location: IOIBUF_X11_Y29_N29
\bMKR_A[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bMKR_A(2),
	o => \bMKR_A[2]~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\bMKR_A[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bMKR_A(3),
	o => \bMKR_A[3]~input_o\);

-- Location: IOIBUF_X1_Y29_N29
\bMKR_A[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bMKR_A(4),
	o => \bMKR_A[4]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\bMKR_A[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bMKR_A(5),
	o => \bMKR_A[5]~input_o\);

-- Location: IOIBUF_X0_Y21_N1
\bMKR_A[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bMKR_A(6),
	o => \bMKR_A[6]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\bMKR_D[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bMKR_D(0),
	o => \bMKR_D[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\bMKR_D[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bMKR_D(1),
	o => \bMKR_D[1]~input_o\);

-- Location: IOIBUF_X3_Y0_N29
\bMKR_D[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bMKR_D(2),
	o => \bMKR_D[2]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\bMKR_D[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bMKR_D(3),
	o => \bMKR_D[3]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\bMKR_D[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bMKR_D(4),
	o => \bMKR_D[4]~input_o\);

-- Location: IOIBUF_X41_Y19_N15
\bMKR_D[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bMKR_D(8),
	o => \bMKR_D[8]~input_o\);

-- Location: IOIBUF_X41_Y19_N8
\bMKR_D[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bMKR_D(9),
	o => \bMKR_D[9]~input_o\);

-- Location: IOIBUF_X41_Y27_N22
\bMKR_D[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bMKR_D(10),
	o => \bMKR_D[10]~input_o\);

-- Location: IOIBUF_X41_Y27_N15
\bMKR_D[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bMKR_D(11),
	o => \bMKR_D[11]~input_o\);

-- Location: IOIBUF_X41_Y19_N1
\bMKR_D[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bMKR_D(12),
	o => \bMKR_D[12]~input_o\);

-- Location: IOIBUF_X37_Y29_N15
\bMKR_D[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bMKR_D(13),
	o => \bMKR_D[13]~input_o\);

-- Location: IOIBUF_X28_Y29_N8
\bMKR_D[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bMKR_D(14),
	o => \bMKR_D[14]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\bPEX_RST~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bPEX_RST,
	o => \bPEX_RST~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\bPEX_PIN6~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bPEX_PIN6,
	o => \bPEX_PIN6~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\bPEX_PIN8~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bPEX_PIN8,
	o => \bPEX_PIN8~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\bPEX_PIN10~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bPEX_PIN10,
	o => \bPEX_PIN10~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\bPEX_PIN12~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bPEX_PIN12,
	o => \bPEX_PIN12~input_o\);

-- Location: IOIBUF_X19_Y0_N29
\bPEX_PIN14~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bPEX_PIN14,
	o => \bPEX_PIN14~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\bPEX_PIN16~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bPEX_PIN16,
	o => \bPEX_PIN16~input_o\);

-- Location: IOIBUF_X30_Y0_N15
\bPEX_PIN20~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bPEX_PIN20,
	o => \bPEX_PIN20~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\bPEX_PIN28~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bPEX_PIN28,
	o => \bPEX_PIN28~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\bPEX_PIN30~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bPEX_PIN30,
	o => \bPEX_PIN30~input_o\);

-- Location: IOIBUF_X41_Y18_N1
\bPEX_PIN32~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bPEX_PIN32,
	o => \bPEX_PIN32~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\bPEX_PIN42~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bPEX_PIN42,
	o => \bPEX_PIN42~input_o\);

-- Location: IOIBUF_X37_Y0_N8
\bPEX_PIN44~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bPEX_PIN44,
	o => \bPEX_PIN44~input_o\);

-- Location: IOIBUF_X35_Y0_N1
\bPEX_PIN45~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bPEX_PIN45,
	o => \bPEX_PIN45~input_o\);

-- Location: IOIBUF_X37_Y0_N1
\bPEX_PIN46~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bPEX_PIN46,
	o => \bPEX_PIN46~input_o\);

-- Location: IOIBUF_X35_Y0_N8
\bPEX_PIN47~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bPEX_PIN47,
	o => \bPEX_PIN47~input_o\);

-- Location: IOIBUF_X41_Y23_N1
\bPEX_PIN48~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bPEX_PIN48,
	o => \bPEX_PIN48~input_o\);

-- Location: IOIBUF_X41_Y24_N8
\bPEX_PIN49~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bPEX_PIN49,
	o => \bPEX_PIN49~input_o\);

-- Location: IOIBUF_X41_Y24_N1
\bPEX_PIN51~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bPEX_PIN51,
	o => \bPEX_PIN51~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\bWM_PIO1~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bWM_PIO1,
	o => \bWM_PIO1~input_o\);

-- Location: IOIBUF_X26_Y0_N29
\bWM_PIO2~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bWM_PIO2,
	o => \bWM_PIO2~input_o\);

-- Location: IOIBUF_X37_Y0_N29
\bWM_PIO3~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bWM_PIO3,
	o => \bWM_PIO3~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\bWM_PIO4~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bWM_PIO4,
	o => \bWM_PIO4~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\bWM_PIO5~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bWM_PIO5,
	o => \bWM_PIO5~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\bWM_PIO7~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bWM_PIO7,
	o => \bWM_PIO7~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\bWM_PIO8~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bWM_PIO8,
	o => \bWM_PIO8~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\bWM_PIO18~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bWM_PIO18,
	o => \bWM_PIO18~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\bWM_PIO20~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bWM_PIO20,
	o => \bWM_PIO20~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\bWM_PIO21~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bWM_PIO21,
	o => \bWM_PIO21~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\bWM_PIO27~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bWM_PIO27,
	o => \bWM_PIO27~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\bWM_PIO28~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bWM_PIO28,
	o => \bWM_PIO28~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\bWM_PIO29~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bWM_PIO29,
	o => \bWM_PIO29~input_o\);

-- Location: IOIBUF_X7_Y0_N29
\bWM_PIO31~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bWM_PIO31,
	o => \bWM_PIO31~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\bWM_PIO34~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bWM_PIO34,
	o => \bWM_PIO34~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\bWM_PIO35~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bWM_PIO35,
	o => \bWM_PIO35~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\bWM_PIO36~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bWM_PIO36,
	o => \bWM_PIO36~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\oWM_RX~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_oWM_RX,
	o => \oWM_RX~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\oWM_RESET~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_oWM_RESET,
	o => \oWM_RESET~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\bHDMI_SDA~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bHDMI_SDA,
	o => \bHDMI_SDA~input_o\);

-- Location: IOIBUF_X0_Y5_N22
\bHDMI_SCL~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bHDMI_SCL,
	o => \bHDMI_SCL~input_o\);

-- Location: IOIBUF_X0_Y3_N1
\bMIPI_SDA~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bMIPI_SDA,
	o => \bMIPI_SDA~input_o\);

-- Location: IOIBUF_X0_Y3_N8
\bMIPI_SCL~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bMIPI_SCL,
	o => \bMIPI_SCL~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\bMIPI_GP[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bMIPI_GP(0),
	o => \bMIPI_GP[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\bMIPI_GP[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bMIPI_GP(1),
	o => \bMIPI_GP[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N8
\oFLASH_MOSI~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_oFLASH_MOSI,
	o => \oFLASH_MOSI~input_o\);

-- Location: IOIBUF_X0_Y20_N22
\iFLASH_MISO~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iFLASH_MISO,
	o => \iFLASH_MISO~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\oFLASH_HOLD~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_oFLASH_HOLD,
	o => \oFLASH_HOLD~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\oFLASH_WP~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_oFLASH_WP,
	o => \oFLASH_WP~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\bMKR_D[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bMKR_D(5),
	o => \bMKR_D[5]~input_o\);

-- Location: IOIBUF_X41_Y18_N22
\bMKR_D[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bMKR_D(6),
	o => \bMKR_D[6]~input_o\);
END structure;


