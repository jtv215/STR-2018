
package Generic_Stack is
   type Pila is array(1..10) of Integer;
   procedure Push (Item : Integer; Onto : in out Pila);
   function Pop (Item : out Integer; From : in out Pila;Indice : Integer) return Integer;

end Generic_Stack;
