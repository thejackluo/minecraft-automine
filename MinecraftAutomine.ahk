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
            Send {LShift down}
            sleep 10 ; Optional small delay
            Send {s down}
        } else {
            Click, Right, Up
            Send {s up}
            sleep 10 ; Optional small delay
            Send {LShift up}
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
            Send, !mw
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
    autoBridge := false
    extendedAutoMine := false
return

Escape::
    ExitApp
Return

; Three bugs: First bug, Toggling doesn't work, second bug, bridging you can't combine sent keys do some research, third bug, the extended automine doesn't work