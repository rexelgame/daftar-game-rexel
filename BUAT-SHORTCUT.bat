@echo off
cd /d "%~dp0"
if not exist node_modules\electron\dist\electron.exe (
  echo Jalankan JALANKAN.bat dulu sekali sampai aplikasi terbuka, lalu jalankan file ini lagi.
  pause
  exit /b
)
set APPDIR=%CD%
powershell -NoProfile -Command "$q=[char]34;$d=[Environment]::GetFolderPath('Desktop');$s=(New-Object -ComObject WScript.Shell).CreateShortcut($d+'\Daftar Game Rexel.lnk');$s.TargetPath=$env:APPDIR+'\node_modules\electron\dist\electron.exe';$s.Arguments=$q+$env:APPDIR+$q;$s.WorkingDirectory=$env:APPDIR;$s.IconLocation=$env:APPDIR+'\icon.ico';$s.Save()"
echo Ikon "Daftar Game Rexel" sudah dibuat di Desktop.
pause
