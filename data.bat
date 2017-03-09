@echo off
title data save
color 1f
::#################################################

:one
cls
set /p fname=What is Your First Name?
set /p year=What Year Were Your Born?
echo.
echo.
if exist %fname%%year%.sav (
	for /f %%a in (%fname%%year%.sav) do set %%a
	goto display
) else (
	(echo) > %fname%%year%.sav
	goto enterinfo
)
::#########################################

:display
cls
echo Your Fist Name Is       %fname%
echo Year Your Born Is       %year%
echo Your Favorite Color Is  %favcolor%
echo Your Favorite Season Is %favseason%
echo Your Age Is             %age%
echo Your Favorite Snack Is  %favsnck%
pause>nul
exit
::#########################################

:enterinfo
cls
set /p favcolor=What is Your Favourite Color?
set /p favseason=What is Your Favorite Season?
set /p age=How Old Are Your?
set /p eyecolor=What is Your Eye Color?
set /p favsnck=What is Your Favorite Snack?
(echo favcolor=%favcolor%) >> %fname%%year%.sav
(echo favseason=%favseason%) >> %fname%%year%.sav
(echo age=%age%) >> %fname%%year%.sav
(echo eyecolor=%eyecolor%) >> %fname%%year%.sav
(echo favsnck=%favsnck%) >> %fname%%year%.sav
echo.
echo.
echo Your Information Has Been Saved! 
pause>nul
exit
::#########################################


