with Putter;
use Putter;

procedure relacion9_1 is
   --Concurrencia basada en tareas dinamicas
   --definimos 3 tareas y desarrollamos su cuerpo
   task type A;   
   task body A is begin
      --Creamos un bucle en cada tarea para que salga el mensaje por pantalla
      for i in 1..3 loop
         Put_Line("Tarea A: Iteracion" & Integer'Image(i));
         delay(0.5);
      end loop;
   end A;
   type Ref_A is access A;

   
   task type B;
   task body B is begin
      for i in 1..3 loop
         Put_Line("Tarea B: Iteracion" & Integer'Image(i));
         delay(0.5);
      end loop;
   end B;
   type Ref_B is access B;
         
   task type C;
   task body C is begin
      for i in 1..3 loop
         Put_Line("Tarea C: Iteracion" & Integer'Image(i));
         delay(0.5);
      end loop;
         end C;
   type Ref_C is access C;
   
   var_A : Ref_A;
   var_B : Ref_B;
   var_C : Ref_C;
         
begin
   --Instaciamos las tres tareas dinamicas
   var_A := new A;
   var_B := new B;
   var_C := new C;
   
end relacion9_1;
