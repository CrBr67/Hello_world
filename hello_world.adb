-- SPDX-FileCopyrightText: 2023 CrBr67 <lenaicjacquemin@outlook.fr>
--
-- SPDX-License-Identifier: CC-BY-SA-4.0

with Ada.Text_IO;

procedure Hello_World is
   -- Color code list and description available at:
   -- https://qastack.fr/programming/4842424/list-of-ansi-color-escape-sequences
   Green_Pencil_Color_Code   : constant String := ASCII.ESC & "[32m";
   Default_Pencil_Color_Code : constant String := ASCII.ESC & "[0m";
begin
   Ada.Text_IO.Put      (Green_Pencil_Color_Code);
   Ada.Text_IO.Put_line ("Hello World !!!");
   Ada.Text_IO.Put      (Default_Pencil_Color_Code);
end Hello_World;
