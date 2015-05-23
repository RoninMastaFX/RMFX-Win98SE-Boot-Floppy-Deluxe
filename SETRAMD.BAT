@ECHO OFF
SET RAMD=
SET CDROM=

ECHO.
ECHO Preparing to start your computer. Depending on the speed and type of your
ECHO hardware, this *WILL* range between 2 to 5 minutes.
ECHO.
ECHO.
ECHO                       [!!] P L E A S E   W A I T [!!]

A:\FINDRAMD

IF ERRORLEVEL 255 GOTO NO_RAMDRIVE

IF NOT ERRORLEVEL 3 GOTO NO_RAMDRIVE

GOTO DO_SHIFT

:LOOP
IF ERRORLEVEL %1 GOTO NO_SHIFT

:DO_SHIFT
SET CDROM=%2
SHIFT
SHIFT
IF NOT %1*==* GOTO LOOP
GOTO NO_RAMDRIVE

:NO_SHIFT
SET RAMD=%2

IF "%RAMD%"=="C" GOTO C_DRIVE

GOTO ALL_CLEAR

:C_DRIVE
CLS
ECHO.
ECHO Windows 98 Second Edition has detected that drive C does not contain a valid
ECHO FAT8, FAT12, FAT16 or FAT32 partition. There are several possible causes.
ECHO.
ECHO 1.  The drive may need to be partitioned. To create a partition on the drive, 
ECHO run FDISK from the MS-DOS command prompt. 
ECHO.
ECHO 2.  You may be using third-party disk-partitioning software. If you are using 
ECHO this type of software, remove the Emergency Boot Disk and restart your 
ECHO computer. Then, follow the on-screen instructions to start your computer from 
ECHO a floppy disk.
ECHO.
ECHO 3.  Some viruses also cause your drive C to not register. You can use a virus 
ECHO scanning program to check your computer for viruses.
ECHO.
@PAUSE
CLS
ECHO.
ECHO 4.  You may be using the GPT (GNU) Partition Table. Up until Windows 8, it is
ECHO not possible to utilize that hard disk and install Windows onto it. You must
ECHO utilize third-party disk-partitioning software to create the MS-DOS Partition
ECHO Table. For most people, the software 'GParted' will do the job just fine.
ECHO.
ECHO 5.  You may have your hard disk partitoned to NTFS, exFAT, EXT 2/3/4, BTRFS,
ECHO ZFS, XFS, or to something else not listed here. Please utilize third-party
ECHO disk-partitioning software to delete these partitons. For most people,
ECHO the software 'GParted' will do the job just fine.
ECHO.
@PAUSE
COLOUR.COM
GOTO ALL_CLEAR

:NO_RAMDRIVE
CLS
ECHO.
ECHO The Windows 98 Second Edition startup disk could not create a temporary drive
ECHO for the diagnostic tools. This may be because this computer has less than the
ECHO minimum required extended memory. You need a minimum of 48 MB physical RAM in
ECHO order to run this startup disk. The size of the virtual RAM disk is 32 MB.  
@PAUSE
COLOUR.COM
GOTO ALL_CLEAR

:ALL_CLEAR
ECHO.
ECHO.
ECHO              _____________________________________________________
ECHO            /                                                       \
ECHO          /               [] RoninMastaFX Designs []                \
ECHO        /       [] Website URL: http://www.roninmastafx.ca []         \
ECHO       (      [] Windows 98: Second Edition Boot Floppy DELUXE []    )
ECHO        \       [] E-Mail: roninmastafx [at] gmail [dot] com []       /
ECHO          \ [] BETA 1.6.5: Second Edition (v0.9.9.1) - 5/23/2015 [] /
ECHO            \ _____________________________________________________ /
ECHO.
