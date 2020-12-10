with Ada.Text_IO,Ada.Integer_Text_IO;
use Ada.Text_IO,Ada.Integer_Text_IO;
--Concurrencia basada en tareas dinamicas
procedure relacion8_2_dinamico is
   --tarea A y desarrollamos sus cuerpo
   task type A;   
   task body A is begin
      --Realizamos un bucle para que salga 3 veces el mensaje
      for i in 1..3 loop
         Put_Line("Tarea A: Iteracion" & Integer'Image(i));
      end loop;
   end A;
   type Ref_A is access A;

   --tarea B y desarrollamos sus cuerpo
   task type B;
   task body B is begin
       --Realizamos un bucle para que salga 3 veces el mensaje
      for i in 1..3 loop
         Put_Line("Tarea B: Iteracion" & Integer'Image(i));
      end loop;
   end B;
   type Ref_B is access B;
    --tarea c y desarrollamos sus cuerpo     
   task type C;
   task body C is begin
       --Realizamos un bucle para que salga 3 veces el mensaje
      for i in 1..3 loop
         Put_Line("Tarea C: Iteracion" & Integer'Image(i));
      end loop;
         end C;
   type Ref_C is access C;
  
   var_A : Ref_A;
   var_B : Ref_B;
   var_C : Ref_C;
         
begin
   --Instanciamos las tres tareas dinamicas
   var_A := new A;
   var_B := new B;
   var_C := new C;
      
end relacion8_2_dinamico;
