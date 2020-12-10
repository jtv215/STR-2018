with Ada.Text_IO;
package body PutterServer is

   task body Putter is
   begin
      loop
         select
            accept Put_Line(str: String) do
               for i in str'Range loop
                  Ada.Text_IO.Put(str(i));
                  delay 0.001;
               end loop;
               Ada.Text_IO.New_Line;
            end Put_Line;
         or
              terminate;
         end select;
      end loop;
   end Putter;

end PutterServer;
