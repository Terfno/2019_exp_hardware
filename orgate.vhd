LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY orgate IS
  PORT (
    SW0, SW1 : IN std_logic;
    LED : OUT std_logic
  );
END orgate

ARCHITECTURE a OF orgate IS

BEGIN
  LED <= SW0 OR SW1;
END a;
