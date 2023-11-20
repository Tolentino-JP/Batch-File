@echo off
:: mkdir = make new directory
:: rmdir = remove directory
:: cmd /k folder.bat

set "newFolder=C:\Users\csar1018031\Desktop\csar"

set "folderName=folder1"

set "fullPath=%newFolder%\%folderName%"

if not exist "%fullPath%" (
    mkdir "%fullPath%"
    echo Folder created successfully
) else (
    echo Folder already exists
)



pause