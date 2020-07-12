@echo off
title TSET Board Builder
rem model
rem menu.usb=USB Type
rem menu.speed=CPU Speed
rem menu.opt=Optimize
rem menu.keys=Keyboard Layout

REM echo %1 %2

goto StartUp

:StartUp
Echo =============================================  MODEL
Echo 	1 :: LC
Echo 	2 :: 3.2/3.1
Echo 	3 :: 3.5
Echo 	4 :: 3.6
Echo 	5 :: 3.0
Echo 	6 :: 4.0
Echo 	7 :: 4.1
Echo 	q :: quit

Echo.
Choice /C 1234567q /M "Which Teensy"

If Errorlevel 8 Goto TsetQuit
If Errorlevel 7 Goto T41
If Errorlevel 6 Goto T40
If Errorlevel 5 Goto T30
If Errorlevel 4 Goto T36
If Errorlevel 3 Goto T35
If Errorlevel 2 Goto T32
If Errorlevel 1 Goto TLC


Echo 

:GetSpeed
Echo ============================================= Speed
Echo 	1 :: 96 Mhz
Echo 	2 :: 120 Mhz
Echo 	3 :: 144 Mhz
Echo 	4 :: 168 Mhz
Echo 	5 :: 180 Mhz	[3.6]
Echo 	6 :: 192 Mhz	[3.6 OC]
Echo 	7 :: 216 Mhz	[3.6 OC]
Echo 	8 :: 240 Mhz	[3.6 OC]
Echo 	9 :: 256 Mhz	[3.6 OC]
Echo 	a :: 2 Mhz
Echo 	b :: 16 Mhz
Echo 	c :: 24 Mhz
Echo 	d :: 48 Mhz
Echo 	e :: 72 Mhz
Echo.  
Choice /C 123456789abcde  /M "What Speed"
If Errorlevel 15 Goto S15
If Errorlevel 14 Goto S14
If Errorlevel 13 Goto S13
If Errorlevel 12 Goto S12
If Errorlevel 11 Goto S11
If Errorlevel 10 Goto S10
If Errorlevel 9 Goto S9
If Errorlevel 8 Goto S8
If Errorlevel 7 Goto S7
If Errorlevel 6 Goto S6
If Errorlevel 5 Goto S5
If Errorlevel 4 Goto S4
If Errorlevel 3 Goto S3
If Errorlevel 2 Goto S2
If Errorlevel 1 Goto S1

:GetSpeedT4
Echo ============================================= Speed
Echo 	1 :: 600 Mhz
Echo 	2 :: 528 Mhz
Echo 	3 :: 396 Mhz
Echo 	4 :: 24 Mhz
Echo 	5 :: 720 Mhz (OC)
Echo 	6 :: 816 Mhz (OC)
Echo 	7 :: 912 Mhz (cooling reqd)
Echo 	8 :: 960 Mhz (cooling reqd)
Echo 	9 :: 1008 Mhz (cooling reqd)
Echo.  
Choice /C 123456789  /M "What Speed"
If Errorlevel 9 Goto TS9
If Errorlevel 8 Goto TS8
If Errorlevel 7 Goto TS7
If Errorlevel 6 Goto TS6
If Errorlevel 5 Goto TS5
If Errorlevel 4 Goto TS4
If Errorlevel 3 Goto TS3
If Errorlevel 2 Goto TS2
If Errorlevel 1 Goto TS1

:GetSpeedLC
Echo ============================================= Speed
Echo 	c :: 24 Mhz
Echo 	d :: 48 Mhz
Echo.  
Choice /C cd  /M "What Speed"
If Errorlevel 2 Goto S13
If Errorlevel 1 Goto S12

:GetOpt
Echo ============================================= OPTIMIZE
Echo 	1 :: Faster
Echo 	2 :: Faster with LTO
Echo 	3 :: Fast
Echo 	4 :: Fast with LTO
Echo 	5 :: Fastest
Echo 	6 :: Fastest + pure-code		[3.2+]
Echo 	7 :: Fastest with LTO
Echo 	8 :: Fastest + pure-code with LTO  [3.2+]
Echo 	9 :: Debug
Echo 	a :: Debug with LTO
Echo 	b :: Smallest Code
Echo 	c :: Smallest Code with LTO
Echo.                                   
Choice /C 123456789abc /M "Optimize Level"
if Errorlevel 12 Goto O12
If Errorlevel 11 Goto O11
If Errorlevel 10 Goto O10
If Errorlevel 9 Goto O9
If Errorlevel 8 Goto O8
If Errorlevel 7 Goto O7
If Errorlevel 6 Goto O6
If Errorlevel 5 Goto O5
If Errorlevel 4 Goto O4
If Errorlevel 3 Goto O3
If Errorlevel 2 Goto O2
If Errorlevel 1 Goto O1

:GetUSB
Echo ============================================= USB
Echo 	1 :: serial
Echo 	2 :: keyboard
Echo 	3 :: touch
Echo 	4 :: hidtouch
Echo 	5 :: hid
Echo 	6 :: serialhid
Echo 	7 :: midi
Echo 	8 :: midi4
Echo 	9 :: midi16
Echo 	a :: serialmidi
Echo 	b :: serialmidi4
Echo 	c :: serialmidi16
Echo 	d :: audio
Echo 	e :: serialmidiaudio
Echo 	f :: serialmidi16audio
Echo 	g :: mtp
Echo 	h :: rawhid
Echo 	i :: flightsim
Echo 	j :: flightsimjoystick
Echo 	k :: everything
Echo 	l :: disable
Echo 	m :: Dual Serial
Echo 	n :: Triple Serial
Echo.
Choice /C 123456789abcdefghijklmn /M "What USB"
If Errorlevel 23 Goto U23
If Errorlevel 22 Goto U22
If Errorlevel 21 Goto U21
If Errorlevel 20 Goto U20
If Errorlevel 19 Goto U19
If Errorlevel 18 Goto U18
If Errorlevel 17 Goto U17
If Errorlevel 16 Goto U16
If Errorlevel 15 Goto U15
If Errorlevel 14 Goto U14
If Errorlevel 13 Goto U13
If Errorlevel 12 Goto U12
If Errorlevel 11 Goto U11
If Errorlevel 10 Goto U10
If Errorlevel 9 Goto U9
If Errorlevel 8 Goto U8
If Errorlevel 7 Goto U7
If Errorlevel 6 Goto U6
If Errorlevel 5 Goto U5
If Errorlevel 4 Goto U4
If Errorlevel 3 Goto U3
If Errorlevel 2 Goto U2
If Errorlevel 1 Goto U1


REM >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>   MODEL
:T41
set model=teensy41
goto GetSpeedT4

:T40
set model=teensy40
goto GetSpeedT4

:T30
set model=teensy30
goto GetSpeed

:T36
set model=teensy36
goto GetSpeed

:T35
set model=teensy35
goto GetSpeed

:T32
set model=teensy31
goto GetSpeed

:TLC
set model=teensyLC
set gtv=LC
goto GetSpeed%gtv%
REM >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>   MODEL

REM >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>   SPEED
:S14
set speed=72
goto GetOpt

:S13
set speed=48
goto GetOpt

:S12
set speed=24
goto GetOpt

:S11
set speed=16
goto GetOpt

:S10
set speed=2
goto GetOpt

:S9
set speed=256
goto GetOpt

:S8
set speed=240
goto GetOpt

:S7
set speed=216
goto GetOpt

:S6
set speed=192
goto GetOpt

:S5
set speed=180
goto GetOpt

:S4
set speed=168
goto GetOpt

:S3
set speed=144
goto GetOpt

:S2
set speed=120
goto GetOpt

:S1
set speed=96
goto GetOpt

REM >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>   SPEED T4

:TS9
set speed=1008
goto GetOpt

:TS8
set speed=960
goto GetOpt

:TS7
set speed=912
goto GetOpt

:TS6
set speed=816
goto GetOpt

:TS5
set speed=720
goto GetOpt

:TS4
set speed=24
goto GetOpt

:TS3
set speed=396
goto GetOpt

:TS2
set speed=528
goto GetOpt

:TS1
set speed=600
goto GetOpt
REM >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>   SPEED T4


REM >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>   OPTIMIZE
:O12
set opt=oslto
goto GetUSB

:O11
set opt=osstd
goto GetUSB

:O10
set opt=oglto
goto GetUSB

:O9
set opt=ogstd
goto GetUSB

:O8
set opt=o3purelto
goto GetUSB

:O7
set opt=o3lto
goto GetUSB

:O6
set opt=o3purestd
goto GetUSB

:O5
set opt=o3std
goto GetUSB

:O4
set opt=o1lto
goto GetUSB

:O3
set opt=o1std
goto GetUSB

:O2
set opt=o2lto
goto GetUSB

:O1
set opt=o2std
goto GetUSB

REM >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>   OPTIMIZE

REM >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>   USB

:U23
set usb=serial3
goto BeDone

:U22
set usb=serial2
goto BeDone

:U21
set usb=disable
goto BeDone

:U20
set usb=everything
goto BeDone

:U19
set usb=flightsimjoystick
goto BeDone

:U18
set usb=flightsim
goto BeDone

:U17
set usb=rawhid
goto BeDone

:U16
set usb=mtp
goto BeDone

:U15
set usb=serialmidi16audio
goto BeDone

:U14
set usb=serialmidiaudio
goto BeDone

:U13
set usb=audio
goto BeDone

:U12
set usb=serialmidi16
goto BeDone

:U11
set usb=serialmidi4
goto BeDone

:U10
set usb=serialmidi
goto BeDone

:U9
set usb=midi16
goto BeDone

:U8
set usb=midi4
goto BeDone

:U7
set usb=midi
goto BeDone

:U6
set usb=serialhid
goto BeDone

:U5
set usb=hid
goto BeDone

:U4
set usb=hidtouch
goto BeDone

:U3
set usb=touch
goto BeDone

:U2
set usb=keyboard
goto BeDone

:U1
set usb=serial
goto BeDone


REM >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>   USB



:BeDone
set BuildUp=cd.
Echo =============================================  Tools Selections
ECHO MODEL :: %model%
ECHO SPEED :: %speed%
ECHO OPTIMIZE :: %opt%

rem echo on
ECHO USB :: %usb%
set sketchcmd=~
IF EXIST %1 set sketchcmd=%1
IF /I "%2" NEQ "ino" set sketchcmd=~
IF "~" NEQ "%sketchcmd%" ECHO SKETCH :: %1

Echo =============================================  CONFIRM
Echo 	Y :: Yes :: Accept and save to %cd%\Compile.cmd
Echo 	N :: No :: RESTART
Echo 	S :: Save to %cd%\%model%
Echo 	x :: Exit now without writing
Echo 	D :: yes with DEBUG GDB and save to %cd%\Compile.cmd
Echo.
Choice /C YNSxD /M "Accept"
If Errorlevel 5 Goto DoneNowGDB
If Errorlevel 4 Goto TsetQuit
If Errorlevel 3 Goto DoDir
If Errorlevel 2 Goto StartUp
If Errorlevel 1 Goto DoneNow

:DoDir
if not exist %model%/. md %model%
set BuildUp=cd..
set MoveFile=.\%model%\

:DoneNow
set OutCMD=%MoveFile%Compile.cmd
rem can use %~dp0 not %01 %02 to get FB Parts
type %01 > %OutCMD%
echo.>> %OutCMD%
echo REM defragster was here >> %OutCMD%
echo.>> %OutCMD%
echo set model=%model%>> %OutCMD%
echo set speed=%speed%>> %OutCMD%
echo set opt=%opt%>> %OutCMD%
echo set usb=%usb%>> %OutCMD%
echo %BuildUp%>> %OutCMD%
echo set sketchcmd=%sketchcmd%>> %OutCMD%
type %02 >> %OutCMD%
:TsetQuit
exit

:DoneNowGDB
set OutCMD=%MoveFile%Compile.cmd
rem can use %~dp0 not %01 %02 to get FB Parts
type %01 > %OutCMD%
echo.>> %OutCMD%
echo REM defragster was here >> %OutCMD%
echo.>> %OutCMD%
echo set model=%model%>> %OutCMD%
echo set speed=%speed%>> %OutCMD%
echo set opt=%opt%>> %OutCMD%
echo set usb=%usb%>> %OutCMD%
echo %BuildUp%>> %OutCMD%
echo set sketchcmd=%sketchcmd%>> %OutCMD%
type %02G >> %OutCMD%
exit
