@echo off
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
echo Enter Sketch Name
set /p foo=
if not exist %sbook%\%bar%\%foo%\. md %sbook%\%bar%\%foo%
if not exist %sbook%\%bar%\%foo%\%foo%.ino copy %srcdir%\new_ino.ino %sbook%\%bar%\%foo%\%foo%.ino
if exist %sbook%\%bar%\%foo%\%foo%.ino echo File already exists
Choice /C yn /M "Create Compile.cmd"
If Errorlevel 2 Goto nowexit
rem If Errorlevel 1 
cd %sbook%\%bar%\%foo%
start /w T:\Programs\TSet\TSet.cmd
:nowexit
start %sbook%\%bar%\%foo%\%foo%.ino
popd
exit