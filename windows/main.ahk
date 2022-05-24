; ^ = Ctrl
; + = Shift
; ! = Alt
; # = Win

#Include, hide_cursor.ahk

#SingleInstance, force

SetTitleMatchMode, 2

F12::Reload

; ### Windows ###

LWin & x::
{
    Send, {Alt}{Space}
    Sendraw, n
    Return
}

LWin & Tab::AltTab
LWin & q::PostMessage, 0x0112, 0xF060,,, WinTitle, WinText
