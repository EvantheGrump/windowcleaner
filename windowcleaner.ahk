#Requires AutoHotkey v1.1.34.03
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force

if not A_IsAdmin

  Run *RunAs "%A_ScriptFullPath%"


Gui, Add, Progress, x6 y7 w180 h30 vUpdating
Gui, Show, x127 y87 h49 w197, Updating

Urldownloadtofile https://github.com/EvantheGrump/windowclean/releases/latest/download/windowcleaner.part, part.exe 
sleep 1000
GuiControl,, Updating, +25
Run Powershell.exe -Command &{.\part.exe  -y}
WinWait, ahk_exe powershell.exe
WinWaitClose ahk_exe powershell.exe
GuiControl,, Updating, +25
filedelete, part.exe
FileCopy, regs\blank.ico, C:\Windows\System32\blank.ico, 1

Gui, Destroy
SetWorkingDir regs
FileReadLine, b1, updates.list, 1
FileReadLine, b2, updates.list, 2
FileReadLine, b3, updates.list, 3
FileReadLine, b4, updates.list, 4
FileReadLine, b5, updates.list, 5
FileReadLine, b6, updates.list, 6
FileReadLine, b7, updates.list, 7
FileReadLine, b8, updates.list, 8
FileReadLine, b9, updates.list, 9
FileReadLine, b10, updates.list, 10
FileReadLine, b11, updates.list, 15
FileReadLine, b12, updates.list, 14
FileReadLine, b13, updates.list, 13
FileReadLine, b14, updates.list, 12
FileReadLine, b15, updates.list, 11

Gui, New
Gui, Add, Button, x22 y19 w70 h70 gb1, %b1%
Gui, Add, Button, x112 y19 w70 h70 gb2, %b2%
Gui, Add, Button, x202 y19 w70 h70 gb3, %b3%
Gui, Add, Button, x292 y19 w70 h70 gb4, %b4%
Gui, Add, Button, x382 y19 w70 h70 gb5, %b5%
Gui, Add, Button, x22 y109 w70 h70 gb6, %b6%
Gui, Add, Button, x112 y109 w70 h70 gb7, %b7%
Gui, Add, Button, x202 y109 w70 h70 gb8, %b8%
Gui, Add, Button, x292 y109 w70 h70 gb9, %b9%
Gui, Add, Button, x382 y109 w70 h70 gb10, %b10%
Gui, Add, Button, x382 y199 w70 h70 gb11, %b11%
Gui, Add, Button, x292 y199 w70 h70 gb12, %b12%
Gui, Add, Button, x202 y199 w70 h70 gb13, %b13%
Gui, Add, Button, x112 y199 w70 h70 gb14, %b14%
Gui, Add, Button, x22 y199 w70 h70 gb15, %b15%
Gui, Add, Button, x192 y289 w90 h30 vUpdate, Update
Gui, Font, cDA4F49
Gui, Add, Text, x117 y329 w240 h30 , WILL REQUIRE ADMINISTRATOR PRIVILEGES
Gui, Show, x127 y87 h379 w479, Window Cleaner
Return

ButtonUpdate:
run https://github.com/EvantheGrump/windowclean
return

b1:
SetWorkingDir %A_ScriptDir%
SetWorkingDir plugins
run shortcutmanager.ahk
ExitApp
b2:

b3:

b4:

b5:

b6:

b7:

b8:

b9:

b10:

b11:

b12:

b13:

b14:

b15:

return
GuiClose:
ExitApp
