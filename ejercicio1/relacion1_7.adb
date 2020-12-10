with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;
with Ada.Strings.Unbounded;
use Ada.Strings.Unbounded;
procedure relacion1_7 is
   --Definimos los datos para la fecha
   type typeDia is new Integer range 1..31;
   type typeMes is new Integer range 1..12;
   type typeAnio is new Integer range 1900..2100;
   
   type Fecha is
      record
         Dia : typeDia;
         Mes : typeMes;
         Anio: typeAnio;
      end record;
   --Definimos los datos personales
   type Datos_Personales is
      record
         Name:Unbounded_String;
         Surname1:Unbounded_String;
         Surname2:Unbounded_String;
         Date:Fecha;
      end record;
   --Definimos el tipo de dato Nodo
   type Nodo;
   type Enlace is access Nodo;
   type Nodo is
      record
         Valor: Datos_Personales;
         Siguiente: Enlace:=null;
      end record;
   --declaramos los tres variables nodo
   nodoA: Enlace;
   nodoB: Enlace;
   nodoC: Enlace;
   --se declara la cabezera y el indice
   Scan:Enlace;
   i:Integer;
   
begin
   --Se inicializan los tres nodo
   nodoA:=new Nodo;
   nodoB:=new Nodo;
   nodoC:=new Nodo;
   
   i:=1;
   
   nodoA.Valor:=(To_Unbounded_String("Juan Miguel"),To_Unbounded_String("Herrada"),To_Unbounded_String("Acosta"),(10,11,1992));
   nodoA.Siguiente:=nodoB;
   nodoB.Valor:=(To_Unbounded_String("Juan Miguel"),To_Unbounded_String("Herrada"),To_Unbounded_String("Acosta"),(10,11,1992));
   nodoB.Siguiente:=nodoC;
   nodoC.Valor:=(To_Unbounded_String("Juan Miguel"),To_Unbounded_String("Herrada"),To_Unbounded_String("Acosta"),(10,11,1992));
   Scan:=nodoA;
   New_Line(2);
   --Se muestra por pantalla
   Put_Line("Ejercicio 7:");
   loop
      exit when Scan = null;
      New_Line(2);
      Put_Line("Dato numero " & Integer'Image(i) & ":");
      Put_Line("Nombre: " & To_String(Scan.Valor.Name));
      Put_Line("Apellido 1: " & To_String(Scan.Valor.Surname1));
      Put_Line("Apellido 2: " & To_String(Scan.Valor.Surname2));
      Put("Fecha de Nacimiento: " & typeDia'Image(Scan.Valor.Date.Dia));
      Put("/" & typeMes'Image(Scan.Valor.Date.Mes));
      Put_Line("/" & typeAnio'Image(Scan.Valor.Date.Anio));
      i:=i+1;
      Scan:=Scan.Siguiente;
      exit when Scan=null;
   end loop;
end relacion1_7;
