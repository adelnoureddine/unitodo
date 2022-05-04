--
--  Copyright (c) 2022, Adel Noureddine.
--  All rights reserved. This program and the accompanying materials
--  are made available under the terms of the
--  GNU General Public License v3.0 only (GPL-3.0-only)
--  which accompanies this distribution, and is available at:
--  https://www.gnu.org/licenses/gpl-3.0.en.html
--
--  Author : Adel Noureddine
--

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Characters.Latin_1; use Ada.Characters.Latin_1;

package body Help_Info is

   procedure Show_Help is
    Version_Number : constant String := "0.1 beta";
    begin
        Put_Line (ESC & "[93m" & "~~ UnitTodo ~~" & ESC & "[0m");
        Put_Line ("Version 0.1");
        Put_Line ("--------------------------");
        Put_Line ("Unitodoada is an Ada implementation of the UniTodo specification (for text-based todo listing and management).");
        Put_Line ("Just use it by calling the tool with the task status and content. Exemple:");
        Put_Line ("./unitodoada + Buy milk");
        Put_Line ("./unitodoada - Buy oranges");
        Put_Line ("Or call the tool without any argument to show the todo list and task status.");
        Put_Line ("--------------------------");
        Put_Line (ESC & "[93m" & "Copyright:" & ESC & "[0m");
        Put_Line ("Copyright (c) 2022, Adel Noureddine. Unitodoada is licensed under the GNU GPL 3 license only (GPL-3.0-only).");
    end;

end Help_Info;
