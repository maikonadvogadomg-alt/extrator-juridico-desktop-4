@echo off
chcp 65001 >nul 2>&1
title Extrator Juridico — OAB/MG 183712

echo.
echo  ╔══════════════════════════════════════════╗
echo  ║  ⚖️  EXTRATOR JURIDICO v2.0             ║
echo  ║  Maikon Caldeira — OAB/MG 183712        ║
echo  ╚══════════════════════════════════════════╝
echo.
echo  Abrindo no navegador...
echo.

set FILE=%~dp0index.html

start "" "chrome.exe" "%FILE%" 2>nul || ^
start "" "msedge.exe" "%FILE%" 2>nul || ^
start "" "firefox.exe" "%FILE%" 2>nul || ^
start "" "%FILE%"

echo  OK! Se nao abriu, arraste index.html para o Chrome.
echo.
pause
