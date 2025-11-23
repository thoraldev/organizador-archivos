@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
cls

echo.
echo ======================================================
echo === ORGANIZADOR DE ARCHIVOS POR EXTENSION ===
echo ======================================================
echo Carpeta: %CD%
echo Fecha: %date% %time%
echo.

set "script_name=%~nx0"
set "contador=0"
set "errores=0"
set "carpetas_creadas=0"

echo Deseas continuar? (S/N)
set /p confirmacion=
if /i not "!confirmacion!"=="s" (
    echo Operacion cancelada.
    pause
    exit /b
)

echo.
echo Procesando archivos...
echo.

for %%f in (*) do (
    set "full_ext=%%~xf"
    set "file_name=%%~nf"
    set "full_name=%%f"
    
    if not exist "!full_name!\" if not "!full_name!"=="!script_name!" if not "!full_ext!"=="" (
        
        set "folder_name=!full_ext:~1!"
        
        if not exist "!folder_name!" (
            mkdir "!folder_name!" 2>nul
            if !errorlevel! equ 0 (
                echo [+] Carpeta creada: !folder_name!
                set /a carpetas_creadas+=1
            ) else (
                echo [!] Error al crear carpeta: !folder_name!
                set /a errores+=1
            )
        )
        
        if exist "!folder_name!" (
            move "!full_name!" "!folder_name!\" >nul 2>&1
            if !errorlevel! equ 0 (
                echo [OK] !full_name! movido
                set /a contador+=1
            ) else (
                echo [ERR] No se pudo mover: !full_name!
                set /a errores+=1
            )
        )
    )
)

echo.
echo ======================================================
echo === RESUMEN DE LA ORGANIZACION ===
echo ======================================================
echo Archivos movidos: !contador!
echo Carpetas creadas: !carpetas_creadas!
echo Errores encontrados: !errores!
echo ======================================================
echo.
pause
ENDLOCAL