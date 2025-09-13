@echo off
echo =================
echo day 4 - flip coin
echo =================
setlocal enabledelayedexpansion

set /a head=0
set /a tail=0

for /l %%i in (1,1,5) do (
    set /a coin=!random! %% 2

    if !coin! EQU 0 (
        set /a head+=1
    ) else (
        set /a tail+=1
    )
)

echo Total Heads: !head!
echo Total Tails: !tail!

if !head! GTR !tail! (
    echo Head WINS!!!
) else if !tail! GTR !head! (
    echo Tail WINS!!!
) else (
    echo It's a DRAW!!!
)

pause
