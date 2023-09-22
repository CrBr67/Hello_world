-- SPDX-FileCopyrightText: 2023 CrBr67 <lenaicjacquemin@outlook.fr>
--
-- SPDX-License-Identifier: CC-BY-SA-4.0

with Ada.Text_IO;

procedure Hello_World is
begin
   Ada.Text_IO.Put (ASCII.ESC & "[32m");
   Ada.Text_IO.Put_line ("Hello World !!!");
   Ada.Text_IO.Put (ASCII.ESC & "[0m");
end Hello_World;
