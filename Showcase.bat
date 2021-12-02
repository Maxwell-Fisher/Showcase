title Showcase - @Maxwellcrafter
for /F %%a in ('echo prompt $E ^| cmd') do set "esc=%%a"
setLocal enableDelayedExpansion
::mode 120,45
mode 64,21
chcp 65001
echo !esc![?25l %= Makes the cursor invisible =%
set inputArray=aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ0123456789€‚ƒ„…†‡ˆ‰Š‹ŒŽ‘’“”•–—˜™š›œžŸ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüý
echo off
mode 64,21

set red=%ESC%[91m%ESC%[41m  %ESC%[0m
set yellow=%ESC%[93m%ESC%[43m  %ESC%[0m
set green=%ESC%[92m%ESC%[42m  %ESC%[0m
set blue=%ESC%[94m%ESC%[44m  %ESC%[0m
set cyan=%ESC%[96m%ESC%[46m  %ESC%[0m
set magenta=%ESC%[95m%ESC%[45m  %ESC%[0m
set black=%ESC%[30m%ESC%[40m  %ESC%[0m
set white=%ESC%[90m%ESC%[47m  %ESC%[0m

echo %red%%red%%red%%red%%yellow%%yellow%%yellow%%yellow%%green%%green%%green%%green%%blue%%blue%%blue%%blue%%cyan%%cyan%%cyan%%cyan%%magenta%%magenta%%magenta%%magenta%%black%%black%%black%%black%%white%%white%%white%%white%
echo %red%%red%                                                        %white%%white%
echo %red%%red%             %ESC%[96m'c;.,d0x,                                  %white%%white%
echo %red%%red%          %ESC%[96m..,0MWXK0xl'                                  %white%%white%
echo %red%%red%         %ESC%[96mcKKXKko:'.      %ESC%[94m.;xkl.  %ESC%[95m'xkl.                  %white%%white%
echo %red%%red%       %ESC%[96m.,OWKl.           %ESC%[94m.oNW0,  %ESC%[95mcNMWd.                 %white%%white%
echo %red%%red%      %ESC%[96m,ONWx.              %ESC%[94m.',.   %ESC%[95m.xWMNl                 %white%%white%
echo %red%%red%      %ESC%[96m.kMk.                       %ESC%[95m.OWMX:                %white%%white%
echo %red%%red%     %ESC%[96m.oXWl                         %ESC%[95m,0MM0,               %white%%white%
echo %red%%red%     %ESC%[96m,OWWl                          %ESC%[95m:XMMO.              %white%%white%
echo %red%%red%      %ESC%[96m'0Wk.                          %ESC%[95mlNMWx.             %white%%white%
echo %red%%red%      %ESC%[96mcXMWd.                         %ESC%[95m.dWMNo             %white%%white%
echo %red%%red%      %ESC%[96m.,c0Wk;            %ESC%[94m.;kOo.       %ESC%[95m.kMMX:            %white%%white%
echo %red%%red%         %ESC%[96mdMMNkc,.        %ESC%[94m.lXNO'        %ESC%[95m'kNNc            %white%%white%
echo %red%%red%         %ESC%[96m.::l0MWXOdc,.     %ESC%[94m.'.          %ESC%[95m.'.             %white%%white%
echo %red%%red%             %ESC%[96m,xo:ckNK:                                  %white%%white%
echo %red%%red%                    %ESC%[96m'.                                  %white%%white%
echo %red%%red%                                       %ESC%[91mM%ESC%[93ma%ESC%[92mx%ESC%[94mw%ESC%[94me%ESC%[96ml%ESC%[95ml %ESC%[91mF%ESC%[92mi%ESC%[94ms%ESC%[91mh%ESC%[92me%ESC%[94mr   %white%%white%
echo %red%%red%%ESC%[90m                                                        %white%%white%
echo %red%%red%%red%%red%%yellow%%yellow%%yellow%%yellow%%green%%green%%green%%green%%blue%%blue%%blue%%blue%%cyan%%cyan%%cyan%%cyan%%magenta%%magenta%%magenta%%magenta%%black%%black%%black%%black%%white%%white%%white%%white%
ping 127.0.0.1 -n 3 >nul

mode 120,45
mode 120,45

For /F "UseBackQ Delims==" %%A In (%0) Do Set "memory=%%A"

echo.
::echo test
::echo %0
echo !memory!

:a
call :getinput
echo !esc![0;0H!esc![48;5;255m!esc![38;5;232m!input!!esc![0m
goto a

pause
exit



:getinput
choice /CS /T 1 /D !inputArray:~83,1! /c !inputArray! >nul
set level=%errorlevel%
set /a level=level-1
set input=!inputArray:~%level%,1!
exit /b

:memory
010101010101010101