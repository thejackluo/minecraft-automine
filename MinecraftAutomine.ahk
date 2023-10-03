autoMine := false ; Declare a flag variable to control the state of the script
windowTitle := "Minecraft" ; Define the title of the window to monitor (this is a part of Minecraft's window title)

; When Alt + Z is pressed, start automining 
!z::
    autoMine := true ; Set the flag to true
    
    ; Start a loop for auto-mining
    Loop {
        ; Check the flag inside the loop
        if (autoMine) {
            Click("down")         ; Hold down left mouse button
            Send("{w down}")         ; Hold 'W' to move forward
            
        } else {
            Click("down")
            Send("{w down}")
            break
        }
        Sleep(100) ; Sleep for 100 milliseconds before the loop iterates again
    }
return

; When Alt + X is pressed, start automining 
!x::
    Click("up") ; Release the left mouse button
    Send("{w up}") ; Release the 'W' key
    autoMine := false ; Set the flag to false to stop the loop
return