with Ada.Text_IO,Ada.Integer_Text_IO;
use Ada.Text_IO,Ada.Integer_Text_IO;

procedure relacion8_2_estatico is
   --tarea A y desarrollamos sus cuerpo
   task A;
   task body A is begin
      --Realizamos un bucle para que salga 3 veces el mensaje
      for i in 1..3 loop
         Put_Line("Tarea A: Iteracion" & Integer'Image(i));
      end loop;
   end A;
    --tarea B y desarrollamos sus cuerpo
   task B;
   task body B is begin
      --Realizamos un bucle para que salga 3 veces el mensaje
      for i in 1..3 loop
         Put_Line("Tarea B: Iteracion" & Integer'Image(i));
      end loop;
   end B;
   --tarea c y desarrollamos sus cuerpo  
   task C;
   task body C is begin
      --Realizamos un bucle para que salga 3 veces el mensaje
      for i in 1..3 loop
         Put_Line("Tarea C: Iteracion" & Integer'Image(i));
      end loop;
   end C;
begin
   --ponemos mull para ejecutar el programa
   null;
     
end relacion8_2_estatico;
