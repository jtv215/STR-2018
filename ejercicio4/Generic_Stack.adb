 package body Generic_Stack is
 
   ----------
   -- Push --
   ----------
 
   procedure Push(Item : Integer; Onto : in out Pila) is
   Begin 
      Onto(Item):= Item;
   end Push;
 
   ---------
   -- Pop --
   ---------
 
   function Pop(Item : out Integer; From : in out Pila;Indice : Integer) return Integer is 
      Index : Integer := Indice;
   begin
      Item := From(Index);
      return Item;
   end Pop;
 
end Generic_Stack;
