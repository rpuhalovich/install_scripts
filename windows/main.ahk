; ^ = Ctrl
; + = Shift
; ! = Alt
; # = Win

#Include, hide_cursor.ahk

#SingleInstance, force

SetTitleMatchMode, 2

; ### Windows ###

LWin & x::
{
    Send, {Alt}{Space}
    Sendraw, n
    Return
}

LWin & Tab::AltTab
