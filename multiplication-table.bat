@echo off

setlocal enabledelayedexpansion
echo ==================
echo Multiplication Table
echo ==================

set /p number=Enter the number :

for /l %%i in (1,1,10) do (
    set /a result=number*%%i
    echo !number! x %%i = !result!
)
pause