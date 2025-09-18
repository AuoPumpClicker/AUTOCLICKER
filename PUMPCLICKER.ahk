; --- AutoClick GUI styled like Pumpfun ---
#SingleInstance Force

; default speed (ms between clicks)
ClickSpeed := 20

; GUI window
Gui, +AlwaysOnTop +Resize
Gui, Color, 1A2C42                ; dark blue/grey background
Gui, Font, s10 cFFFFFF, Segoe UI

Gui, Add, Text, x20 y20 w150, Click Speed (ms):
Gui, Add, Edit, x180 y18 w80 vClickSpeedEdit, %ClickSpeed%

Gui, Add, Button, x20 y60 w100 h30 gStartClick, Start
Gui, Add, Button, x140 y60 w100 h30 gStopClick, Stop

Gui, Show, w260 h110, Pumpfun AutoClick
return

StartClick:
Gui, Submit, NoHide
ClickSpeed := ClickSpeedEdit
SetTimer, AutoClick, %ClickSpeed%
return

StopClick:
SetTimer, AutoClick, Off
return

AutoClick:
Click
return

GuiClose:
ExitApp
