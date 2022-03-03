; ^ = Ctrl
; + = Shift
; ! = Alt
; # = Win

#SingleInstance, force

SetTitleMatchMode, 2

; ### Windows ###

#Escape::DllCall("PowrProf\SetSuspendState", "int", 0, "int", 1, "int", 0)

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
