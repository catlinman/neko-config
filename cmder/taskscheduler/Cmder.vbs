Dim WinScriptHost
Set WinScriptHost = CreateObject("WScript.Shell")
WinScriptHost.Run Chr(34) & "C:\Program Files\cmder\Cmder.bat" & Chr(34), 0
Set WinScriptHost = Nothing