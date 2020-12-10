with Ada.Text_IO;
use Ada.Text_IO;

procedure relacion2_1opcional is
   --Declaramos las variables
   aux:String(1..20);
   tamanio:Natural;
   caracter:Character;
begin

   Put_Line("Escribe la cadena");
   --solicita una cadena por consola
   Get_Line(aux,tamanio);
   New_Line;
   --
   for i in 1..tamanio loop
      caracter:=aux(i);
      --Recorremos la cadena carácter a carácter y comprobamos a través de
      --una estructura de selección por casos que tipo de carácter es y en
      ---consecuencia se imprimirá por pantalla un mensaje
      case caracter is
      when 'A'|'B' => Put_Line("Opcion 1");
      when 'C'|'D'|'E' => Put_Line("Opcion 2");
      when 'F' => Put_Line("Opcion 3");
      when others => Put_Line("Otra opcion");
      end case;

   end loop;


end relacion2_1opcional;
