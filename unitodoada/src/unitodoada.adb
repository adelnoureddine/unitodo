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

with Ada.Command_Line; use Ada.Command_Line;
with Help_Info; use Help_Info;
with Todo_Tasks; use Todo_Tasks;
with Ada.Text_IO; use Ada.Text_IO;
with GNAT.OS_Lib; use GNAT.OS_Lib;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure Unitodoada is
    -- Todo filename
    Todo_Filename : String := "unitodo.txt";

    -- Command line arguments
    Todo_Task_Text : Unbounded_String := To_Unbounded_String("");

begin
    if (Argument_Count = 0) then
        Show_Tasks (Todo_Filename);
    elsif (Argument_Count = 1) then
        Put_Line ("You need at least two argument: the status (+ or -) and the todo task text.");
        OS_Exit (0);
    else
        if (Argument (1) = "+" or else Argument (1) = "-") then
            for Argument_Parameter in 2 .. Argument_Count loop
                Todo_Task_Text := Todo_Task_Text & " " & To_Unbounded_String (Argument (Argument_Parameter));
            end loop;
            Add_Task (Argument (1), To_String (Todo_Task_Text), Todo_Filename);
        else
            Put_Line ("Status of the todo task is either + or -.");
            OS_Exit (0);
        end if;
    end if;

end Unitodoada;
