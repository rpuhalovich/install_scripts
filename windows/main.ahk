; ^ = Ctrl
; + = Shift
; ! = Alt
; # = Win

#SingleInstance, force

SetTitleMatchMode, 2

; Windows-----------------------------------------------------------------------
#Escape::DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)

activate_explorer() {
	Run, Explorer
	Sleep 700
	send, #{right}
	return
}

F24::activate_explorer()
#e::activate_explorer()

; middle click to open in new explorer window
MouseIsOver(WinTitle) {
	MouseGetPos,,, Win
	return WinExist(WinTitle . " ahk_id " . Win)
}
#If MouseIsOver("ahk_class CabinetWClass")
MButton::
	Send {LButton}{AppsKey}e
	Sleep 2000
	Send #{right}
	return

; Ableton Live------------------------------------------------------------------
#IfWinActive, ahk_class Ableton Live Window Class
; creates a new midi clip with looping off (uses \ keybind)
F1:: 
{
	Send ^+m
	Send \
	return
}

F2::Del

F3::0 ; disable selected
F4::^l ; loop selected
!a::^!l ; hides and shows the info view

; enters fullscreen
^+f::
{
	Send {F11}
	return
}

; searches for s and inserts it
load_from_find(s) {
	Send ^f
	Send %s%
	Sleep, 250
	Send {Down}
	Send {Enter}
	Sleep, 250
	Send ^f
	Send {Esc}
	return
}

NumpadEnd::load_from_find("eq eight") ; 1 on numpad
NumpadDown::load_from_find("utility") ; 2 on numpad etc
NumpadPgDn::load_from_find("pitch")
NumpadLeft::load_from_find("tuner")

; Google Chrome-----------------------------------------------------------------
#IfWinActive, ahk_exe chrome.exe
;close tabs to the right
F1::
{
	Send !+r
	return
}

;goes to homepage
F2::!Home

; Brave-------------------------------------------------------------------------
#IfWinActive, ahk_exe brave.exe
;close tabs to the right
F1::
{
	Send !+r
	return
}

;goes to homepage
F2::!Home

; Excel-------------------------------------------------------------------------
#IfWinActive, ahk_exe EXCEL.EXE
;expands all columns (must select top left element first)
F1::
{
	Send ^+8
	Send !h
	Send o
	Send i
	return
}

; Reaper ------------------------------------------------------------------------
#IfWinActive, ahk_exe firefox.exe

F1::
{
	Send m
	Send m
	Send {Enter}
	Send i
	return
}

