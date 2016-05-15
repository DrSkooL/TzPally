@echo off
Set /p SaveL="Where Would You Like Your Backup To Save ? = "
Set /p BackupT="Enter Backup Target Folder = "
set /p FoldN="Name Of Your Back Up ="
set /p Time="Enter Back Restart Interval In Seconds (30 Mins = 1800) = "
echo Timer Set To %Time%
md %SaveL%\%FoldN%
Echo Begining Backups 
Echo Running Now
:start
xcopy "%BackupT%" "%SaveL%\%FoldN%" /S /C /R /H /I /K /Y /V
Timeout /T %Time% /nobreak
goto start