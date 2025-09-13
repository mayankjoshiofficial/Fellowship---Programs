@echo off  
setlocal enabledelayedexpansion
echo ============
echo Watching the flip coin at runtime
echo ============

set /p number=enter the no. of flips :
set /a head=0
set /a tail=0

for /l %%i in (1,1,!number!) do (
    set /a coin=!random! %% 2
    if !coin! EQU 0 (
        set /a head+=1
        echo Flip %%i: Head 
    ) else  (
        set /a tail+=1
        echo Flip %%i: Tail
    )
)

echo Total Heads : !head!
echo Total Tails : !tail!


if !head! GTR !tail! (
    echo Head WINS!!!
) else (
    if !tail! GTR !head! (
        echo Tail WINS!!!
    ) else (
        echo It's a DRAW!!!
    @REM the loop is  in odd like in 5 it can't be draw.. but if we use any even value it will work.... just for understanding
    )
)



:: Calculate percentages
set /a headPercent=(head*100)/number
set /a tailPercent=(tail*100)/number

echo Heads Percentage: !headPercent!%%
echo Tails Percentage: !tailPercent!%%

pause