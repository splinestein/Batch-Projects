@if (@CodeSection == @Batch) @then

@echo off

setlocal enabledelayedexpansion

rem Script that sends messages to new Roblox users.
start /d "C:\Program Files\Mozilla Firefox\firefox.exe" www.google.com

SET /A start_id = 1984520

for /L %%v in (1,1,5) do (
    set /a start_id+=1
    echo !start_id! is the current new recipient.
    start "Recipient" "https://www.roblox.com/messages/compose?recipientId=!start_id!" 
    timeout /t 5 /nobreak
    echo %%v messages delivered.
)

endlocal

@end
