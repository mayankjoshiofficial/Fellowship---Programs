@echo off
setlocal enabledelayedexpansion
echo ==============
echo  NestedLoop : Printing numbers in triangle
echo ==============


set /p number=enter the number : 

for /l %%i in (1,1,!number!) do (
    set "line="
    for /l %%j in (1,1,%%i) do (
        set "line=!line! %%j"
    )
    echo !line!
)
pause