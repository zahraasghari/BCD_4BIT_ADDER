LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY XOR1 IS
PORT(A,B:IN STD_LOGIC; C:OUT STD_LOGIC);
END XOR1;
ARCHITECTURE XOR1_ARCH OF XOR1 IS
COMPONENT NAND_GATE
PORT(A,B:IN STD_LOGIC;C:OUT STD_LOGIC);
END COMPONENT;
SIGNAL X1,X2,X3:STD_LOGIC;
BEGIN
STEP17:NAND_GATE PORT MAP (A,B,X1);
STEP18:NAND_GATE PORT MAP (A,X1,X2);
STEP19:NAND_GATE PORT MAP (B,X1,X3);
STEP20:NAND_GATE PORT MAP (X2,X3,C);
END XOR1_ARCH;