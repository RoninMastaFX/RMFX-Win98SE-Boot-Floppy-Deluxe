@ECHO OFF
PROMPT $P$G
set EXPAND=YES
set DIRCMD=/OGN /4
set LglDrv=27 * 26 Z 25 Y 24 X 23 W 22 V 21 U 20 T 19 S 18 R 17 Q 16 P 15
set LglDrv=%LglDrv% O 14 N 13 M 12 L 11 K 10 J 9 I 8 H 7 G 6 F 5 E 4 D 3 C
COLOUR.COM
call setramd.bat %LglDrv%
set temp=c:\
set tmp=c:\
path=%RAMD%:\;a:\;%CDROM%:\
copy COMMAND.COM %RAMD%:\ > NUL
set comspec=%RAMD%:\command.com
copy EXTRACT.EXE %RAMD%:\ > NUL
copy COLOUR.COM %RAMD%:\ > NUL
copy SMARTDRV.EXE %RAMD%:\ > NUL
%RAMD%:\extract /y /e /l %RAMD%: ebd.cab > NUL

IF "%config%"=="98HELP" GOTO 98HELP
IF "%config%"=="README" GOTO README
echo.
GOTO MAIN

:98HELP
COLOUR.COM
call 98help.bat
echo Your machine will now restart and the startup menu will appear.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
GOTO END

:README
COLOUR.COM
call readme.bat
echo Your machine will now restart and the startup menu will appear.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
GOTO END

:END
RESTART.COM

:MAIN
LH %RAMD%:\SMARTDRV.EXE > NUL
LH %RAMD%:\DOSKEY.COM /INSERT > NUL
%RAMD%:\COLOUR.COM
rem clean up environment variables
set CDROM=
set LglDrv=
%RAMD%:\COLOUR.COM
%RAMD%:\MEM.EXE
echo.
echo Press the PAUSE/BREAK key to pause the screen.
echo Press the ENTER/RETURN key when you're finished.
%RAMD%:\SLEEP.EXE 6
%RAMD%:\COLOUR.COM
echo.
echo //=============================================================================
echo // Welcome to "RoninMastaFX's Windows 98: Second Edition Boot Floppy Deluxe"!
echo // To read the MS-DOS 7.10 Help files, type DOS7HELP and press Enter. To read
echo // the Windows 98 Documentation, type 98HELP and press ENTER. To read the Boot
echo // Floppy Readme, type README and press ENTER. To switch from the green text to
echo // the standard grey coloured variant, type CLS and press ENTER. To go back to
echo // the green text, type COLOUR and press ENTER. To shutdown, restart or
echo // suspend, type SHUTDOWN and press ENTER. Good Luck!
echo //=============================================================================
echo.
echo The diagnostic tools were loaded to drive %RAMD%.
echo.
LH %RAMD%:\MSCDEX.EXE /D:MSCD000 /D:MSCD001 /D:SCSIDE0 /D:SCSIDE1 /L:%CDROM%
echo 
