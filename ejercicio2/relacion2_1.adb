with Ada.Text_IO;
use Ada.Text_IO;
procedure relacion2_1 is
   --Creamos la cadena y declaramos la variable char.
   --cadena : constant String(1..7):= "ABCDEFG"; 
   cadena :String:= "ABCDEFG"; 
   char : Character;
   
begin
   Put_Line("Relacion 2: Ejercicio 1");
   New_Line(1);
   -- Recorremos la cadena con un bucle
   for i in cadena'Range loop
      char:=cadena(i);
      --Recorremos la cadena car�cter a car�cter y comprobamos a trav�s de 
      --una estructura de selecci�n por casos que tipo de car�cter es y en 
      ---consecuencia se imprimir� por pantalla un mensaje
      case char is
      when 'A'|'B' => Put_Line("Opcion 1");
      when 'C'|'D'|'E' => Put_Line("Opcion 2");
      when 'F' => Put_Line("Opcion 3");
      when others => Put_Line("Otra opcion");
      end case;
   end loop;
   
end relacion2_1;
