@echo off
setlocal

REM Get the directory where the script is located
set SCRIPT_DIR=%~dp0

REM Remove the trailing backslash
set SCRIPT_DIR=%SCRIPT_DIR:~0,-1%

REM Check if the directory is already in the PATH
echo %PATH% | find /I "%SCRIPT_DIR%" >nul
if %errorlevel%==0 (
    echo The directory %SCRIPT_DIR% is already in the PATH.
) else (
    REM Add the directory to the PATH environment variable
    setx PATH "%PATH%;%SCRIPT_DIR%"
    echo The directory %SCRIPT_DIR% has been added to the PATH.
)

endlocal