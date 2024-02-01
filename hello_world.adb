-- SPDX-FileCopyrightText: 2023 CrBr67 <lenaicjacquemin@outlook.fr>
--
-- SPDX-License-Identifier: CC-BY-SA-4.0

with Terminal;
with Ada.Command_Line;
with Ada.Characters.Handling;

procedure Hello_World is
   package CLI renames Ada.Command_Line;

   type Language_T is (FR, DE, JP);

   Arg_Count      : constant Natural := CLI.Argument_Count;
   Last_Parameter : constant String  := (if Arg_Count > 0
                                         then CLI.Argument (Arg_Count)
                                         else "");
   Lang            : constant String := Ada.Characters.Handling.To_Lower (Last_Parameter);

begin
   Terminal.Set_Pencil_Color_To (Terminal.Green);
   case Arg_Count is
      when 0 => Terminal.Write  ("Hello World !!!");
      when 1 => 
         if Lang = "fr"
         then
            Terminal.Write ("Bonjour Monde !!!");
         elsif Lang = "de"
         then 
            Terminal.Write ("Allo Wort !!!");
         elsif Lang = "jp"
         then 
            Terminal.Write ("ハローワールド！！");
         end if;
      when others => raise Program_Error;
 
   end case;
   Terminal.Set_Pencil_Color_To (Terminal.Default_Color);
end Hello_World;
