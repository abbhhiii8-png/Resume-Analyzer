@echo off
echo ========================================================
echo Starting ResumeAI Backend Server...
echo ========================================================
cd backend

:: Detect Python executable
set PYTHON_CMD=
where python >nul 2>nul
if %ERRORLEVEL% equ 0 (
    set PYTHON_CMD=python
) else (
    where py >nul 2>nul
    if %ERRORLEVEL% equ 0 (
        set PYTHON_CMD=py
    )
)

if "%PYTHON_CMD%"=="" (
    echo [ERROR] Python was not found on your system!
    echo Please install Python from https://www.python.org/downloads/
    echo Make sure to check the box "Add Python to PATH" during installation.
    echo ========================================================
    pause
    exit /b 1
)

echo Using Python command: %PYTHON_CMD%
echo.
echo Installing/Updating dependencies...
%PYTHON_CMD% -m pip install -r requirements.txt
if %ERRORLEVEL% neq 0 (
    echo [WARNING] Dependency installation returned an error. Trying to proceed anyway...
)

echo.
echo Starting Flask Server...
%PYTHON_CMD% app.py
pause
