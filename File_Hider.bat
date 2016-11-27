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
echo Would you like to hide of show
echo Format-"hide","show"
set /p hs=""

:-Main

IF "%hs%"=="hide" GOTO :hide 
IF "%hs%"=="show" GOTO :show 
goto error

:hide
attrib +s +h %name%
cls
echo File Succesfully hidden
goto end
:show
attrib -s -h %name%
cls
echo File Succesfully un-hidden
goto end
:end
timeout 3 >nul
echo See You Soon
exit

:error
cls
echo error incorrect format
echo %hs% is not a valid answer
echo please try again
timeout 3 >nul
cls
goto question