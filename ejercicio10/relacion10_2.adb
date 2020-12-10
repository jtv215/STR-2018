with PutterServer;
use PutterServer;

procedure relacion10_2 is

   
   
   tipotareas : String := "ABC";

   --Concurrencia basada en tareas dinamicas.

   --Definimos la tarea, PutterClient.
   task type PutterClient(entrada: Character);
   type tarea is access PutterClient;
   t:tarea;

   --Desarrollamos el cuerpo de la tarea
   --declarada anteriormente.
   task body PutterClient is

   begin

      --Hacemos un bucle con tantas iteraciones como
      --mensajes de cada tarea queremos que salgan.
      for i in 1..3 loop

         Putter.Put_Line("Soy la tarea "&entrada&". Numero de veces: "& i'Img);

      end loop;

   end PutterClient;

begin

   --Hacemos otro bucle que recorre el String que hemos
   --declarado al principio caracter a caracter, y por
   --cada caracter llama a la tarea PuuterClient  y
   --muestra por pantalla el mensaje que se pedia
   for i in tipotareas'Range loop

      t := new PutterClient(tipotareas(i));

   end loop;

   
end relacion10_2;
