@echo off
echo ==============
echo If-Else check number
echo ==============

set /p Number=Enter the number:

if "%Number%" GEQ "50" (
	if "%Number%" EQU "50" (
		echo Both are Equal
	) else (
		echo Number is Greater than 50
	)
) else (
	echo Number is smaller than 50
)
pause