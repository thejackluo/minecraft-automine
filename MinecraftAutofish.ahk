; This is a macro for autofishing
windowTitle := "Minecraft" ;
autoFish := false

; autofish (alt + f) 
!m::
    autoFish := true
    Loop {
        if (autoFish) {
            Click, Right, Down
        } else {
            Click, Right, Up
            break
        }
        sleep 100 ;
    }
return

; Cancel all actions
!x::
    autoFish := false
return