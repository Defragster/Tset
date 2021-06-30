@echo off
REM Set Sketchbook'sbook' to YOUR directory, and following 'srcdir' the folder holding these TSET files
set sbook=T:\tCode
set srcdir=T:\Programs\TSet
set bar=.
Choice /C yn /M "Sketchbook Subfolder"
If Errorlevel 2 Goto finish
If Errorlevel 1 Goto mkfold
:mkfold
pushd %sbook%
dir /ad /d %sbook%\
echo Enter Path in %sbook% [New or with tab completion]
set /p bar=
if not exist %sbook%\%bar%\. md %bar%
:finish
echo Enter Sketch Name -without extension!
set /p foo=
if not exist %sbook%\%bar%\%foo%\. md %sbook%\%bar%\%foo%
if exist %sbook%\%bar%\%foo%\%foo%.ino echo File already exists
if not exist %sbook%\%bar%\%foo%\%foo%.ino copy %srcdir%\new_ino.ino %sbook%\%bar%\%foo%\%foo%.ino
Choice /C yn /M "Create Compile.cmd"
If Errorlevel 2 Goto nowexit
rem If Errorlevel 1 
cd %sbook%\%bar%\%foo%
start /w %srcdir%\TSet.cmd %foo%.ino
:nowexit
start %sbook%\%bar%\%foo%\%foo%.ino
popd
exit
