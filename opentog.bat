@echo off
chcp 65001 >nul
color 0F
cls

:: Animation chữ TOG SYSTEM
echo.
echo  ═══════════════════════════════════════════════════════════════
echo   Loading TOG SYSTEM...
echo  ═══════════════════════════════════════════════════════════════

:: Animation loading
for /l %%i in (1,1,20) do (
    cls
    echo.
    echo  ═══════════════════════════════════════════════════════════════
    echo   Loading TOG SYSTEM... [█%random:~-2%%%]
    echo  ═══════════════════════════════════════════════════════════════
    timeout /t 0.05 >nul
)

cls
echo.
echo  ═══════════════════════════════════════════════════════════════
echo   [SYSTEM TOG - READY]
echo  ═══════════════════════════════════════════════════════════════
timeout /t 0.5 >nul

:: Màu xanh nước biển + đỏ
:header
cls
echo.
color 0B
echo     ███████╗██╗   ██╗███████╗████████╗███████╗███╗   ███╗
echo     ██╔════╝╚██╗ ██╔╝██╔════╝╚══██╔══╝██╔════╝████╗ ████║
echo     ███████╗ ╚████╔╝ ███████╗   ██║   █████╗  ██╔████╔██║
echo     ╚════██║  ╚██╔╝  ╚════██║   ██║   ██╔══╝  ██║╚██╔╝██║
echo     ███████║   ██║   ███████║   ██║   ███████╗██║ ╚═╝ ██║
echo     ╚══════╝   ╚═╝   ╚══════╝   ╚═╝   ╚══════╝╚═╝     ╚═╝
color 0C
echo.
echo     ████████╗ ██████╗  ██████╗ 
echo     ╚══██╔══╝██╔═══██╗██╔════╝ 
echo        ██║   ██║   ██║██║  ███╗
echo        ██║   ██║   ██║██║   ██║
echo        ██║   ╚██████╔╝╚██████╔╝
echo        ╚═╝    ╚═════╝  ╚═════╝ 
color 0B
echo.
echo     ╔═══════════════════════════════════════════════════════════════╗
echo     ║  TOG SYSTEM V1.0                                              ║
echo     ║  Type 'help' for commands                                    ║
echo     ║  Type 'exit' to quit                                         ║
echo     ╚═══════════════════════════════════════════════════════════════╝
color 0F
echo.

:menu
color 0B
set /p cmd="TOG ❯ "

if "%cmd%"=="exit" goto end
if "%cmd%"=="help" goto help

:: Tất cả lệnh khác đều bị từ chối
if "%cmd%"=="" goto menu
goto denied

:denied
color 0C
echo.
echo  ═══════════════════════════════════════════════════════════════
echo   [TOG] ⛔ COMMAND NOT AVAILABLE
echo   [TOG] Only 'help' and 'exit' are supported
echo  ═══════════════════════════════════════════════════════════════
color 0F
timeout /t 2 >nul
goto menu

:help
color 0E
echo.
echo  ═══════════════════════════════════════════════════════════════
echo   TOG SYSTEM - HELP
echo.
color 0B
echo    help             - Show this help
echo    exit             - Exit TOG SYSTEM
echo.
color 0E
echo    ⚠️  Only these commands are available
echo  ═══════════════════════════════════════════════════════════════
color 0F
goto menu

:end
color 0E
echo.
echo  ═══════════════════════════════════════════════════════════════
echo  TOG SYSTEM - Goodbye! 👋
echo  ═══════════════════════════════════════════════════════════════
color 0F
timeout /t 1 >nul
exit
