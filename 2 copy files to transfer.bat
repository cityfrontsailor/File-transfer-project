@echo off
set "sourceFolder=C:\Users\Gaming Rig\Documents\GitHub\File Transfer Project\User Selected Build Folder"
set "destinationFolder=C:\Users\Gaming Rig\Documents\GitHub\File Transfer Project\Robot FTP Site"

if not exist "%destinationFolder%" (
    mkdir "%destinationFolder%"
)

for %%F in ("%sourceFolder%\*") do (
    copy "%%F" "%destinationFolder%\"
)

echo All files moved successfully.
