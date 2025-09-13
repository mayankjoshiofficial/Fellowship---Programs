@echo off 
setlocal enabledelayedexpansion
echo ==================
echo     Factorial
echo ==================


set /p number=enter the number: 
set /a fact=1
for /l %%i in (1,1,%number%) do (
    set /a fact=!fact!*%%i
    echo Step %%i: fact = !fact!
)
echo =======================
echo final answer: factorial of !number! =!fact!
pause