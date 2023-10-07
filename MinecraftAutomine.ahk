; This is a macro for minecraft related actions. Please read the guide carefully
windowTitle := "Minecraft" ;
autoMine := false
autoBridge := false

; Automining (alt + m) 
!m::
    autoMine := true
    Loop {
        if (autoMine) {
            Click, Down
            Send {w down}
        } else {
            Click, Up
            Send {w up}
            break
        }
        sleep 100 ;
    }
return

; Cancel all actions
!x::
    autoMine := false
return