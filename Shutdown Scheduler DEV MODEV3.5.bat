@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
:restart01

title Shutdown Scheduler By SahiDemon
Color 5F & Mode con cols=150 lines=20

set /a rand1=%random% %% 16
set HEX=0123456789ABCDEF
call set hexcolors=%%HEX:~%rand1%,1%%%%HEX:~%rand2%,1%%
color %hexcolors%
echo *********************************************************************************************************************************************
echo ****************************************     Shutdown Scheduler Command Prompt v3.1     *****************************************************
echo **********************************************     Copyright (c) 2021 SahiDemon      ********************************************************
echo *********************************************************************************************************************************************
PING 127.0.0.1 -n 2 > NUL
echo                  _________-----_____
echo        ____------           __      ----_
echo  ___----             ___------              \
echo     ----________        ----                 \
echo                -----__    ^|             _____)    
echo                     __-                /     \
echo         _______-----    ___--          \    /)\
echo   ------_______      ---____            \__/  / 
echo                -----__    \ --    _          /\        
echo                       --__--__     \_____/   \_/\    
echo                               ---^|   /          ^|     
echo                                  ^| ^|___________^|     _____       __    _ ____     
echo                                  ^| ^| ((_(_)^| )_)    / ___/____ _/ /_  (_) __ \___  ____ ___  ____  ____ 
echo                                  ^|  \_((_(_)^|/(_)   \__ \/ __ `/ __ \/ / / / / _ \/ __ `__ \/ __ \/ __ \
echo                                   \             (  ___/ / /_/ / / / / / /_/ /  __/ / / / / / /_/ / / / /
echo                                    \_____________)/____/\__,_/_/ /_/_/_____/\___/_/ /_/ /_/\____/_/ /_/  Software By SahiDemon 3.1v
PING 127.0.0.1 -n 3 > NUL
Set /A "index = 1"
SET /A "count = 50"

:colors
Color 0 
if %index% leq %count% (
   
   SET /A "index = index + 1"
   set /a rand1=0
   set /a rand2=%random% %% 16
   set HEX=0123456789ABCDEF
   call set hexcolors=%%HEX:~%rand1%,1%%%%HEX:~%rand2%,1%%
   color %hexcolors%
   PING 127.0.0.1 -n 1 > NUL
   goto colors
) 

Color 4F
PING 127.0.0.1 -n 2 > NUL


Color 3F & MODE con:cols=80 lines=7
shutdown /a 
cls
if errorlevel 1 goto abort
Echo Terminated Scheduled Processes
PING -n 2 127.0.0.1>nul 

:abort
cls
Echo Optimizing The Application  
PING -n 2 127.0.0.1>nul 

:cls
cls
goto :choice5

Color 3F & MODE con:cols=80 lines=7 
:choice5
echo Select A Option
echo Shutdown  = S
echo Hibernate = H
echo Sleep     = SL
echo Restart   = R
set /P n=  Preferred Option [S/H/SL/R/E]?

if /I "%n%" EQU "S"  goto :try_again 
if /I "%n%" EQU "H"  goto :hibernate
if /I "%n%" EQU "SL" goto :sleep
if /I "%n%" EQU "E"  goto :EXIT
if /I "%n%" EQU "R"  goto :torestart
cls
echo Try Again Using (Shutdown/Hibernate/Sleep/Restart/Exit))type = [S/H/SL/E] 
goto :choice5
:hibernate 
cls
:hibe

POWERCFG /HIBERNATE ON
echo Shedule Your Hibenation
set /p choice= Enter Time in Minutes(Min):
if /I "%choice%" EQU "B"  goto :cls
echo %choice%|findstr /r "[^0-9]" && (     
cls

echo Want Go Back to Menu:B
echo Please Enter A Vaid Time In Minutes
goto :hibe
)

cmd /c exit /b %choice%
set /a choice=%errorlevel%

:hibecode
	cls
	set /a mod=60
	set /a mod*=%choice%
	Set /a mod=%mod%-10
	cls
	echo Hibenate Request In Progress..
	PING -n 2 127.0.0.1>nul 
	echo Do Not Close The Program In This Process! Close The Application To Abort.
	PING -n %mod% 127.0.0.1>nul
	cls
	echo Proccessing..
	start "" cmd /c "Color 3F && MODE con:cols=80 lines=3&cls&echo Hibenate Request Attempting Within 10 Seconds!&echo(&PING -n 9 127.0.0.1>nul&exit" rem pop up window
	PING -n 9 127.0.0.1>nul
	echo SUCCESS! Hibernate Request Attempted
	PING -n 3 127.0.0.1>nul
	shutdown /h
	echo Hibernating..
	PING -n 3 127.0.0.1>nul
	
cls


:torestart
cls
echo Shedule Your Restart
set /p choicer= Enter Time in Minutes(Min) :
if /I "%choice%" EQU "B"  goto :cls
echo %choice%|findstr /r "[^0-9]" && (     
cls

echo Want Go Back to Menu:B
echo Please Enter A Vaid Time In Minutes
goto :torestart
)

cmd /c exit /b %choicer%
set /a choice=%errorlevel%
:res
set /a mod=60
set /a mod*=%choicer%
shutdown /r /t %mod%  /c "Restart In progess By Shutdown Scheduler"
cls
echo Restart Scheduled! Press Enter To Abort.
echo Elapsed time to Shutdown :
timeout /T %mod% 
echo SUCCESS! Restart Request Attempted
PING -n 2 127.0.0.1>nul 
echo Proccess Switched To Background Mode
PING -n 2 127.0.0.1>nul 
echo REDIRECTING...
PING -n 2 127.0.0.1>nul 
cls
echo Forwarding To Abort..
PING -n 2 127.0.0.1>nul 
cls

goto :leaveTheLoop


:sleep
cls
:sleeping
echo Shedule Your Sleep 
set /p choice= Enter Time in Minutes(Min):
if /I "%choice%" EQU "B"  goto :cls
echo %choice%|findstr /r "[^0-9]" && (     
cls

echo Want Go Back to Menu:B
echo Please Enter A Vaid Time In Minutes
goto :sleeping
)

cmd /c exit /b %choice%
set /a choice=%errorlevel%

:sleepcode
	cls
	set /a mod=60
	set /a mod*=%choice%
	Set /a mod=%mod%-10
	cls
	echo Sleep Request In Progress..
	PING -n 2 127.0.0.1>nul
	echo Do Not Close The Program In This Process! Close The Application To Abort..
	PING -n %mod% 127.0.0.1>nul
	cls
	echo Proccessing..
	start "" cmd /c "Color 3F && MODE con:cols=80 lines=3&cls&echo Sleep Request Attempting Within 10 Seconds!&echo(&PING -n 9 127.0.0.1>nul&exit"
	PING -n 9 127.0.0.1>nul
	echo SUCCESS! Sleep Request Attempted
	PING -n 3 127.0.0.1>nul
	RUNDLL32.EXE powrprof.dll,SetSuspendState 0,1,0
	echo Sleeping The Device..
	PING -n 3 127.0.0.1>nul

:try_again
cls
:shut
echo Shedule Your Shutdown
set /p choice= Enter Time in Minutes(Min) :
if /I "%choice%" EQU "B"  goto :cls
echo %choice%|findstr /r "[^0-9]" && (     
cls

echo Want Go Back to Menu:B
echo Please Enter A Vaid Time In Minutes
goto :shut
)

cmd /c exit /b %choice%
set /a choice=%errorlevel%
:shutdown
	set /a mod=60
	set /a mod*=%choice%
	shutdown /s /t %mod%  /c "Shutdown In progess By Shutdown Scheduler"
cls
echo Shutdown Scheduled! Press Enter To Abort.
echo Elapsed time to Shutdown :
timeout /T %mod% 
echo SUCCESS! Shutdown Request Attempted
PING -n 2 127.0.0.1>nul 
echo Proccess Switched To Background Mode
PING -n 2 127.0.0.1>nul 
echo REDIRECTING...
PING -n 2 127.0.0.1>nul 
cls
echo Forwarding To Abort..
PING -n 2 127.0.0.1>nul 
cls
:leaveTheLoop
Color CF & MODE con:cols=80 lines=5
:choice

set /P c=         Confirm To Abort (YES/NO/EXIT)[Y/N/E]?
if /I "%c%" EQU "N" goto :Schedule
if /I "%c%" EQU "Y" goto :ask
if /I "%c%" EQU "E" goto :EXIT
cls
echo Try Again Using (YES/NO/EXIT )type = [Y/N/E]
goto :choice

cls
:somewhere
Color 4F & MODE con:cols=80 lines=5
cls
echo Scheduled Shutdown Will Continue
PING -n 3 127.0.0.1>nul 
cls
echo  Exiting Without Aborting... 
PING -n 3 127.0.0.1>nul 
exit /b

:ask
shutdown /a
cls
echo Aborted The Process By The User.  
rem arbort
PING -n 3 127.0.0.1>nul 
goto :Schedule

:Schedule
cls
Color 3F & MODE con:cols=80 lines=5
:choice1
set /P d=         Restart Scheduler? [Y/N]?
if /I "%d%" EQU "Y" goto :restart
if /I "%d%" EQU "N" goto :somewhere
cls
echo Try Again Using (YES/NO/EXIT )type = [Y/N/E]
goto :choice1
:restart

Color 4F & MODE con:cols=80 lines=5
shutdown /a
cls
echo Restarting... 
PING -n 2 127.0.0.1>nul 
goto :restart01 




:EXIT
Color 4F & MODE con:cols=80 lines=5
shutdown /a
cls
echo Aborting and Exiting... 
PING -n 3 127.0.0.1>nul 
exit /b

	

