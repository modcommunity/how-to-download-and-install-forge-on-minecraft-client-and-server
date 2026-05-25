@echo off
:start
echo Starting Minecraft Forge Server...
title Minecraft Forge Server (Auto-Restart)

:: Call the official Forge run script
call run.bat

echo.

echo Server stopped or crashed! Restarting in 10 seconds...
echo Press Ctrl+C to cancel the auto-restart loop.

timeout /t 10

goto start