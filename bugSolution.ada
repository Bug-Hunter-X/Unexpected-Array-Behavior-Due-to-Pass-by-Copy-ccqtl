```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   type My_Array_Access is access My_Array;
   A : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   B : My_Array_Access := new My_Array; 
   -- Copy the contents, not just the array itself
   B.all := A;
begin
   for I in A'Range loop
      A(I) := A(I) * 2;
   end loop;
   Put_Line("B(1): " & B.all(1)'Img);
end Example;
```