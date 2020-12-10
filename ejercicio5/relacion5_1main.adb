with Numeros_Complejos;
use Numeros_Complejos;
with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Float_Text_IO;
use Ada.Float_Text_IO;

procedure relacion5_1main is
   x: Complejo;
   y: Complejo;
   z: Complejo;
   
begin
   --Muestra el numero x e Y por pantalla
   x:=Init(2.0,4.0);
   y:=Init(3.0,8.0);
   Put_Line("Ejercicio 5: PAQUETE DE NUMEROS COMPLEJOS");
   New_Line(1);
   put("X= ");
   Put(P_Real (x),0,2,0);
   if(P_Imag(x)>=0.0) then
      Put(" + ");
   else
      Put(" ");
   end if;
   
   Put(P_Imag(x),0,2,0);
   Put_Line("i");

   Put("Y= ");
   Put(P_Real(y),0,2,0);
   if(P_Imag(y)>=0.0) then
      Put(" + ");
   else
      Put(" ");
   end if;
   Put(P_Imag(y),0,2,0);
   Put_Line("i");
   
   --Muestra la suma por pantalla.
   New_Line;
   Put("SUMA --> ");
   Put("Z = X + Y = (a+bi)+(c+di) = a+c+(b+d)i = ");
   z:=x+y;
   Put(P_Real(z),0,2,0);
   if(P_Imag(z)>=0.0) then
      Put(" +");
   else
      Put(" ");
   end if;
   Put(P_Imag(z),0,2,0);
   Put_Line("i");
   
   --Muestra la resta por pantalla.
   New_Line;
   Put("RESTA --> ");
   Put("Z= X- Y = (a+bi)-(c+di)= a-c+(b-d)i= ");
   z:=x-y;
   put(P_Real(z),0,2,0);
   
   if(P_Imag(z)>0.0) then
      put(" -");
   else
      put(" ");
   end if;
   Put(P_Imag(z),0,2,0);
   Put_Line("i");
   
     --Muestra la multiplicacion por pantalla.
   New_Line;
   Put("MULTIPLICACION --> ");
   Put("Z = X * Y = (a*c)-(b*d) +(a*d)+(b*c)i = ");
   z:=x*y;
   Put(P_Real(z),0,2,0);
   if(P_Imag(z)>=0.0) then
      Put(" *");
   else
      Put(" ");
   end if;
   Put(P_Imag(z),0,2,0);
   Put_Line("i");

     --Muestra la division por pantalla.
   New_Line;
   Put("DIVISION --> ");
   Put("Z = X / Y = ((a*c)+(b*d))/((c*c)+(d*d)) +((b*c)-(a*d))/((c*c)+(d*d))i = ");
   z:=x/y;
   Put(P_Real(z),0,2,0);
   if(P_Imag(z)>=0.0) then
      Put(" /");
   else
      Put(" ");
   end if;
   Put(P_Imag(z),0,2,0);
   Put_Line("i");
  
   
   --Muestra el conjugado por pantalla
   New_Line;
   Put("CONJUGADO --> "); 
   Put("Z = Conj(X) =");
   z:=Conj(x); 
   Put(P_Real(z),0,2,0);

   if(P_Imag(z)>=0.0) then
      Put(" +");
   else
      Put(" ");
   end if; 
   Put(P_Imag(z),0,2,0); 
   Put_Line("i");
   
end relacion5_1main;
