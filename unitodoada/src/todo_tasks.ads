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

package Todo_Tasks is

   -- Add task to todo file
    procedure Add_Task (Task_Status : in String; Task_Text : in String; Filename : in String);
    
    -- Show all todo tasks and their status
    procedure Show_Tasks (Filename : in String);

end Todo_Tasks;
