; This is a macro for minecraft related actions. Please read the guide carefully

; general variable
windowTitle := "Minecraft" ;
hotKey := 4

; function flags
autoMine := false
extendedAutoMine := false
autoBridge := false

; AutoMining (alt + m) 
!m::
    autoMine := !autoMine
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
    autoBridge := !autoBridge
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
    extendedAutoMine := !extendedAutoMine
    hotKey := 4 ; UPDATE THIS
    Loop {
        if (extendedAutoMine) {
            Send, !m
            sleep 5000 ; UPDATE THIS
            Send, !m
            if (hotKey < 10) {
                hotKey = hotKey + 1
            } else {
                break
            }
            Send, {%hotKey%} 
        } else {
            Send !x
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