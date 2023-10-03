; This is a macro for minecraft related actions. Please read the guide carefully
windowTitle := "Minecraft" ;
autoMine := false
autoBridge := false

; AutoMining (alt + m) 
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

; AutoBridging
!b::
    autoBridge := true
    Loop {
        if (autoBridge) {
            Click, Right, Down
            Send {+s down}
        } else {
            Click, Right, Up
            Send {+s up}
            break
        }
        sleep 100 ;
    }
return

; Cancel all actions
!x::
    autoMine := false
return