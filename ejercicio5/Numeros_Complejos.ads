package Numeros_Complejos is

   -- DEFINICI�N DE TIPOS
   type Complejo is private;

   -- DEFINICI�N DE FUNCIONES
   -- Inicializaci�n
   function Init(R,I: Float) return Complejo;

   -- Sobrecarga de operadores
   function "+"(X,Y: Complejo) return Complejo;
   function "-"(X,Y: Complejo) return Complejo;
   function "*"(X,Y: Complejo) return Complejo;
   function "/"(X,Y: Complejo) return Complejo;

   -- Otras funciones
   function Conj(X: Complejo) return Complejo;
   function P_Real(X: Complejo) return Float;
   function P_Imag(X: Complejo) return Float;
   function To_String(X: Complejo) return String;

   -- DEFINICI�N DE PROCEDIMIENTOS
  -- procedure Put(X: Complejo);
  -- procedure Put_Line(X: Complejo);

private

   -- DEFINICI�N DE TIPOS
   type Complejo is tagged record
      P_Real: Float;
      P_Imag: Float;
   end record;

end Numeros_Complejos;
