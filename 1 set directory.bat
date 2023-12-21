@echo off
setlocal

REM Prompt the user to select a file directory
set /p "directory=Enter the file directory: "

REM Check if the directory exists
if not exist "%directory%" (
    echo Directory does not exist.
    exit /b
)

REM Change the current directory to the selected directory
cd /d "%directory%"

REM Run the batch file
call "1 set directory.bat"

endlocal
