@echo off
echo ==========================
echo Random number is: %random%
echo ==========================


:: Lets make it Flip coin using random function (built-in)

set /a coin=%random% %% 2

if %coin%==0 (
	echo heads!!
) else (
echo tails !!
)
pause