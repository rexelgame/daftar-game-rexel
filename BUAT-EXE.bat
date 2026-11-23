@echo off
cd /d "%~dp0"
call npm install
call npm install --save-dev electron-builder
call npm run dist
pause
