Script_Path = "F:\Shortcut Windows"

Monitor_1_ID = "MSI3CA8"
Monitor_2_ID = "AOC2702"
Monitor_3_ID = "SAM713F"
Monitor_4_ID = "GWD1580"



; ctrl + alt + 1 to set primary monitor
^!1::
Run MultiMonitorTool /SetPrimary %Monitor_1_ID%
Return

; ctrl + alt + 2 to set primary monitor
^!2::
Run MultiMonitorTool /SetPrimary %Monitor_2_ID%
Return

; ctrl + alt + 3 to set primary monitor
^!3::
Run MultiMonitorTool /SetPrimary %Monitor_3_ID%
Return

; ctrl + alt + 4 to set primary monitor
^!4::
Run MultiMonitorTool /SetPrimary %Monitor_4_ID%
Return



; ctrl + alt + 5 to switch to TV audio
^!5::
Run nircmd setdefaultsounddevice Q80A 1
Return

; ctrl + alt + 6 to switch to Monitor audio
^!6::
Run nircmd setdefaultsounddevice Casse 1
Return



; ctrl + alt + 7 to enable all monitors
^!7::
Run MultiMonitorTool /enable %Monitor_1_ID% %Monitor_2_ID% %Monitor_3_ID% %Monitor_4_ID%
Run MultiMonitorTool /LoadConfig %Script_Path%\allEnabled.cfg
Return

; ctrl + alt + 8 for advanced TV mode
^!8::
Run MultiMonitorTool /disable %Monitor_1_ID% %Monitor_2_ID% %Monitor_4_ID%
Run MultiMonitorTool /enable %Monitor_3_ID%
Send {Ctrl down} {Alt down} 5
Return



; ctrl + alt + 9 for TV mode
^!9::
Send {Ctrl down} {Alt down} 5
Send {Ctrl down} {Alt down} 3
Return

; ctrl + alt + 0 for PC mode
^!0::
Send {Ctrl down} {Alt down} 6
Send {Ctrl down} {Alt down} 1
Return