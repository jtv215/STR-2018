

with Cola, Ada.Text_IO,Ada.Integer_Text_IO;
use Cola,Ada.Text_IO,Ada.Integer_Text_IO;
procedure relacion4_1 is
   --Declaramos las variables
   E:Elemento;
   Numero:Integer;
begin
   --Insertamos elementos en la cola   
   for i in 1..10 loop
      E:=Elemento(i);
      Poner(E);
   end loop;
   --Mostrmos por pantalla
   Put_Line("Se han insertado 10 numeros en la cola");
   
   Put_Line("Se eliminaran todos los elementos de la cola"); Put("[");
   --Se recorre la cola y se va quitando los elementos
   while Vacia=false loop
      Quitar(Elemento(Numero));
      Put(Integer'Image(Numero));
      if Vacia=false then
         Put(", ");
      end if;
   end loop;
   Put("]");
   
end relacion4_1;
