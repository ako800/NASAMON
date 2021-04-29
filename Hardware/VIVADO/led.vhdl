----------------------------------------------------------------------------------
-- Company: SANDRA'S TECH
-- Engineer: María Lanza Pérez
-- 
-- Create Date: 11/06/2019 04:36:40 PM
-- Design Name: NASAMON Firmware
-- Module Name: lab15_p5 - Behavioral
-- Project Name: NASAMON
-- Target Devices: 
-- Tool Versions: 
-- Description: manejo de leds de notificación para la PCB del proyecto NASAMON
-- 
-- 
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;



entity lab15_p5 is
    Port ( 
        sw : in STD_LOGIC_VECTOR (2 downto 0);
        led : out STD_LOGIC_VECTOR (5 downto 0)
    );
end lab15_p5;

architecture Behavioral of lab15_p5 is
    signal A, B, C, Y, F, G : STD_LOGIC;
    component lab15_p4a
        Port ( a_A, a_B, a_C : in STD_LOGIC;
               a_Y : out STD_LOGIC);        
    end component;
    component lab15_p4b is
        Port ( b_A, b_B, b_C : in STD_LOGIC;
               b_F : out STD_LOGIC);
    end component;
    component lab15_p4c is
        Port ( c_A, c_B, c_C : in STD_LOGIC;
               c_G : out STD_LOGIC);
    end component;

begin
    A <= sw(0);
    B <= sw(1);
    C <= sw(2);
    lab15_p4a1:  lab15_p4a port map (a_A => A, a_B => B, a_C => C, a_Y => Y);
    lab15_p4b1:  lab15_p4b port map (b_A => A, b_B => B, b_C => C, b_F => F);
    lab15_p4c1:  lab15_p4c port map (c_A => A, c_B => c_B, c_C => C, c_G => G);
    led(0) <= A;
    led(1) <= B;
    led(2) <= C;
    led(3) <= Y;
    led(4) <= F;
    led(5) <= G;
   
end Behavioral;
