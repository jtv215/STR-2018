with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;
with Ada.Strings.Unbounded;
use Ada.Strings.Unbounded;
procedure relacion1_6 is
   --Se definen los datos para la fecha
   type typeDia is new Integer range 1..31;
   type typeMes is new Integer range 1..12;
   type typeAnio is new Integer range 1900..2100;
   
   type Fecha is
      record
         Dia : typeDia;
         Mes : typeMes;
         Anio: typeAnio;
      end record;
   --Definimos los datos personales.
   type Datos_Personales is
      record
         Name:Unbounded_String;
         Surname1:Unbounded_String;
         Surname2:Unbounded_String;
         Date:Fecha;
      end record;
   --Declaramos la variable persona
   persona:Datos_Personales;
begin
   --Mostramos por pantalla los resultados
   persona :=(To_Unbounded_String("Juan Miguel"),To_Unbounded_String("Herrada"),To_Unbounded_String("Acosta"),(10,11,1992));
   New_Line(1);
   Put_Line("Ejercicio 6:");
   New_Line(1);
   Put_Line("Datos Personales: ");
   Put_Line("Nombre: " & To_String(persona.Name));
   Put_Line("Apellido 1: " & To_String(persona.Surname1));
   Put_Line("Apellido 2: " & To_String(persona.Surname2));
   Put("Fecha de Nacimiento: " & typeDia'Image(persona.Date.Dia));
   Put(" /" & typeMes'Image(persona.Date.Mes));
   Put_Line(" /" & typeAnio'Image(persona.Date.Anio));
   
end relacion1_6;
