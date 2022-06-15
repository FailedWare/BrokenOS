@echo off
::Set up
title BrokenOS / User: X / Startup
cls
color 0A
echo F
timeout 0 >nul
cls
color 0B
echo Fa
timeout 0 >nul
cls
color 0C
echo Fai
timeout 0 >nul
cls
color 0A
echo Fail
timeout 0 >nul
cls
color 0B
echo Faile
timeout 0 >nul
cls
color 0C
echo Failed
timeout 0 >nul
cls
color 0A
echo FailedW
timeout 0 >nul
cls
color 0B
echo FailedWa
timeout 0 >nul
cls
color 0C
echo FailedWar
timeout 0 >nul
cls
color 0A
echo FailedWare
timeout 0 >nul
cls
color 0B
echo FailedWar
timeout 0 >nul
cls
color 0C
echo FailedWa
timeout 0 >nul
cls
color 0A
echo FailedW
timeout 0 >nul
cls
color 0B
echo Failed
timeout 0 >nul
cls
color 0C
echo Faile
timeout 0 >nul
cls
color 0A
echo Fail
timeout 0 >nul
cls
color 0B
echo Fai
timeout 0 >nul
cls
color 0C
echo Fa
timeout 0 >nul
cls
color 0F
echo F
timeout 0 >nul
cls
goto Presetup

:presetup
echo.
echo [PRE-SET UP]
echo.
echo Do you have a .bu file on the brokenos folder?
echo.
set /p bu=[Y/N]:
if %bu% == Y goto checkBU
if %bu% == N goto setup
if %bu% == y goto checkBU
if %bu% == n goto setup

:checkBU
title checkBU
cls
echo Enter the name of the file! (dont include .bu)
set /p buname=File name: 
if exist "%buname%.bu" goto loadbu
echo %buname%.bu doesnt exist!
pause
goto setup

:loadbu
cls
< %buname%.bu (
set /p user=
set /p clr=
)
echo loaded!
pause
cls
goto menu

:setup
title BrokenOS / User: X / Startup
echo [PLEASE SET UP BrokenOS]
echo.
echo Enter a name!
set /p user=: 
title BrokenOS / User: %user% / Startup
echo.
echo Hello, %user%!
echo.
echo [       COLOR        ]
echo [CAN BE CHANGED LATER]
echo.
echo 01 - navy
echo 02 - green
echo 03 - teal / cyan
echo 04 - maroon
echo 05 - purple
echo 06 - olive
echo 07 - silver
echo 08 - gray
echo 09 - blue
echo 0A - lime
echo 0B - aqua
echo 0C - red
echo 0D - fuchisa
echo 0E - yellow
echo 0F - white
echo.
set /p clr=: 
color %clr%
cls
echo Complete! (Color can be changed in options)
echo.
pause
goto quicksave

:quicksave
title SAVE UR FUCKIN DATA!
cls
echo Please name the save file!
set /p filename=Save Name: 
(
echo %user%
echo %clr%
)>%filename%.bu
echo Saved! Welcome to BrokenOS!
goto menu

:menu
title BrokenOS / User: %user% / Menu
cls
color %clr%
title BrokenOS / User: %user%
echo.
echo [ BrokenOS V.9 ]
echo [ EXPIEMENTAL  ]
echo.
echo [ Welcome, %user%! ] 
echo.
echo To look at the updates type in 'changelog'
echo.
echo Type 'help' for Commands and help!
echo.
set /p loc=Goto: 
::Help/Important LOC's
if %loc% == save goto save
if %loc% == help goto help
if %loc% == changelog goto changelog
if %loc% == exit goto exit
if %loc% == time goto avacTime

::AVAC
if %loc% == avac(ipc) goto avacIPC
::This just boots ipconfig
if %loc% == avac(time) goto avacTime
::If you are actually unironically using avac(time) fuck off.

::Ping LOC
if %loc% == ping goto ping
::For the people who are damn lazy to go into their Terminal and type in ping <ip>

::Customize LOC's
if %loc% == clrChange goto clrChange
if %loc% == changeUser goto changeUser

::Secret LOC's
if %loc% == SecretCode goto SecretCode
echo Invalid option!
pause
cls
goto menu

:changelog
BrokenOS / User: %user% / Changelog
cls
echo [ CHANGELOGS ]
echo [ VERSION 9  ]
echo.
echo Quality of life update, some commands are now easier to type in!
echo Changes to title depending on where your located
echo Fixed possible crashes during the changing user process
echo Fixed being forced to make a savefile when going to the time menu
echo Removed BOS Prompt (Fuck feature bloat)
echo.
pause
goto menu

:avacTime
cls
title BrokenOS / User: %user% / Time
date /t
pause
cls
goto menu

:save
BrokenOS / User: %user% / Save
cls
echo Name the savefiles name. (dont use your original one)
set /p savefilename=Save Name: 
(
    echo %user%
    echo %clr%
)>%savefilename%.bu
pause
cls
goto menu

:SecretCode
title %user% is a Wizzard!
echo.
echo :moyai:
echo.
pause
cls
goto menu

:changeUser
BrokenOS / User: %user% / Change User
cls
echo.
echo ==[ Change Username ]==
echo ==[ NO GOING BACK   ]==
echo.
echo Set a new username %user%. (Unless you dont wanna be called %user% anymore)
echo.
set /p user=Change your Name!: 
echo.
echo Name set!
pause
cls
goto menu

:clrChange
BrokenOS / User: %user% / Color Change
cls
echo.
echo ==[ COLOR CHANGING ]==
echo.
echo 01 - navy
echo 02 - green
echo 03 - teal / cyan
echo 04 - maroon
echo 05 - purple
echo 06 - olive
echo 07 - silver
echo 08 - gray
echo 09 - blue
echo 0A - lime
echo 0B - aqua
echo 0C - red
echo 0D - fuchisa
echo 0E - yellow
echo 0F - white
echo.
set /p clr=: 
color %clr%
cls
echo Complete! (Color can be changed in options)
echo.
pause
goto menu

:exit
BrokenOS / User: %user% / Exit
cls
echo.
echo Are you sure?
echo.
set /p c=[Y/N]: 
if %c% == Y goto exit2
if %c% == N goto menu
::I could have done choice

:exit2
exit

:ping
BrokenOS / User: %user% / Ping
echo.
echo ==[ Ping ]===
echo.
echo Insert IP...
set /p ip=IP: 
ping %ip%
pause
cls
goto menu

:help
BrokenOS / User: %user% / Help
cls
echo.
echo ==[ Commands ]==
echo.
echo save - Saves your data in a .bu file
echo.
echo ping - Sends you over to the ping location
echo.
echo exit - Leave the OS
echo.
echo changeUser - Allows you to change your username
echo.
echo clrChange - Gives you the ability to change your text color
echo.
echo ==[ Misc ]==
echo.
echo None in this area...
echo.
pause
cls
goto menu
