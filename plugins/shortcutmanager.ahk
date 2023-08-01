#Requires AutoHotkey v1.1.34.03
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Gui, Add, Text, x119 y9 w140 h30 +Center, EvantheGrump's shortcut icon manager
Gui, Font, cDA4F49, 
Gui, Add, Text, x74 y129 w230 h30 + +Center, WILL REQUIRE ADMINISTRATOR PRIVILEGES
Gui, Add, Button, x22 y59 w100 h30 gRemove, Remove Shortcut Arrows
Gui, Add, Button, x262 y59 w100 h30 gRestore, Restore Shortcut Arrows
Gui, Add, Button, x162 y59 w60 h50 gRestart, Restart Windows Explorer
Gui, Show, x662 y361 h175 w390, Shortcut Manager
Return

Remove:
SetWorkingDir ..
SetWorkingDir regs
run remove_shortcut_arrows.reg
return

Restore:
SetWorkingDir ..
SetWorkingDir regs
run restore_shortcut_arrows.reg
return

Restart:
Process,close,explorer.exe
sleep, 10
run, explorer.exe
WinWait, ahk_class CabinetWClass
WinClose ;close the new explorer window
return


GuiClose:
ExitApp