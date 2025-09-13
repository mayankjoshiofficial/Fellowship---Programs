@echo off
setlocal enabledelayedexpansion

echo ============
echo Flip coin runtime
echo ============

set /p number=Enter the number of flips: 

rem Initialize counters
set /a head=0
set /a tail=0

rem Main loop
for /l %%i in (1,1,%number%) do (
    set /a coin=!random! %% 2
    if !coin! EQU 0 (
        set /a head+=1
        echo Flip %%i: Head
    ) else (
        set /a tail+=1
        echo Flip %%i: Tail
    )
)

echo ---------------------------
echo Total Heads: !head!
echo Total Tails: !tail!
echo ---------------------------

rem Decide winner (nested if is safest)
if !head! GTR !tail! (
    echo Head WINS!!!
) else (
    if !tail! GTR !head! (
        echo Tail WINS!!!
    ) else (
        echo It's a DRAW!!!
    )
)

rem Calculate percentages safely
if %number% GTR 0 (
    set /a headPercent=(head*100)/number
    set /a tailPercent=(tail*100)/number

    echo Heads Percentage: !headPercent!%%
    echo Tails Percentage: !tailPercent!%%
)
pause