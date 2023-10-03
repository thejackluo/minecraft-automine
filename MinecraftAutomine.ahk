autoMine := false ; Declare a flag variable to control the state of the script
windowTitle := "Minecraft" ; Define the title of the window to monitor (this is a part of Minecraft's window title)

; When Alt + Z is pressed, start automining 
!z::
    autoMine := true
    ; Start a loop for auto-mining
    Loop {
        ; Check the flag inside the loop
        if (autoMine) {
            Send "click down"         ; Hold down left mouse button
            Send {w down}"        ; Hold 'W' to move forward
            
        } else {
            Send {Click up}
            Send {w up}
            break
        }
        sleep 100 ; Sleep for 100 milliseconds before the loop iterates again
    }
return

; When Alt + X is pressed, start automining 
!x::
    Send {Click up}
    Send {w up}
    autoMine := false
return