```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   A : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   B : My_Array;
begin
   B := A;
   -- Perform some operations on B
   for I in A'Range loop
      A(I) := A(I) * 2;
   end loop;
   -- Accessing elements of B after modifying A
   Put_Line("B(1): " & B(1)'Img);
end Example;
```