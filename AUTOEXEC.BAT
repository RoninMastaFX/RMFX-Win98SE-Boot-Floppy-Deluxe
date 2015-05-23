@ECHO OFF
PROMPT $P$G
SET EXPAND=YES
SET DIRCMD=/OGN /4
SET LglDrv=27 * 26 Z 25 Y 24 X 23 W 22 V 21 U 20 T 19 S 18 R 17 Q 16 P 15
SET LglDrv=%LglDrv% O 14 N 13 M 12 L 11 K 10 J 9 I 8 H 7 G 6 F 5 E 4 D 3 C
COLOUR.COM
CALL SETRAMD.BAT %LglDrv%
SET TEMP=C:\
SET TMP=C:\
PATH=%RAMD%:\;A:\;%CDROM%:\
COPY COMMAND.COM %RAMD%:\ > NUL
SET COMSPEC=%RAMD%:\COMMAND.COM
COPY EXTRACT.EXE %RAMD%:\ > NUL
COPY EXPAND.EXE %RAMD%:\ > NUL
COPY COLOUR.COM %RAMD%:\ > NUL
COPY FINDRAMD.EXE %RAMD%:\ > NUL
COPY SHUTDOWN.COM %RAMD%:\ > NUL
COPY EMM386.EXE %RAMD%:\ > NUL
COPY SMARTDRV.EXE %RAMD%:\ > NUL
%RAMD%:\EXTRACT /Y /E /L %RAMD%: EBD.CAB > NUL
%RAMD%:\SLEEP.EXE 1
%RAMD%:\EXPAND %RAMD%:\ATTRIB.EXE %RAMD%: > NUL
%RAMD%:\EXPAND %RAMD%:\CHKDSK.EXE %RAMD%: > NUL
%RAMD%:\EXPAND %RAMD%:\DISKCOMP.COM %RAMD%: > NUL
%RAMD%:\EXPAND %RAMD%:\DISKCOPY.COM %RAMD%: > NUL
%RAMD%:\EXPAND %RAMD%:\DOSKEY.COM %RAMD%: > NUL
%RAMD%:\EXPAND %RAMD%:\EDIT.COM %RAMD%: > NUL
%RAMD%:\EXPAND %RAMD%:\EXT.EXE %RAMD%: > NUL
%RAMD%:\EXPAND %RAMD%:\FASTHELP.EXE %RAMD%: > NUL
%RAMD%:\EXPAND %RAMD%:\FDISK.EXE %RAMD%: > NUL
%RAMD%:\EXPAND %RAMD%:\FIND.EXE %RAMD%: > NUL
%RAMD%:\EXPAND %RAMD%:\FORMAT.COM %RAMD%: > NUL
%RAMD%:\EXPAND %RAMD%:\KEYB.EXE %RAMD%: > NUL
%RAMD%:\EXPAND %RAMD%:\LABEL.EXE %RAMD%: > NUL
%RAMD%:\EXPAND %RAMD%:\MEM.EXE %RAMD%: > NUL
%RAMD%:\EXPAND %RAMD%:\MORE.COM %RAMD%: > NUL
%RAMD%:\EXPAND %RAMD%:\MOVE.EXE %RAMD%: > NUL
%RAMD%:\EXPAND %RAMD%:\MSCDEX.EXE %RAMD%: > NUL
%RAMD%:\EXPAND %RAMD%:\RECOVER.EXE %RAMD%: > NUL
%RAMD%:\EXPAND %RAMD%:\SCANDISK.EXE %RAMD%: > NUL
%RAMD%:\EXPAND %RAMD%:\SYS.COM %RAMD%: > NUL
%RAMD%:\SLEEP.EXE 1
DEL %RAMD%:\*.CO_ > NUL
DEL %RAMD%:\*.EX_ > NUL
%RAMD%:\SLEEP.EXE 1
GOTO MAIN

:MAIN
LH %RAMD%:\SMARTDRV.EXE > NUL
LH %RAMD%:\DOSKEY.COM /INSERT > NUL
%RAMD%:\COLOUR.COM
REM Cleaning up the environment variables
SET CDROM=
SET LglDrv=
%RAMD%:\COLOUR.COM
%RAMD%:\MEM.EXE
ECHO.
ECHO Press the PAUSE/BREAK key to pause the screen.
ECHO Press the ENTER/RETURN key when you're finished.
ECHO.
ECHO NOTICE: The boot disk will automatically continue if no action has been taken
ECHO within 5 seconds . . .
%RAMD%:\SLEEP.EXE 5
%RAMD%:\COLOUR.COM
ECHO.
ECHO MS-DOS preparation is now complete! 
ECHO.
ECHO.
%RAMD%:\SLEEP.EXE 1
ECHO Loading the Welcome Screen . . .
%RAMD%:\SLEEP.EXE 2
%RAMD%:\COLOUR.COM
ECHO.
ECHO //=============================================================================
ECHO // Welcome to "RoninMastaFX's Windows 98: Second Edition Boot Floppy Deluxe"!
ECHO // To read the MS-DOS 7.10 Help, type DOS7HELP and press Enter. To read the
ECHO // Windows 98 Boot Disk Help, type 98HELP and press ENTER. To read this Boot
ECHO // Floppy Readme, type README and press ENTER. To switch from the green text to
ECHO // the standard grey coloured variant, type CLS and press ENTER. To go back to
ECHO // the green text, type COLOUR and press ENTER. To shutdown or restart, type
ECHO // SHUTDOWN and press ENTER. Good Luck!
ECHO //=============================================================================
ECHO.
ECHO The diagnostic tools were loaded to drive %RAMD%.
ECHO.
LH %RAMD%:\MSCDEX.EXE /D:MSCD000 /D:MSCD001 /D:SCSIDE0 /D:SCSIDE1 /L:%CDROM%
ECHO 
