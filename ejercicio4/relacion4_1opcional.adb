with Generic_Stack,Ada.Text_IO,Ada.Integer_Text_IO; 
use Generic_Stack,Ada.Text_IO,Ada.Integer_Text_IO;

procedure relacion4_1opcional is
   
Numero : Integer;
S : Pila;
begin
   --Insertamos los elementos en una pila
   for i in 1..10 loop
     Push(i,S);
   end loop;
   
   Put_Line("Se han insertado 10 numeros en la pila");
   
   Put_Line("Se eliminaran todos los elementos de la pila"); Put("[");
   --se recorre la pila empezando desde arriba que seria el 10 al 1
   --y se va extrayendo los elementos de la pila 
   for i in reverse 1..10 loop
      Put(Integer'Image( Pop(Numero,S,i)));
      if i/=1 then
         Put(", ");
      end if;
   end loop;
   Put("]");
   
end relacion4_1opcional;
