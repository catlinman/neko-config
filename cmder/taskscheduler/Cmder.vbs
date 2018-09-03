
Set FileSystem = CreateObject ("Scripting.FileSystemObject")

CmderPath = "C:\Program Files (x86)\Cmder\taskscheduler\Cmder.bat"

If FileSystem.Fileexists(CmderPath) Then
    Dim WinScriptHost
    Set WinScriptHost = CreateObject("WScript.Shell")
    WinScriptHost.Run Chr(34) & CmderPath & Chr(34), 0
    Set WinScriptHost = Nothing

Else
    WScript.Echo "Cmder Task: Please set the correct path to the batch file."

End If