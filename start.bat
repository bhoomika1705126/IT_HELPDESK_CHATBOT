@echo off
echo ========================================
echo  IT HELPDESK BOT - Quick Start
echo ========================================
echo.

echo Checking Python installation...
python --version
if errorlevel 1 (
    echo ERROR: Python not found! Please install Python 3.11+
    pause
    exit /b 1
)

echo.
echo Installing dependencies...
pip install -r requirements.txt

echo.
echo Creating .env file if not exists...
if not exist .env (
    copy .env.example .env
    echo .env file created! Please edit it with your API keys.
)

echo.
echo ========================================
echo  Starting IT Helpdesk Bot...
echo ========================================
echo.
echo Web Interface: http://localhost:8000
echo API Docs: http://localhost:8000/docs
echo.
echo Press Ctrl+C to stop the server
echo.

python app.py

pause
