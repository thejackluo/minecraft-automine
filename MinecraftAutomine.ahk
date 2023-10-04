; This is a macro for minecraft related actions. Please read the guide carefully

; general variable
windowTitle := "Minecraft" ;
hotKey := 4

; function flags
autoMine := false
extendedAutoMine := false
autoBridge := false

; Cancel all actions
!x::
    autoMine := false
    autoBridge := false
    extendedAutoMine := false
return

Escape::
    ExitApp
return

; AutoMining (alt + m) 
!m::
    #IfWinActive ahk_class GLFW30 {
        autoMine := true
        Loop, 5000 {
            if (autoMine) {
                Click, Down
                Send {w down}
            }
            Click, Up
            Send {w up}
            sleep 100
            break
        }
    }
return

; AutoBridging
!b::
    #IfWinActive ahk_class GLFW30 {
        autoBridge := true
        Loop, 250 {
            if (autoBridge) {
                Send {LShift down}
                sleep 10 ; Optional small delay
                Send {s down}
                Click, Right, Down
            }
            Click, Right, Up
            Send {s up}
            sleep 10 ; Optional small delay
            Send {LShift up}
            sleep 100
            break
        }
    }
return



; Three bugs: First bug, Toggling doesn't work, second bug, bridging you can't combine sent keys do some research, third bug, the extended automine doesn't work