@echo off
setlocal enabledelayedexpansion
echo ==========
echo Arithmetic with Loop /a
echo ==========

::  this ! is used inside the loop , cause the value is changing per operation , we use % outside the loop where the value doesnt change

for /l %%i in (1,1,5) do (
    set /a square=%%i*%%i
    echo %%i Square = !square!  
)
pause
