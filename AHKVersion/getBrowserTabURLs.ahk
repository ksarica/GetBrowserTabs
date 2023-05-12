; Check if any browser is running
IfWinExist ahk_exe chrome.exe || IfWinExist ahk_exe firefox.exe || IfWinExist ahk_exe msedge.exe || IfWinExist ahk_exe opera.exe
{
    ; Get all tab URLs
    i := 0
    urlList := [] 
    Loop
    {
        clipboard := ""     
        ; MsgBox % "Starting... i value: " . i . " clipboard: " . clipboard
        ; Select browser window
        IfWinExist ahk_exe chrome.exe
        {
            ; MsgBox Chrome browser is active !
            WinActivate ahk_exe chrome.exe
        }
        Else IfWinExist ahk_exe msedge.exe
        {
            ; MsgBox Microsoft Edge browser is active !
            WinActivate ahk_exe msedge.exe
        }
        Else IfWinExist ahk_exe opera.exe
        {
            ; MsgBox Opera browser is active !
            WinActivate ahk_exe opera.exe
        }
        Else IfWinExist ahk_exe firefox.exe
        {
            ; MsgBox Mozilla Firefox browser is active !
            WinActivate ahk_exe firefox.exe
        }
        Else
        {
            ; MsgBox 0 Browser active ???
        }
        
        ; Navigate to next tab or exit loop if last tab reached
        ; MsgBox % "Tab Navigation will be applied !!! i value: " . i 
        If i > 0
        {
            ; MsgBox Sending page down
            Send ^{PgDn}
        }
        Else
        {
            ; MsgBox Sending CTRL + 1 
            Send ^1
        }

        Sleep 300 
        ; MsgBox Waiting 300 ms to wait page load...

        ; Navigate to URL bar
        Send ^l
        Sleep 50

        ; Select URL
        Send ^a
        
        ; Copy URL to clipboard
        Send ^c

        ; MsgBox URL copied !
        ; MsgBox % "current urlList: " . urlList . " clipboard: " . clipboard
 
        ; Append URL to list variable if not already in list
        If !InStr(urlList, clipboard, true)
        {
            urlList .= clipboard "`n"
            ; MsgBox % "New URL ! Adding..." . clipboard 
        }
        Else
        {
            ; MsgBox % "Repeated URL!" . urlList . " == " . clipboard  
            break
        }
        i := i + 1
        ; MsgBox End of the loop...
    }
    A_Clipboard := urlList

    ; Save URLs to file on desktop
    FileAppend %urlList%, %A_Desktop%\URLs.txt
}
else
{
    ; MsgBox There is no active browser.
}
