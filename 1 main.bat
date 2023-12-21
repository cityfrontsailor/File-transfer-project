@echo off

#1 Set directory 
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



# 2 copy files to transfer.bat
set "sourceFolder=C:\Users\Gaming Rig\Documents\GitHub\File Transfer Project\User Selected Build Folder"
set "destinationFolder=C:\Users\Gaming Rig\Documents\GitHub\File Transfer Project\Robot FTP Site"

if not exist "%destinationFolder%" (
    mkdir "%destinationFolder%"
)

for %%F in ("%sourceFolder%\*") do (
    copy "%%F" "%destinationFolder%\"
)

echo All files moved successfully.

# 3 make connections with FTP



# 4 Copy all files to the robot FTP Site


#5 Create archive folder


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
set "archive=C:\Users\Gaming Rig\Documents\GitHub\File Transfer Project\Archive\%year%%month%%day%_%hour%%minute%"
mkdir "%archive%"


set "sourceFolder=C:\Users\Gaming Rig\Documents\GitHub\File Transfer Project\Robot FTP Site"
set "destinationFolder=C:\Users\Gaming Rig\Documents\GitHub\File Transfer Project\Archive\%year%%month%%day%_%hour%%minute%"

if not exist "%destinationFolder%" (
    mkdir "%destinationFolder%"
)

for %%F in ("%sourceFolder%\*") do (
    move "%%F" "%destinationFolder%\"
)

echo All files moved successfully.

