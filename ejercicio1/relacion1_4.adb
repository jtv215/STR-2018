with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;
procedure relacion1_4 is
   --Declaramos el tipo de datos
   type vectorA is array (0..149) of Float;
   type vectorB is array (0..199,0..199,0..199) of Integer;
   type vectorC is array (Integer range<>) of Float;
   
   --Creamos las variables
   A : vectorA := (others=> 0.0);
   B : vectorB := (others=>(others=>(others=> 0)));
   C : vectorC(0..149) := (others=> 0.0);

begin
   --Mostramos por pantalla los valores de cada vector
   Put("Ejercicio 4:");
   New_Line;
   Put_Line("Tipo A" & Float'Image(A(1)));
   Put_Line("Tipo B" & Integer'Image(B(0,0,1)));
   Put_Line("Tipo C" & Float'Image(C(20)));
   
end relacion1_4;
