@echo off 
setlocal enabledelayedexpansion
echo ==================
echo Sum of Even number
echo ==================

set /p number=Enter the number: 
set /a sum=0

for /l %%i in (1,1,%number%) do (
    set /a remainder=%%i%%2
    if !remainder! EQU 0 (
        set /a sum=!sum!+%%i
    )
)

echo total sum of Even numbers =!sum!
pause