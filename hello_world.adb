-- SPDX-FileCopyrightText: 2023 CrBr67 <lenaicjacquemin@outlook.fr>
--
-- SPDX-License-Identifier: CC-BY-SA-4.0

with Terminal;

procedure Hello_World is
begin
   Terminal.Set_Pencil_Color_To (Terminal.Green);
   Terminal.Write               ("Hello World !!!");
   Terminal.Set_Pencil_Color_To (Terminal.Default_Color);
end Hello_World;
