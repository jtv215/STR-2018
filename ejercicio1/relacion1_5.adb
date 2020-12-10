with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;
procedure relacion1_5 is
   
   --Declaramos las variables y cremaos la cadena
   type String is array(Positive range <>) of Character;   
   cadena : constant String(1..11):= ("TIEMPO REAL");
   
begin
   --Se muestra la cadena por pantalla
   Put("Ejercicio 5:");
   New_Line;
   for i in cadena'Range loop
      Put(cadena(i));
   end loop;
   
end relacion1_5;
