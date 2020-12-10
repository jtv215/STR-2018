with PutterServer;
use PutterServer;
procedure relacion10_1 is

   --Concurrencia basada en tareas dinamicas.

   --Definimos las 3 tareas, una a una y
   --desarrollamos sus respectivos cuerpos.
   task type d;

   type type_d is access d;

   var_d:type_d;

   task body d is begin

      --Hacemos un bucle con el que sacamos por pantalla
      --3 veces el mensaje que queremos.
      for i in 1..3 loop

         --Utilizamos el Put_Line del paquete PutterServer
         PutterServer.Putter.Put_Line("Soy la tarea  A:"& i'Image);

      end loop;
   end d;

   task type e;

   type type_e is access e;

   var_e:type_e;

   task body e is begin

      for i in 1..3 loop

          PutterServer.Putter.Put_Line("Soy la tarea  B:"& i'Image);

      end loop;
   end e;

   task type f;

   type type_f is access f;

   var_f:type_f;

   task body f is begin

      for i in 1..3 loop

           PutterServer.Putter.Put_Line("Soy la tarea  C:"& i'Image);

      end loop;
   end f;


begin

   --Instanciamos las tres tareas dinamicas
   var_d:=new d;
   var_e:=new e;
   var_f:=new f;


   
end relacion10_1;
