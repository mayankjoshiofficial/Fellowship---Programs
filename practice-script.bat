@echo off
setlocal enabledelayedexpansion
echo ===============
echo     REVISION : LOOPS , IF-ELSE - Multicplication
echo ================

@REM EVEN/ODD =========================

@REM set /p number=Enter the number:
@REM set /a remainder=number%%2
@REM if !remainder! EQU 0 (
@REM     echo !number! is EVEN!!
@REM ) else (
@REM     echo !number! is ODD!!
@REM )

@REM pause


@REM @REM Reverse table ===============

@REM set /p number=Enter the number:
@REM for /l %%i in (10,-1,1) do (
@REM     set /a result=number*%%i
@REM     echo !number! x %%i = !result!
@REM )
@REM pause



@REM Sum of all===========================


set /p number=enter the number : 
set /a sum=0
for /l %%i in (1,1,%number%) do (
    set /a sum=!sum!+%%i
)

echo total Sum = !sum!
pause







