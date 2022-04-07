; ^ = Ctrl
; + = Shift
; ! = Alt
; # = Win

#SingleInstance, force

SetTitleMatchMode, 2

; ### Windows ###

Capslock::Esc

^Up::#Up

!Enter::Run "%LOCALAPPDATA%\Microsoft\WindowsApps\wt.exe"

#q::!F4

!m::WinMinimize

LCtrl::Alt
LAlt::Ctrl

LWin & 	Tab::AltTab

; ### Firefox ###
#IfWinActive, ahk_exe firefox.exe

F1::
{
	Send m
	Send m
	Send {Enter}
	Send i
	return
}
