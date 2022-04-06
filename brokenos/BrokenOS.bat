@echo off
::Set up
title BrokenOS / user: %user%
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
echo [PLEASE SET UP BrokenOS]
echo.
echo Enter a name!
set /p user=: 
title BrokenOS / user: %user%
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
cls
color %clr%
title BrokenOS / User: %user%
echo.
echo [ BrokenOS V.8 ] 
echo.
echo [ Welcome, %user%! ] 
echo.
echo To look at the updates type in 'changelog'
echo.
echo Type 'help' for Commands and help!
echo.
set /p loc=Goto: 
::Help/Important LOC's
if %loc% == help goto help
if %loc% == changelog goto changelog
if %loc% == exit goto exit

::AVAC
if %loc% == avac(start) goto avacStart
if %loc% == avac(bos7) goto bos7
if %loc% == avac(save) goto avacSave
if %loc% == avac(ipc) goto avacIPC
if %loc% == avac(time) goto avacTime

::Ping LOC's
if %loc% == ping goto ping

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
cls
echo [ CHANGELOGS ]
echo [    V.8     ] 
echo.
echo [+] Added: Splashsrceen or whatever the fuck you call it.
echo [+] Added: Force save when making a new profile.
echo [+] Customized the Menu to look 'better'.
echo [-] Removed: AVAC.bat (It was a waste of time and a waste of space)
echo.
pause
goto menu

:avacTime
date /t
pause
cls

:avacSave
title BrokenOS / avac(save)
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

:bos7
color 0F
cls
echo BOScript 1
echo.
set /p com=:
if %com% == BOS.Color() goto BOSClr
if %com% == BOS.Close goto menu
if %com% == BOS.load(#) echo #
if %com% == BOS.load($) echo $
if %com% == BOS.load([10]#) echo ##########
if %com% == BOS.load([10]$) echo $$$$$$$$$$
if %com% == BOS.Draw(Cube) goto Cube
if %com% == BOS.Draw(Rect) goto Rect
echo Invalid code!
goto bos7

:BOSClr
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
set /p bclr=: 
color %bclr%
pause
goto bos7

:Rect
echo #################
echo #################
echo #################
echo #################
echo Loaded!
pause
goto bos7

:Cube
echo #######
echo #######
echo #######
echo #######
echo Loaded!
pause
goto bos7

:avacStart
cls
start avac.bat
echo.
echo Launched avac.bat!
echo.
pause
cls
goto menu

:SecretCode
echo.
echo :moyai:
echo.
pause
cls
goto menu

:changeUser
cls
echo.
echo ==[ Change Username ]==
echo ==[ NO GOING BACK   ]==
echo.
echo Set a new username %user%. (Unless you dont wanna be called %user% anymore)
echo.
set /p user=Change your Name!: 
echo.
echo Name set! =)
pause
cls
goto menu

:clrChange
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
cls
echo.
echo ==[ Commands ]==
echo.
echo changeUser - Allows you to change your username
echo.
echo clrChange - Gives you the ability to change your text color
echo.
echo ping - Sends you over to the ping location so you can ping ips
echo.
echo exit - Leave the OS
echo.
echo ==[ Misc ]==
echo.
echo avac(start) - opens avac.bat (shows commands for avac)
echo.
echo ==[ Beta or Alpha Features ]==
echo.
echo None in this area...
echo.
pause
cls
goto menu