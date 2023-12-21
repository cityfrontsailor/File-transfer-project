@echo off
setlocal

REM Get current date and time
for /f "tokens=1-4 delims=/ " %%i in ('date /t') do (
    set year=%%l
    set month=%%j
    set day=%%k
)
for /f "tokens=1-2 delims=: " %%i in ('time /t') do (
    set hour=%%i
    set minute=%%j
)

REM Create folder with the name
set folderName=%year%%month%%day%_%hour%%minute%
mkdir "%folderName%"

