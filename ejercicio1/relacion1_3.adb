with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;
procedure relacion1_3 is
   --Definimos el tipo de datos de digitoA
   type digitoA is delta 0.01 range -50.0..50.0;
   --Definimos el tipo de datos de digitoB
   type digitoB is digits 3 range -200.000..200.000;
   --Creamos las tres variables y asignamos su valor
   A : digitoA := 49.01;
   B : digitoB := 199.001;
   
   sumaAB : Float;
   
begin
   --Realizamos operación
   sumaAB := Float(A)+Float(B);
   --Mostramos los resultados
   Put("Ejercicio 3:");
   New_Line;
   Put_Line("Suma A + B = " & Float'Image(sumaAB));
   
end relacion1_3;
