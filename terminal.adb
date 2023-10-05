-- SPDX-FileCopyrightText: 2023 CrBr67 <lenaicjacquemin@outlook.fr>
--
-- SPDX-License-Identifier: CC-BY-SA-4.0

with Ada.Text_IO;
with Ada.Strings.Fixed;

package body Terminal is

   -----------
   -- Write --
   -----------

   procedure Write (Item : in String)
   is
   begin
      Ada.Text_IO.Put_Line (Item);
   end Write;


   -------------------------
   -- Set_Pencil_Color_To --
   -------------------------

   procedure Set_Pencil_Color_To (Color : in Pencil_Color_T)
   is
      Code        : constant Natural := Pencil_Color_T'Enum_Rep (Color);
      Code_String : constant String  := Integer'Image           (Code);
   begin
      Ada.Text_IO.Put (ASCII.ESC & "[");
      Ada.Text_IO.Put (Ada.Strings.Fixed.Trim (Code_String, Ada.Strings.Left));
      Ada.Text_IO.Put ("m");
   end Set_Pencil_Color_To;

end terminal;
