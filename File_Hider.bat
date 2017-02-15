title "FileHider"
color 0a
@echo off
cls
echo Welcome to File Hider
timeout 3 >nul
cls
echo Your Current Directory Is:
cd
timeout 4 >nul
set /P name="Enter File Name: "
cls
:question
echo Would you like to hide or show
echo Format-"hide","show"
set /p hs=""

:-Main

IF "%hs%"=="hide" attrib +s +h %name%
IF "%hs%"=="show" attrib -s -h %name%
