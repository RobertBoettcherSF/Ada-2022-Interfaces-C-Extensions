pragma Ada_2022;
with Interfaces.C;
with Interfaces.C.Extensions;
with System;
package body Interfaces_C_Extensions_Demo is
   package X renames Interfaces.C.Extensions;
   use type System.Address;
   use type X.Unsigned_64;
   use type Interfaces.C.long_long;
   function Void_Ptr_Null return Boolean is
      P : constant X.void_ptr := System.Null_Address;
   begin
      return System.Address (P) = System.Null_Address;
   end Void_Ptr_Null;
   function Ext_Types_Ok return Boolean is
      A : constant X.Unsigned_64 := 21;
      U : constant X.Unsigned_64 := A + A;
      L : constant X.long_long := Interfaces.C.long_long (U / 6);
   begin
      return U = 42 and then L = 7;
   end Ext_Types_Ok;
end Interfaces_C_Extensions_Demo;
