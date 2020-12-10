
with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure relacion3_1 is
   --Definimos las variables de tipo archivo y declaramos la matriz
   --en la que se almacenará los datos que se leerán de otro archivo
   Integer_File : File_Type;
   Salida: File_Type;
   type matrix is array(1..10, 1..5) of Integer;
   M:matrix;
   --Variables para movernos por la matriz
   i,j:Integer:=1;
begin
   --Abrimos el archivo y lo recorremos
   Open(Integer_File, In_File, "C:\Users\Jefferson T\src\input.txt");
   while not End_Of_File(Integer_File) loop
      if End_Of_Line(Integer_File) then
         --si es final de la linea salta a la siguiente y si no obtien el dato
         --que de la posición correspondiente.
         Skip_Line(Integer_File);
         j:=j+1;
         i:=1;
      else
         Get(Integer_File, M(i,j)); 
         i:=i+1;
      end if;
   end loop;
   --cerramos el archivo
   Close(Integer_File);
   --creamos el archivo de salida
   Create(Salida,Out_File,"C:\Users\Jefferson T\src\outdata.txt");
   Close(Salida);
   Open(Salida,Out_File,"C:\Users\Jefferson T\src\outdata.txt");
   --Recorremos la matriz y la vamos guardando en el fichero 
   for k in 1..10 loop
      for l in 1..5 loop
         Put(Salida,Integer'Image(M(k,l))&" ");
      end loop; 
      Put_Line(Salida,"");
   end loop;
   Close(Salida);
   Put_Line("Guardado en outdata.txt");
   
end relacion3_1;
