with Putter,Semaphores;
use Putter,Semaphores;
--Concurrencia basada en tareas dinamica
procedure relacion9_3opcional is
   --Declaramos los semaforos para controlar la salida de pantalla
   ExMut : Semaphore;
   primero : Semaphore;
   Segundo : Semaphore;
   tercero : Semaphore;
   --Definimos 3 tareas distintas y para cada tarea se desarrolla un cuerpo
   task type A;   
   task body A is begin
      Wait(Segundo);
      Wait(tercero);
      
      --creamos un bucle en cada tarea, y hacemos uso de semaforos
      for i in 1..3 loop
         --Dentro de cada bucle hacemos uso de semaforos primero,
         --segundo o tercero, para que salga por pantalla el orden 
         --que nosotros queramos, en tal caso es c-> b-> a
         --La tarea A hara un wait hasta que que no se muestra la tarea B         
         Wait(tercero);
         Wait(ExMut);
         Put_Line("Tarea A: Iteracion" & Integer'Image(i));
         Signal(ExMut);
         Signal(primero);
      end loop;
   end A;
   type Ref_A is access A;

   
   task type B;
   task body B is begin
      for i in 1..3 loop
         Wait(Segundo);
         Wait(ExMut);
         Put_Line("Tarea B: Iteracion" & Integer'Image(i));
         Signal(ExMut);
         Signal(tercero);
      end loop;
   end B;
   type Ref_B is access B;
         
   task type C;
   task body C is begin
      for i in 1..3 loop
         Wait(primero);
         Wait(ExMut);
         Put_Line("Tarea C: Iteracion" & Integer'Image(i));
         Signal(ExMut);
         Signal(Segundo);
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
end relacion9_3opcional;
