Write-Host "Downloading and Installing New Update" -ForegroundColor Yellow
Start-BitsTransfer "https://github.com/BrandonWanHuanSheng/Holy-Week/blob/main/DataUpdater/40 Day Fast Updater.csv" "%USERPROFILE%\Documents\40 Day Fast Updater.csv"
Start-BitsTransfer "https://github.com/BrandonWanHuanSheng/Holy-Week/blob/main/DataUpdater/Ash Wed Updater.csv" "%USERPROFILE%\Documents\Ash Wed Updater.csv"
Start-BitsTransfer "https://github.com/BrandonWanHuanSheng/Holy-Week/blob/main/DataUpdater/Palm Sunday Updater.csv" "%USERPROFILE%\Documents\Palm Sunday Updater.csv"
Start-BitsTransfer "https://github.com/BrandonWanHuanSheng/Holy-Week/blob/main/DataUpdater/Holy Monday Updater.csv" "%USERPROFILE%\Documents\Holy Monday Updater.csv"
Start-BitsTransfer "https://github.com/BrandonWanHuanSheng/Holy-Week/blob/main/DataUpdater/Holy Tuesday Updater.csv" "%USERPROFILE%\Documents\Holy Tuesday Updater.csv"
Start-BitsTransfer "https://github.com/BrandonWanHuanSheng/Holy-Week/blob/main/DataUpdater/Holy Wednesday Updater.csv" "%USERPROFILE%\Documents\Holy Wednesday Updater.csv"
Start-BitsTransfer "https://github.com/BrandonWanHuanSheng/Holy-Week/blob/main/DataUpdater/Holy Thursday Updater.csv" "%USERPROFILE%\Documents\Holy Thursday Updater.csv"
Start-BitsTransfer "https://github.com/BrandonWanHuanSheng/Holy-Week/blob/main/DataUpdater/Good Friday Updater.csv" "%USERPROFILE%\Documents\Good Friday Updater.csv"
Start-BitsTransfer "https://github.com/BrandonWanHuanSheng/Holy-Week/blob/main/DataUpdater/Holy Saturday Updater.csv" "%USERPROFILE%\Documents\Holy Saturday Updater.csv"
Start-BitsTransfer "https://github.com/BrandonWanHuanSheng/Holy-Week/blob/main/DataUpdater/Easter Updater.csv" "%USERPROFILE%\Documents\Easter Updater.csv"
Applying Update to "Easter (No Date).xlsx"
Write-Host "The update has been downloaded. Restart Excel App to finish applying the update" -ForegroundColor Yellow
Applying Update to "%USERPROFILE%\Documents\Easter (No Date).xlsx"
New-Item "History Update Easter.txt"
Set-Content "History Update Easter.txt" -Value1 "Update from {$variable_year} to {$next_variable_year}"
Write-Output "The update were installed successfully" -Foreground Green
New-Item "Remove DataUpdater File.cmd"
Set-Content "Remove DataUpdater File.cmd" -value1 "del /s /f /q "*%USERPROFILE%\Documents\Updater.csv* -value2 "del Remove DataUpdater File.cmd"
Cmd.exe /C "%USERPROFILE%\Remove DataUpdater File.cmd"
