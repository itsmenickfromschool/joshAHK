; AutoHotkey Version 2 script

; Recommended for performance and compatibility with future AutoHotkey releases.
#NoEnv  
#Warn  

; Recommended for new scripts due to its superior speed and reliability.
SendMode "Input"

; Ensures a consistent starting directory.
SetWorkingDir A_ScriptDir

; Headlamp Claim (LTF)
^1::  ; Invoke with Ctrl + 1
    Send "{Ctrl Down}n{Ctrl Up}"
    Send "BDWSC `n"
    Send "{Ctrl Down}r{Ctrl Up}"
    Send "{Shift Down}{F4}{Shift Up}"
    Sleep 10000
    Click(205, 170, 2)  ; Double click on most recent download
    Loop 3 {
        Send "{Tab}"
        Sleep 250
    }
    Send "{Enter}"
    Sleep 2000
    Click(144, 676)  ; Click on No. column in Lines
    Send "{Ctrl Down}v{Ctrl Up}"
    Sleep 1000
    Send "{Tab}{Alt Down}{Down}{Alt Up}{Enter}"
    Sleep 1000
    Loop 7 {
        Send "{Tab}"
        Sleep 250
    }
    ; Enter issue description
    Send "l{Tab}t{Tab}f{Tab}"
    Loop 4 {
        Send "{Tab}"
        Sleep 250
    }
    Send "repl{Tab}"
    Sleep 250
    Click(788, 946)  ; Click on received item checkbox
    Send "{Tab}"
    Sleep 250
    Send "{Tab}"
    Sleep 250
    Send "{Enter}"
    Sleep 1000
    Loop 3 {
        Send "{Tab}"
        Sleep 250
    }
    Loop 2 {
        Send "1{Tab}"  ; Quantity
        Sleep 250
    }
    Return

; Generic Return (Prompt)
; ^2::  ; Invoke with Ctrl + 2
;     ReturnCodeOne := InputBox("Return Reason Codes", "Enter return reason code one.", "", 300, 150)
;     if ErrorLevel
;         Return
;     ReturnCodeTwo := InputBox("Return Reason Codes", "Enter return reason code two.", "", 300, 150)
;     if ErrorLevel
;         Return
;     ReturnCodeThree := InputBox("Return Reason Codes", "Enter return reason code three.", "", 300, 150)
;     if ErrorLevel
;         Return
;     GenericReturnSubroutine()
;     Return

; ; Skin Return (GGG)
; ^3::  ; Invoke with Ctrl + 3
;     GenericReturnSubroutine("g", "g", "g")
;     Return

; Dealer Credit
; ^4::  ; Invoke with Ctrl + 4
;     DealerCode := InputBox("Dealer Account Number", "Enter dealer account number.", "", 300, 150)
;     if ErrorLevel
;         Return
;     ReturnCodeOne := InputBox("Return Reason Codes", "Enter return reason code one.", "", 300, 150)
;     if ErrorLevel
;         Return
;     ReturnCodeTwo := InputBox("Return Reason Codes", "Enter return reason code two.", "", 300, 150)
;     if ErrorLevel
;         Return
;     ReturnCodeThree := InputBox("Return Reason Codes", "Enter return reason code three.", "", 300, 150)
;     if ErrorLevel
;         Return    
;     GenericReturnSubroutine(ReturnCodeOne, ReturnCodeTwo, ReturnCodeThree, DealerCode)
;     Return


; ************ PROBABLY WANT BELOW ***********

; Start Sales Return Order

; ^5::  ; Invoke with Ctrl + 5
;     Send "{Ctrl Down}n{Ctrl Up}"
;     Send "BDWSC `n"
;     Send "{Ctrl Down}r{Ctrl Up}"
;     Send "{Shift Down}{F4}{Shift Up}"
;     Sleep 10000
;     Click(205, 170, 2)  ; Double click on most recent download
;     Loop 3 {
;         Send "{Tab}"
;         Sleep 250
;     }
;     Send "{Enter}"
;     Sleep 2000
;     Return

^Esc::ExitApp  ; Exit script with Ctrl + Escape

; Subroutines
GenericReturnSubroutine(code1 := "", code2 := "", code3 := "", dealer := "") {
    Send "{Ctrl Down}n{Ctrl Up}"
    if (dealer != "")
        Send dealer
    Send "`n"
    Send "{Ctrl Down}r{Ctrl Up}"
    Send "{Shift Down}{F4}{Shift Up}"
    Sleep 10000
    Click(205, 170, 2)  ; Double click on




