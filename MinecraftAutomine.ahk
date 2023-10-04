; This is a macro for minecraft related actions. Please read the guide carefully
windowTitle := "Minecraft" ;
autoMine := false
extendedAutoMine := false
autoBridge := false
hotKey := 4

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

; ExtendedAutoMine
!+m::
    extendedAutoMine := true
    hotKey := 4 ; UPDATE THIS
    Loop {
        if (autoBridge) {
            autoMine := true
            sleep 5000 ; UPDATE THIS
            automine: false
            if (hotKey < 10) {
                hotKey = hotKey + 1
            } else {
                break
            }
            Send, {%hotKey%} 
            autoMine := true 
        } else {
            autoMine := false
            break
        }
         
        sleep 100 ; 
    }
return

; Cancel all actions
!x::
    autoMine := false
    extendedAutoMine := false
    autoBridge := false
return