@echo off
chcp 65001 >nul
cls
echo.
echo     ███████╗██╗   ██╗███████╗████████╗███████╗███╗   ███╗
echo     ██╔════╝╚██╗ ██╔╝██╔════╝╚══██╔══╝██╔════╝████╗ ████║
echo     ███████╗ ╚████╔╝ ███████╗   ██║   █████╗  ██╔████╔██║
echo     ╚════██║  ╚██╔╝  ╚════██║   ██║   ██╔══╝  ██║╚██╔╝██║
echo     ███████║   ██║   ███████║   ██║   ███████╗██║ ╚═╝ ██║
echo     ╚══════╝   ╚═╝   ╚══════╝   ╚═╝   ╚══════╝╚═╝     ╚═╝
echo.
echo     ████████╗ ██████╗  ██████╗ 
echo     ╚══██╔══╝██╔═══██╗██╔════╝ 
echo        ██║   ██║   ██║██║  ███╗
echo        ██║   ██║   ██║██║   ██║
echo        ██║   ╚██████╔╝╚██████╔╝
echo        ╚═╝    ╚═════╝  ╚═════╝ 
echo.
echo     ╔═══════════════════════════════════════════════════════╗
echo     ║  TOG SYSTEM V1.0                                      ║
echo     ║  Type commands or Python code directly                ║
echo     ║  Type 'help' for commands                             ║
echo     ╚═══════════════════════════════════════════════════════╝
echo.

:menu
set /p cmd="TOG ❯ "

if "%cmd%"=="exit" goto end
if "%cmd%"=="help" goto help
if "%cmd:~0,4%"=="new " goto new
if "%cmd:~0,7%"=="create " goto create
if "%cmd:~0,5%"=="edit " goto edit
if "%cmd:~0,4%"=="run " goto run
if "%cmd%"=="list" goto list
if "%cmd%"=="cls" goto clear
if "%cmd%"=="" goto menu

:: Chạy code Python trực tiếp
echo.
echo  ═══════════════════════════════════════════════════════════
python -c "%cmd%" 2>nul
if errorlevel 1 (
    echo  [TOG] Error in code!
)
echo  ═══════════════════════════════════════════════════════════
goto menu

:help
echo.
echo  ═══════════════════════════════════════════════════════════
echo   TOG SYSTEM COMMANDS:
echo.
echo    new ^<name^>      - Create new project
echo    create ^<file^>   - Create new file
echo    edit ^<file^>     - Edit file with notepad
echo    run ^<file^>      - Run Python file
echo    list             - List all files
echo    cls              - Clear screen
echo    exit             - Exit TOG SYSTEM
echo.
echo   Or type Python code directly!
echo    Example: print("Hello TOG")
echo  ═══════════════════════════════════════════════════════════
goto menu

:new
mkdir "%cmd:~4%" 2>nul
if exist "%cmd:~4%" (
    echo  [TOG] Project created: %cmd:~4%
) else (
    echo  [TOG] Cannot create project
)
goto menu

:create
echo # %cmd:~7% > "%cmd:~7%" 2>nul
if exist "%cmd:~7%" (
    echo  [TOG] File created: %cmd:~7%
) else (
    echo  [TOG] Cannot create file
)
goto menu

:edit
if exist "%cmd:~5%" (
    notepad "%cmd:~5%"
) else (
    echo  [TOG] File not found: %cmd:~5%
)
goto menu

:run
if exist "%cmd:~4%" (
    echo  [TOG] Running: %cmd:~4%
    echo  ═══════════════════════════════════════════════════════════
    python "%cmd:~4%"
    echo  ═══════════════════════════════════════════════════════════
) else (
    echo  [TOG] File not found: %cmd:~4%
)
goto menu

:list
echo.
echo  ═══════════════════════════════════════════════════════════
echo  TOG SYSTEM - Files in %cd%:
echo  ═══════════════════════════════════════════════════════════
dir /b
echo  ═══════════════════════════════════════════════════════════
goto menu

:clear
cls
goto menu

:end
echo.
echo  ═══════════════════════════════════════════════════════════
echo  TOG SYSTEM - Goodbye!
echo  ═══════════════════════════════════════════════════════════
timeout /t 1 >nul
exit