with Ada.Text_IO,Ada.Integer_Text_IO;
use Ada.Text_IO,Ada.Integer_Text_IO;

--Ejecución en secuencial
procedure relacion8_2_secuencial is
begin
   --3 tareas distintas en un bucle
   for i in 1..10 loop
      Put_Line("Tarea A: " & Integer'Image(i));
      Put_Line("Tarea B: " & Integer'Image(i));
      Put_Line("Tarea C: " & Integer'Image(i));
      Put_Line("");
   end loop;
   
end relacion8_2_secuencial;
