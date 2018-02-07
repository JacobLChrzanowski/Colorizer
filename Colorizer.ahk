
;#####################################    # # # # # # # # # # # #
;## Welcome to Colorizer.exe       ##   #   Written by         #
;##   Live v1.0.4               ##   #  Jacob L Chrzanowski  #
;################################   # # # # # # # # # # # # #
    
;Colorizer is unfinished and does not look like it will in its finished state.

; Create the popup menu by adding some items to it.
Menu, Colored Context, Add, Blue, MenuHandler
Menu, Colored Context, Icon, Blue, finalLib.icl, 1, 116
Menu, Colored Context, Add, Orange, MenuHandler
Menu, Colored Context, Icon, Orange, finalLib.icl, 2, 116
Menu, Colored Context, Add, Green, MenuHandler
Menu, Colored Context, Icon, Green, finalLib.icl, 3, 116
Menu, Colored Context, Add, Yellow, MenuHandler
Menu, Colored Context, Icon, Yellow, finalLib.icl, 4, 116

Menu, Colored Context, Add  ; Add a separator line.

Menu, Colored Context, Add, Red, MenuHandler
Menu, Colored Context, Icon, Red, finalLib.icl, 5, 116
Menu, Colored Context, Add, Black, MenuHandler
Menu, Colored Context, Icon, Black, finalLib.icl, 6, 116
Menu, Colored Context, Add, White, MenuHandler
Menu, Colored Context, Icon, White, finalLib.icl, 7, 116
Menu, Colored Context, Add, Grey, MenuHandler
Menu, Colored Context, Icon, Grey, finalLib.icl, 8, 116

Menu, Colored Context, Add  ; Add a separator line.

Menu, Colored Context, Add, SM, MenuHandler
Menu, Colored Context, Icon, SM, finalLib.icl, 9, 116
Menu, Colored Context, Add, MM, MenuHandler
Menu, Colored Context, Icon, MM, finalLib.icl, 10, 116

Menu, Colored Context, Add  ; Add a separator line.

Menu, Colored Context, Add, Bold, MenuHandler
Menu, Colored Context, Icon, Bold, finalLib.icl, 11, 116

;--------------------------------------------------------------
; Menu, Colored Context, Add  ; Add a separator line.

; ; Create another menu destined to become a submenu of the above menu.
; Menu, Submenu1, Add, Item1, MenuHandler
; Menu, Submenu1, Add, Item2, MenuHandler

; ; Create a submenu in the first menu (a right-arrow indicator). When the user selects it, the second menu is displayed.
; Menu, Colored Context, Add, My Submenu, :Submenu1

; Menu, Colored Context, Add  ; Add a separator line below the submenu.
; ;Menu, Colored Context, Add, Item3, MenuHandler  ; Add another [b][b][b]menu[/b][/b][/b] item beneath the submenu.
;--------------------------------------------------------------

return  ; End of script's auto-execute section.


MenuHandler:
    temp = <b>
    colorFont = <font color="
    fontCap = </font>
    if A_ThisMenuItem = Blue
    {
        colorVar = 0000FF">
        temp = %temp%%colorFont%%colorVar%%Clipboard%%fontCap%
    }
    else if A_ThisMenuItem = Orange
    {
        colorVar = FF4500">
        temp = %temp%%colorFont%%colorVar%%Clipboard%%fontCap%
    }
    else if A_ThisMenuItem = Yellow
    {
        colorVar = FFD700">
        temp = %temp%%colorFont%%colorVar%%Clipboard%%fontCap%
    }
    else if A_ThisMenuItem = Green
    {
        colorVar = 006400">
        temp = %temp%%colorFont%%colorVar%%Clipboard%%fontCap%
    }
    else if A_ThisMenuItem = Red
    {
        colorVar = FF0000">
        temp = %temp%%colorFont%%colorVar%%Clipboard%%fontCap%
    }
    else if A_ThisMenuItem = Black
    {
        colorVar = 260042">
        temp = %temp%%colorFont%%colorVar%%Clipboard%%fontCap%
    }
    else if A_ThisMenuItem = White
    {
        colorVar = FFFFFF">
        temp = %temp%%colorFont%%colorVar%%Clipboard%%fontCap%
    }
    else if A_ThisMenuItem = Grey
    {
        colorVar = 808080">
        temp = %temp%%colorFont%%colorVar%%Clipboard%%fontCap%
    }
    else if A_ThisMenuItem = SM
    {
        colorVar = 1E90FF">
        temp = %temp%%colorFont%%colorVar%%Clipboard%%fontCap%
    }
    else if A_ThisMenuItem = MM
    {
        colorVar = 00FFFF">
        temp = %temp%%colorFont%%colorVar%%Clipboard%%fontCap%
        
    }
    else if A_ThisMenuItem = Bold
    {
        temp = %temp%%Clipboard%
        
    }
    temp = %temp%</b>
    Sleep, 20
    ClipBoard := temp
    Sleep, 50
    SendInput ^v
    Sleep, 50
    ClipBoard := oCB ; restore ClipBoard
return



$^9::
{
    oCB := Clipboard
    Sendinput ^c
    Sleep, 10

    if(Clipboard = oCB){
        Reload
        Sleep 1000 ; If successful, the reload will close this instance during the Sleep, so the line below will never be reached.
        MsgBox, 4,, The script could not be reloaded. Would you like to open it for editing?
        IfMsgBox, Yes, Edit
        return
    }

    Menu, Colored Context, Show  ; i.e. press the Win-Z hotkey to show the menu.
}


