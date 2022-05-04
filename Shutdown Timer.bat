@echo off
:a
cls
color 1f
echo -------------------Timing-------------------
echo.
echo In what magnitude will you insert the value?.
echo.
echo 1. Hours
echo.
echo 2. Minutes
echo.
echo 3. Seconds
echo.
echo 4. CANCEL
echo.
echo 5. EXIT
echo --------------------------------------------
set /p magnitude=
	if %magnitude%==1 goto h
	if %magnitude%==2 goto min
	if %magnitude%==3 goto s
	if %magnitude%==4 goto cnc
	if %magnitude%==5 exit
:h
cls
echo -------------------Hours-------------------
echo.
echo        Insert the value in hours
echo.
echo -------------------------------------------
set /p hours=
set /a hs= %hours%*3600
pause
shutdown /s /t %hs%
goto a

:min
cls
echo -------------------Minutes-------------------
echo.
echo        Insert the value in minutes
echo.
echo ---------------------------------------------
set /p minutes=
set /a ms= %minutes%*60
pause
shutdown /s /t %ms%
goto a

:s
cls
echo -------------------Seconds--------------------
echo.
echo        Insert the value in seconds
echo.
echo ----------------------------------------------
set /p seconds=
pause
shutdown /s /t %seconds%
goto a

:cnc
cls
echo -------------------Cancel Menu---------------------------
echo.
echo     Here will you can cancel the system shutdown
echo.
echo ---------------------------------------------------------
pause
shutdown /a
goto a