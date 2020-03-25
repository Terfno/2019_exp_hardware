LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY sseg IS
  PORT (
    in_b : IN std_logic_vector(3 DOWNTO 0);
    ss : OUT std_logic_vector(7 DOWNTO 0);
  );
END sseg;

ARCHITECTURE RegTraLev OF sseg IS
BEGIN
  PROCESS (in_b) BEGIN
    CASE in_b IS
      WHEN "0000" => ss <= "00000011";
      WHEN "0001" => ss <= "10011111";
      WHEN "0010" => ss <= "00100101";
      WHEN "0011" => ss <= "00001101";
      WHEN "0100" => ss <= "10011001";
      WHEN "0101" => ss <= "01001001";
      WHEN "0110" => ss <= "01000001";
      WHEN "0111" => ss <= "00011111";
      WHEN "1000" => ss <= "00000001";
      WHEN "1001" => ss <= "00001001";
      WHEN "1010" => ss <= "00010001";
      WHEN "1011" => ss <= "11000001";
      WHEN "1100" => ss <= "11100101";
      WHEN "1101" => ss <= "10000101";
      WHEN "1110" => ss <= "01100001";
      WHEN "1111" => ss <= "01110001";
    END CASE;
  END PROCESS;
END RegTraLev;