@echo off
cd /d "%~dp0"
docker compose up -d
echo.
echo Si no hay errores, MySQL esta arrancado en localhost:3306 (root / pwd, base de datos ad).
echo La primera vez tarda un poco en descargar la imagen y cargar los datos.
pause
