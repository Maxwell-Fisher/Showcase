echo off
title Showcase - @Maxwellcrafter (Loading...)
for /F %%a in ('echo prompt $E ^| cmd') do set "esc=%%a"
setLocal enableDelayedExpansion
::mode 120,45
mode 64,21
chcp 65001
echo !esc![?25l %= Makes the cursor invisible =%
set file=%0
set inputArray=aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ0123456789€‚ƒ„…†‡ˆ‰Š‹ŒŽ‘’“”•–—˜™š›œžŸ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüý
mode 64,21
for /F "UseBackQ delims==" %%A in (%0) do set "memory=%%A"
set colourReset=!esc![39m!esc![49m
set menuPosition=1
set menuItems=1

set red=!esc![91m!esc![41m  !esc![0m
set yellow=!esc![93m!esc![43m  !esc![0m
set green=!esc![92m!esc![42m  !esc![0m
set blue=!esc![94m!esc![44m  !esc![0m
set cyan=!esc![96m!esc![46m  !esc![0m
set magenta=!esc![95m!esc![45m  !esc![0m
set black=!esc![30m!esc![40m  !esc![0m
set white=!esc![90m!esc![47m  !esc![0m

if "!memory:~0,1!" == "0" goto skipLogo
echo %red%%red%%red%%red%%yellow%%yellow%%yellow%%yellow%%green%%green%%green%%green%%blue%%blue%%blue%%blue%%cyan%%cyan%%cyan%%cyan%%magenta%%magenta%%magenta%%magenta%%black%%black%%black%%black%%white%%white%%white%%white%
echo %red%%red%                                                        %white%%white%
echo %red%%red%             !esc![96m'c;.,d0x,                                  %white%%white%
echo %red%%red%          !esc![96m..,0MWXK0xl'                                  %white%%white%
echo %red%%red%         !esc![96mcKKXKko:'.      !esc![94m.;xkl.  !esc![95m'xkl.                  %white%%white%
echo %red%%red%       !esc![96m.,OWKl.           !esc![94m.oNW0,  !esc![95mcNMWd.                 %white%%white%
echo %red%%red%      !esc![96m,ONWx.              !esc![94m.',.   !esc![95m.xWMNl                 %white%%white%
echo %red%%red%      !esc![96m.kMk.                       !esc![95m.OWMX:                %white%%white%
echo %red%%red%     !esc![96m.oXWl                         !esc![95m,0MM0,               %white%%white%
echo %red%%red%     !esc![96m,OWWl                          !esc![95m:XMMO.              %white%%white%
echo %red%%red%      !esc![96m'0Wk.                          !esc![95mlNMWx.             %white%%white%
echo %red%%red%      !esc![96mcXMWd.                         !esc![95m.dWMNo             %white%%white%
echo %red%%red%      !esc![96m.,c0Wk;            !esc![94m.;kOo.       !esc![95m.kMMX:            %white%%white%
echo %red%%red%         !esc![96mdMMNkc,.        !esc![94m.lXNO'        !esc![95m'kNNc            %white%%white%
echo %red%%red%         !esc![96m.::l0MWXOdc,.     !esc![94m.'.          !esc![95m.'.             %white%%white%
echo %red%%red%             !esc![96m,xo:ckNK:                                  %white%%white%
echo %red%%red%                    !esc![96m'.                                  %white%%white%
echo %red%%red%                                       !esc![91mM!esc![93ma!esc![92mx!esc![94mw!esc![94me!esc![96ml!esc![95ml !esc![91mF!esc![92mi!esc![94ms!esc![91mh!esc![92me!esc![94mr   %white%%white%
echo %red%%red%!esc![90m                                                        %white%%white%
echo %red%%red%%red%%red%%yellow%%yellow%%yellow%%yellow%%green%%green%%green%%green%%blue%%blue%%blue%%blue%%cyan%%cyan%%cyan%%cyan%%magenta%%magenta%%magenta%%magenta%%black%%black%%black%%black%%white%%white%%white%%white%
ping 127.0.0.1 -n 3 >nul
:skipLogo
call :setColour
cls

%= ################################################################################################### =%

:mainmenuInit
set menuPosition=1
set menuItems=7
:mainMenu
title Showcase - @Maxwellcrafter (Main menu)
call :renderMainMenu
call :getinput
cls
echo !esc![10;1H
if "!input!" == "d" cls && goto detailsMenuInit
goto mainMenu

:detailsMenuInit
set menuPosition=1
set menuItems=3
:detailsMenu
title Showcase - @Maxwellcrafter (Details)
call :renderDetails
call :getinput
cls
if "!input!" == "l" call :toggleLogoVisibility
if "!input!" == "c" call :toggleColour
call :setColour
if "!input!" == "m" cls && goto mainMenuInit
goto detailsMenu


%= ################################################################################################### =% pause && exit


:getinput
choice /CS /T 1 /D !inputArray:~83,1! /c !inputArray! >nul
set level=%errorlevel%
set /a level=level-1
set input=!inputArray:~%level%,1!
if "!input!" == "1" if "!menuPosition!" GTR "1" set /a menuPosition=menuPosition-1
if "!input!" == "2" if "!menuPosition!" LSS "!menuItems!" set /a menuPosition=menuPosition+1

exit /b

:saveMemory
echo. >> !file!
<nul set /p=!memory!>> !file!
exit /b

:toggleLogoVisibility
	if "!memory:~0,1!" == "0" (
		set "memory=1!memory:~1,63!"
	) else if "!memory:~0,1!" == "1" (
		set "memory=0!memory:~1,63!"
	)
call :saveMemory
exit /b

:toggleColour
	if "!memory:~1,1!" == "0" (
		set "memory=!memory:~0,1!1!memory:~2,63!"
	) else if "!memory:~1,1!" == "1" (
		set "memory=!memory:~0,1!2!memory:~2,63!"
	) else if "!memory:~1,1!" == "2" (
		set "memory=!memory:~0,1!3!memory:~2,63!"
	) else if "!memory:~1,1!" == "3" (
		set "memory=!memory:~0,1!0!memory:~2,63!"
	)
call :setColour
call :saveMemory
exit /b

:renderMainMenu
echo !esc![2;10HScripts:
echo !esc![3;4H[Tetris            ]
echo !esc![4;4H[Rickroll          ]
echo !esc![5;4H[Memory corruption ]
echo !esc![6;4H[Square Game       ]
echo !esc![7;4H[Physics Simulator ]
call :setColour
echo !esc![2;57H!esc![38;5;252m!esc![48;5;88m[Exit]
call :setColour
echo !esc![20;4HPress [D] to go to the details/settings page
exit /b

:renderDetails
call :setColour
if "!memory:~0,1!" == "0" echo !esc![1;1HStartup logo: hidden
if "!memory:~0,1!" == "1" echo !esc![1;1HStartup logo: shown
if "!memory:~1,1!" == "0" echo !esc![2;1HColour scheme: dark
if "!memory:~1,1!" == "1" echo !esc![2;1HColour scheme: light
if "!memory:~1,1!" == "2" echo !esc![2;1HColour scheme: matrix
if "!memory:~1,1!" == "3" echo !esc![2;1HColour scheme: commodore
echo !esc![3;1HMemory: [!memory!]
echo !esc![4;1HInput: [!input!]
echo !esc![5;1HCurrent item: [!menuPosition!]
echo !esc![20;4HPress [M] to go to the main menu
echo !esc![19;4HPress [C] to toggle the colour scheme
echo !esc![18;4HPress [L] to toggle the loading logo
exit /b

:setColour
if "!memory:~1,1!" == "0" echo !esc![38;5;15m!esc![48;5;235m
if "!memory:~1,1!" == "1" echo !esc![38;5;235m!esc![48;5;15m
if "!memory:~1,1!" == "2" echo !esc![38;5;46m!esc![48;5;235m
::if "!memory:~1,1!" == "3" echo !esc![38;5;14m!esc![48;5;69m
::if "!memory:~1,1!" == "3" echo !esc![38;2;108;94;181m!esc![48;2;53;40;121m
if "!memory:~1,1!" == "3" echo !esc![38;5;159m!esc![48;2;53;40;121m
exit /b

:memory %= The numbers below this line are used to store settings, such as the current colour scheme =%
10