-- SPDX-FileCopyrightText: 2023 CrBr67 <lenaicjacquemin@outlook.fr>
--
-- SPDX-License-Identifier: CC-BY-SA-4.0

package Terminal is
   pragma Elaborate_Body;

   -- Color code list and description available at:
   -- https://qastack.fr/programming/4842424/list-of-ansi-color-escape-sequences

   type Pencil_Color_T is  (Default_Color,
                           Black,
                           Red,
                           Green,
                           Yellow,
                           Blue,
                           Magenta,
                           Cyan,
                           White,
                           Bright_Black,
                           Bright_Red,
                           Bright_Green,
                           Bright_Yellow,
                           Bright_Blue,
                           Bright_Magenta,
                           Bright_Cyan,
                           Bright_White);

   procedure Set_Pencil_Color_To (Color : in Pencil_Color_T);

   procedure Write               (Item  : in String);

private

   for Pencil_Color_T use (Default_Color   =>  0,
                           Black           => 30,
                           Red             => 31,
                           Green           => 32,
                           Yellow          => 33,
                           Blue            => 34,
                           Magenta         => 35,
                           Cyan            => 36,
                           White           => 37,
                           Bright_Black    => 90,
                           Bright_Red      => 91,
                           Bright_Green    => 92,
                           Bright_Yellow   => 93,
                           Bright_Blue     => 94,
                           Bright_Magenta  => 95,
                           Bright_Cyan     => 96,
                           Bright_White    => 97);

end Terminal;
