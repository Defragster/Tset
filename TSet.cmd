@echo off
rem model
rem menu.usb=USB Type
rem menu.speed=CPU Speed
rem menu.opt=Optimize
rem menu.keys=Keyboard Layout

:StartUp
Echo =============================================  MODEL
Echo 	1 :: LC
Echo 	2 :: 3.2/3.1
Echo 	3 :: 3.5
Echo 	4 :: 3.6
Echo.
Choice /C 1234 /M "Which Teensy"

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
Echo 	5 :: 180 Mhz
Echo 	6 :: 192 Mhz
Echo 	7 :: 216 Mhz
Echo 	8 :: 240 Mhz
Echo 	9 :: 256 Mhz
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

:GetOpt
Echo ============================================= OPTIMIZE
Echo 	1 :: Faster
Echo 	2 :: Faster with LTO
Echo 	3 :: Fast
Echo 	4 :: Fast with LTO
Echo 	5 :: Fastest
Echo 	6 :: Fastest + pure-code
Echo 	7 :: Fastest with LTO
Echo 	8 :: Fastest + pure-code with LTO
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
Echo.
Choice /C 123456789abcdefghijkl /M "What USB"
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
goto GetSpeed
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

REM >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>   SPEED


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
ECHO USB :: %usb%
Echo =============================================  CONFIRM
Echo 	Y :: Yes :: Accept
Echo 	N :: No :: RESTART
Echo 	S :: Save to %model% Subdirectory
Echo.
Choice /C YNS /M "Accept"
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
type %02 >> %OutCMD%
exit



