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
with GNAT.OS_Lib; use GNAT.OS_Lib;

package body Todo_Tasks is

    procedure Add_Task (Task_Status : in String; Task_Text : in String; Filename : in String) is
        F : File_Type; -- File handle
    begin
        -- Append new data to the file
        Open (F, Append_File, Filename);
        Put_Line (F, Task_Status & " " & Task_Text);
        Close (F);
        Put_Line ("Task added to: " & Filename);
    exception
        when others =>
            Put_Line ("Error in accessing the todo file: " & Filename);
            OS_Exit (0);
    end;
    
    procedure Show_Tasks (Filename : in String) is
        F : File_Type; -- File handle
    begin
        Open (F, In_File, Filename);
        while not End_Of_File (F) loop
            Put_Line (Get_Line (F));
        end loop;
        Close (F);
    exception
        when others =>
            Put_Line ("Error in accessing the todo file: " & Filename);
            OS_Exit (0);
    end;

end Todo_Tasks;
