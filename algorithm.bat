@echo off
REM MODIFY THE ALGORITHM TO PRODUCE A MORE PRECISE CALCULATION OF PI
echo MODIFY THE ALGORITHM TO PRODUCE A MORE PRECISE CALCULATION OF PI > report.txt
echo 3.14159 >> report.txt

REM UNCOMMENT THE FOLLOWING LINE TO GET A MORE PRECISE CALCULATION OF PI
REM Windows does not have bc by default; you would need a tool like PowerShell or Python
REM powershell -Command "[math]::Round([math]::PI, 1000) | Out-File -Encoding ASCII report.txt"

