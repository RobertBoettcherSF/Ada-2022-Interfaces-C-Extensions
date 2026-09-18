pragma Ada_2022;
with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Interfaces_C_Extensions_Demo;
procedure Tests is
begin
   Assert (Interfaces_C_Extensions_Demo.Void_Ptr_Null);
   Assert (Interfaces_C_Extensions_Demo.Ext_Types_Ok);
   Put_Line ("PASS Interfaces.C.Extensions void_ptr / Unsigned_64 / long_long");
   Put_Line ("All Interfaces.C.Extensions topic tests passed.");
end Tests;
