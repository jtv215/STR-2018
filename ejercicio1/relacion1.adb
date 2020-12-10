with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;
procedure Relacion1 is


   --  Ejercicio 1

  --Tipos de datos
  type intA is range -120..120;
  type intB is range 0..50;
  type intC is mod 255;

   --Variables
   A: intA := 5;
   B: intB := 3;
   C: intC := 1;

   sumaAB : Integer;
   sumaAC : Integer;
   sumaBC : Integer;
begin
   --Operaciones
   SumaAB:= Integer(A)+Integer(B);
   SumaAC:= Integer(A)+Integer(C);
   SumaBC:= Integer(C)+Integer(B);
   --Salida por pantalla
   Put("Ejercicio1:");
   New_Line;
   Put_Line("Suma A + B = " & Integer'Image(sumaAB));
   Put_Line("Suma A + C = " & Integer'Image(sumaAC));
   Put_Line("Suma B + C = " & Integer'Image(sumaBC));

end Relacion1;
