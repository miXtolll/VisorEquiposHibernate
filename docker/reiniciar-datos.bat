@echo off
cd /d "%~dp0"
echo Esto borra los datos del MySQL de esta carpeta y los vuelve a cargar desde init.
pause
docker compose down -v
docker compose up -d
echo.
echo Listo. MySQL en localhost:3306 (root / pwd, base de datos ad).
pause
