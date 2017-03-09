@echo off
title My First Batch Game
color 2f
::###############################

:one
cls
echo What is 2 plus 2?
echo.
echo.
echo 1) 7
echo 2) 4
echo 3) 12
echo 4) 2
echo.
echo.
set /p ch1=Choice:
echo.
echo.
if not defined ch1 (
	goto one
)
if %ch1%==1 goto no
if %ch1%==2 goto yes
if %ch1%==3 goto no
if %ch1%==4 goto no
echo Invalid Choice, Plese Try Again!
pause>nul
goto one
::###############################

:no 
cls
echo Sorry, That Answer Is Incorrect
echo.
echo.
echo The Correct Answer was 2, Which 4
pause > nul
goto two
::###############################

:yes
cls
echo You Are Correct! Good Job!
pause>nul
goto two
::###############################

:two
cls
echo What is 100 divided by 2 ?
echo.
echo.
echo 1) 25
echo 2) 15
echo 3) 50
echo 4) 75
echo.
echo.
set /p ch2=Choice:
echo.
echo.
if not defined ch2 (
	goto two
)
if %ch1%==1 goto no2
if %ch1%==2 goto no2
if %ch1%==3 goto yes2
if %ch1%==4 goto no2
echo Invalid Choice, Plese Try Again!
pause>nul
goto two
::###############################

:no2 
cls
echo Sorry, That Answer Is Incorrect
echo.
echo.
echo The Correct Answer was 3, Which 50
pause > nul
goto two
::###############################

:yes2
cls
echo You Are Correct! Good Job!
pause>nul
goto two