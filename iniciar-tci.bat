@echo off
echo ====================================
echo  Inicializando TCI como tciphantom.com
echo ====================================

where python >nul 2>nul
if %errorlevel% neq 0 (
    echo Python não está instalado. Instale o Python 3.x para continuar.
    pause
    exit /b
)

start "" http://tciphantom.com:8000
python -m http.server 8000

pause
