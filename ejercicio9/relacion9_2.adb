with Putter,Semaphores;
use Putter,Semaphores;
--Concurrencia basada en tareas dinamicas.
procedure relacion9_2 is
 --Exclusion mutua
 ExMut : Semaphore;
   --Definimos 3 tareas distintas y para cada tarea se desarrolla su cuerpo
   task type A;   
   task body A is begin
      --creamos un bucle en cada tarea y hacemos uso de un semaforo
      --para que no ocurra como en el ejercicio anterior
      for i in 1..3 loop
         Wait(ExMut);
         Put_Line("Tarea A: Iteracion" & Integer'Image(i));
         Signal(ExMut);
      end loop;
   end A;
   type Ref_A is access A;

   
   task type B;
   task body B is begin
      for i in 1..3 loop
         Wait(ExMut);
         Put_Line("Tarea B: Iteracion" & Integer'Image(i));
         Signal(ExMut);
      end loop;
   end B;
   type Ref_B is access B;
         
   task type C;
   task body C is begin
      for i in 1..3 loop
         Wait(ExMut);
         Put_Line("Tarea C: Iteracion" & Integer'Image(i));
         Signal(ExMut);
      end loop;
         end C;
   type Ref_C is access C;
   
   var_A : Ref_A;
   var_B : Ref_B;
   var_C : Ref_C;
         
begin
   var_A := new A;
   var_B := new B;
   var_C := new C;
end relacion9_2;
