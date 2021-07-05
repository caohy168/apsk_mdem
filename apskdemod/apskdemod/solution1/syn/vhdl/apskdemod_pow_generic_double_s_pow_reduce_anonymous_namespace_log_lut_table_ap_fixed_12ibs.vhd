-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity apskdemod_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12ibs_rom is 
    generic(
             DWIDTH     : integer := 82; 
             AWIDTH     : integer := 6; 
             MEM_SIZE    : integer := 64
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of apskdemod_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12ibs_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000", 
    1 => "0000010000000000000000000000000000000000111111111111111111110000000000000101010101", 
    2 => "0000100000000000000000000000000000000011111111111111111111100000000000101010101010", 
    3 => "0000110000000000000000000000000000001000111111111111111111010000000010001111111111", 
    4 => "0001000000000000000000000000000000001111111111111111111111000000000101010101010101", 
    5 => "0001010000000000000000000000000000011000111111111111111110110000001010011010101010", 
    6 => "0001100000000000000000000000000000100011111111111111111110100000010001111111111111", 
    7 => "0001110000000000000000000000000000110000111111111111111110010000011100100101010101", 
    8 => "0010000000000000000000000000000000111111111111111111111110000000101010101010101010", 
    9 => "0010010000000000000000000000000001010000111111111111111101110000111100101111111111", 
    10 => "0010100000000000000000000000000001100011111111111111111101100001010011010101010101", 
    11 => "0010110000000000000000000000000001111000111111111111111101010001101110111010101010", 
    12 => "0011000000000000000000000000000010001111111111111111111101000010001111111111111111", 
    13 => "0011010000000000000000000000000010101000111111111111111100110010110111000101010101", 
    14 => "0011100000000000000000000000000011000011111111111111111100100011100100101010101010", 
    15 => "0011110000000000000000000000000011100000111111111111111100010100011001001111111111", 
    16 => "0100000000000000000000000000000011111111111111111111111100000101010101010101010101", 
    17 => "0100010000000000000000000000000100100000111111111111111011110110011001011010101010", 
    18 => "0100100000000000000000000000000101000011111111111111111011100111100101111111111111", 
    19 => "0100110000000000000000000000000101101000111111111111111011011000111011100101010101", 
    20 => "0101000000000000000000000000000110001111111111111111111011001010011010101010101010", 
    21 => "0101010000000000000000000000000110111000111111111111111010111100000011101111111111", 
    22 => "0101100000000000000000000000000111100011111111111111111010101101110111010101010101", 
    23 => "0101110000000000000000000000001000010000111111111111111010011111110101111010101010", 
    24 => "0110000000000000000000000000001000111111111111111111111010010001111111111111111111", 
    25 => "0110010000000000000000000000001001110000111111111111111010000100010110000101010101", 
    26 => "0110100000000000000000000000001010100011111111111111111001110110111000101010101010", 
    27 => "0110110000000000000000000000001011011000111111111111111001101001101000001111111111", 
    28 => "0111000000000000000000000000001100001111111111111111111001011100100101010101010100", 
    29 => "0111010000000000000000000000001101001000111111111111111001001111110000011010101010", 
    30 => "0111100000000000000000000000001110000011111111111111111001000011001001111111111111", 
    31 => "0111110000000000000000000000001111000000111111111111111000110110110010100101010100", 
    32 => "1000000000000000000000000000001111111111111111111111111000101010101010101010101010", 
    33 => "1000010000000000000000000000010001000000111111111111111000011110110010101111111111", 
    34 => "1000100000000000000000000000010010000011111111111111111000010011001011010101010100", 
    35 => "1000110000000000000000000000010011001000111111111111111000000111110100111010101010", 
    36 => "1001000000000000000000000000010100001111111111111111110111111100101111111111111111", 
    37 => "1001010000000000000000000000010101011000111111111111110111110001111101000101010100", 
    38 => "1001100000000000000000000000010110100011111111111111110111100111011100101010101010", 
    39 => "1001110000000000000000000000010111110000111111111111110111011101001111001111111111", 
    40 => "1010000000000000000000000000011000111111111111111111110111010011010101010101010100", 
    41 => "1010010000000000000000000000011010010000111111111111110111001001101111011010101001", 
    42 => "1010100000000000000000000000011011100011111111111111110111000000011101111111111111", 
    43 => "1010110000000000000000000000011100111000111111111111110110110111100001100101010100", 
    44 => "1011000000000000000000000000011110001111111111111111110110101110111010101010101001", 
    45 => "1011010000000000000000000000011111101000111111111111110110100110101001101111111111", 
    46 => "1011100000000000000000000000100001000011111111111111110110011110101111010101010100", 
    47 => "1011110000000000000000000000100010100000111111111111110110010111001011111010101001", 
    48 => "1100000000000000000000000000100011111111111111111111110110001111111111111111111111", 
    49 => "1100010000000000000000000000100101100000111111111111110110001001001100000101010100", 
    50 => "1100100000000000000000000000100111000011111111111111110110000010110000101010101001", 
    51 => "1100110000000000000000000000101000101000111111111111110101111100101110001111111110", 
    52 => "1101000000000000000000000000101010001111111111111111110101110111000101010101010100", 
    53 => "1101010000000000000000000000101011111000111111111111110101110001110110011010101001", 
    54 => "1101100000000000000000000000101101100011111111111111110101101101000001111111111110", 
    55 => "1101110000000000000000000000101111010000111111111111110101101000101000100101010100", 
    56 => "1110000000000000000000000000110000111111111111111111110101100100101010101010101001", 
    57 => "1110010000000000000000000000110010110000111111111111110101100001001000101111111110", 
    58 => "1110100000000000000000000000110100100011111111111111110101011110000011010101010100", 
    59 => "1110110000000000000000000000110110011000111111111111110101011011011010111010101001", 
    60 => "1111000000000000000000000000111000001111111111111111110101011001001111111111111110", 
    61 => "1111010000000000000000000000111010001000111111111111110101010111100011000101010011", 
    62 => "1111100000000000000000000000111100000011111111111111110101010110010100101010101001", 
    63 => "1111110000000000000000000000111110000000111111111111110101010101100101001111111110" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity apskdemod_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12ibs is
    generic (
        DataWidth : INTEGER := 82;
        AddressRange : INTEGER := 64;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of apskdemod_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12ibs is
    component apskdemod_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12ibs_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    apskdemod_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12ibs_rom_U :  component apskdemod_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12ibs_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


