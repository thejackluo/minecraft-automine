; Declare a flag variable to control the state of the script
autoMine := false

; Define the title of the window to monitor (this is a part of Minecraft's window title)
windowTitle := "Minecraft"

; When F1 is pressed, start auto-mining
!z::
    ; Set the flag to true
    autoMine := true
    
    ; Start a loop for auto-mining
    Loop
    {
        ; Check the flag inside the loop
        if (!autoMine)
            break
            
        ; Check if the Minecraft window is active
        if (WinActive("ahk_exe " . windowTitle))
        {
            ; Hold down left mouse button
            Click("down")
            
            ; Hold 'W' to move forward
            Send("{w down}")
        }
        else
        {
            ; Release the left mouse button and 'W' key if Minecraft window is not active
            Click("up")
            Send("{w up}")
        }
        
        ; Sleep for 100 milliseconds before the loop iterates again
        Sleep(100)
    }
return

; When F2 is pressed, stop auto-mining
!x::
    ; Release the left mouse button
    Click("up")
    
    ; Release the 'W' key
    Send("{w up}")
    
    ; Set the flag to false to stop the loop
    autoMine := false
return