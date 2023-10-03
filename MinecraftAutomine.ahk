#IfWinActive Minecraft
!z:: ; alt + Z to activate and de-activate this script
    if GetKeyState("LButton") {
        Send % "{Click Up}"
        BlockInput, MouseMoveOff
    } else {
        Send % "{Click Down}"
        BlockInput, MouseMove
    }
return