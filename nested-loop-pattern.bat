@echo off
setlocal enabledelayedexpansion
echo ==============
echo  NestedLoop 
echo ==============

for  /l %%i in (1,1,3) do (
    rem Outer loop (ROWS)
    set "line="
    for /l %%j in (1,1,3) do (
        rem Inner Loop (Coloumn)
        set "line=!line!* "
    )
    echo !line!
)
pause