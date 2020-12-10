package body Numeros_Complejos is

   --Declaramos un numero complejo y 4 variables float
   s: Complejo;
   a,b,c,d:Float;

   --Asignamos un valor a la variables privada complejo
   function Init (R,I :Float) return Complejo is
   begin
      s.P_Real:=R;
      s.P_Imag:=I;
      return s;
   end Init;

     -- Sobrecarga de operadores
   function "+"(X,y: in Complejo) return Complejo is
   begin
      a:=X.P_Real;
      b:=X.P_Imag;
      c:=y.P_Real;
      d:=y.P_Imag;
      s.P_Real:=a+c;
      s.P_Imag:=b+d;
      return s;

   end "+";

   function "-"(x,y:in Complejo)return Complejo is
   begin
      a:=x.P_Real;
      b:=x.P_Imag;
      c:=y.P_Real;
      d:=y.P_Imag;
      s.P_Real:=a-c;
      s.P_Imag:=b-d;
      return s;
   end "-";

   function "*"(x,y:in Complejo) return Complejo is
   begin
      a:=x.P_Real;
      b:=x.P_Imag;
      c:=y.P_Real;
      d:=y.P_Imag;
      s.P_Real:=(a*c)-(b*d);
      s.P_Imag:=(a*d)+(b*c);
      return s;
   end "*";

   function "/"(x,y:in Complejo) return Complejo is
   begin
      a:=x.P_Real;
      b:=x.P_Imag;
      c:=y.P_Real;
      d:=y.P_Imag;
      s.P_Real:=((a*c)+(b*d))/((c*c)+(d*d));
      s.P_Imag:=((b*c)-(a*d))/((c*c)+(d*d));
      return s;
    end "/";

   -- Otras funciones
   function Conj(x:in Complejo) return Complejo is
   begin
      a:=x.P_Real;
      b:=x.P_Imag;
      s.P_Real:=a;
      s.P_Imag:=b*(-1.0);
      return s;
   end Conj;


   function P_Real(x: in Complejo) return Float is
   begin
      return x.P_Real;
   end P_Real;

   function P_Imag(x: in Complejo) return Float is
   begin
      return x.P_Imag;
   end P_Imag;


   function To_String(x: in Complejo) return String is

      cadena: String:="";
      cadena1: String:="";
   begin
      a:= X.P_Real;
      b:=X.P_Imag;
      cadena:= a'Image;
      cadena1:=b'Image;
      return cadena&cadena1;
   end To_String;
end Numeros_Complejos;
