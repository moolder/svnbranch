; launcher-gui.ahk
; Entwickelt von moolder / Guido Schuh (moolder@gmx.net, dirtyhack.de)
; Lizenz: Creative Commons Namensnennung-NichtKommerziell-Weitergabe unter gleichen Bedingungen 3.0
; Siehe http://creativecommons.org/licenses/by-nc-sa/3.0/de/

;configfile=launcherconfig.txt
appheadline=SVN Branch tool

;TrayTip, svnbranch, Running svnbranch, 4, 1

; Menu, Tray, Icon, moolder-minifig.ico

Gui, Add, Text, h0 y10 , Source:
Gui, Add, Text, hp     , Dest:
Gui, Add, Text, hp     , Message:

Gui, Add, Edit, vSrc     h21 w500 gStoreControlData ym, %Src%  ; The ym option starts a new column of controls.
Gui, Add, Edit, vDest    hp w500 gStoreControlData, %Dest%
Gui, Add, Edit, vMessage hp w500 gStoreControlData, %Message%

Gui, Add, Button, default, OK  ; The label ButtonOK (if it exists) will be run when the button is pressed.

Gui, Show,, %appheadline%

return

GuiClose:
GuiEscape:
Gui, Cancel
return

ButtonOK:
Gui, Submit, NoHide ; Save the input from the user to each control's associated variable.
;MsgBox svn copy -m "%Message%" %Src% %Dest%
Run svn copy -m "%Message%" %Src% %Dest%
; ExitApp
return


StoreControlData:
Gui, Submit, NoHide  ; Save the input from the user to each control's associated variable.
return

#b::Gui, Show,, %appheadline%
