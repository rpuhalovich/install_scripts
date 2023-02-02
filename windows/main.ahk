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

+CapsLock::
{
    Input, SingleKey, V L1
    if GetKeyState("CapsLock", "T") = 1
    {
        SetCapsLockState, off
    }
    else if GetKeyState("CapsLock", "F") = 0
    {
        SetCapsLockState, on
    }
}
