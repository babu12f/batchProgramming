@echo off
title intro
color 1f
::#################################################

:one
cls
echo Enter Your First Name : 
echo.
echo.
set /p fname=first name: 
echo.
echo.
echo Enter Your Last Name : 
echo.
echo.
set /p lname=">> " 
echo.
echo. 
echo Hello Nice To Meet You %fname% %lname%

echo.
echo. 
set /a total=%fname% + %lname%

echo %total%

pause>nul
goto two
::#################################################

:two
cls
set /a total=%total% / 3
echo %total%

pause>nul

