; General variables and flags
windowTitle := "Minecraft"
hotKey := 4
autoMine := false
autoBridge := false
extendedAutoMine := false

; Main loop for actions
Loop {
    ; AutoMine
    if (autoMine) {
        Click, Down
        Send {w down}
    } else {
        Click, Up
        Send {w up}
    }

    ; AutoBridge
    if (autoBridge) {
        Click, Right, Down
        Send {LShift down}
        sleep 10 ; Optional small delay
        Send {s down}
    } else {
        Click, Right, Up
        Send {s up}
        sleep 10 ; Optional small delay
        Send {LShift up}
    }

    ; ExtendedAutoMine
    if (extendedAutoMine) {
        autoMine := true
        sleep 5000 ; Sleep for 5 seconds
        autoMine := false
        if (hotKey < 10) {
            hotKey := hotKey + 1
        } else {
            extendedAutoMine := false
        }
        Send, {%hotKey%}
    }

    sleep 100 ; General delay
}

; Hotkeys to toggle actions

!m::autoMine := !autoMine
!b::autoBridge := !autoBridge
!+m::extendedAutoMine := !extendedAutoMine

; Cancel all actions
!x::
    autoMine := false
    autoBridge := false
    extendedAutoMine := false
return