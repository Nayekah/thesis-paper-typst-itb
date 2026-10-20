@echo off
setlocal

if /i "%~1"=="format" goto format
if /i "%~1"=="format-check" goto format_check
if not "%~1"=="" goto unknown_command

:build
if not exist build mkdir build

set "TINYMIST_BIN="
where tinymist >nul 2>nul
if not errorlevel 1 set "TINYMIST_BIN=tinymist"

if not defined TINYMIST_BIN (
  for /d %%D in ("%USERPROFILE%\.vscode\extensions\myriad-dreamin.tinymist-*-win32-x64") do (
    if exist "%%~fD\out\tinymist.exe" set "TINYMIST_BIN=%%~fD\out\tinymist.exe"
  )
)

if not defined TINYMIST_BIN (
  echo Tinymist tidak ditemukan. Pasang ekstensi VS Code myriad-dreamin.tinymist atau tambahkan Tinymist CLI ke PATH.
  exit /b 1
)

"%TINYMIST_BIN%" compile --root . paper/main.typ build/main.pdf

if errorlevel 1 exit /b %errorlevel%
echo Dokumen tersedia di build\main.pdf
exit /b 0

:format
where typstyle >nul 2>nul
if errorlevel 1 goto typstyle_missing
typstyle --line-ending=crlf -i paper
if errorlevel 1 exit /b %errorlevel%
echo Semua berkas Typst telah diformat.
exit /b 0

:format_check
where typstyle >nul 2>nul
if errorlevel 1 goto typstyle_missing
typstyle --check --line-ending=crlf paper
if errorlevel 1 exit /b %errorlevel%
echo Semua berkas Typst sudah sesuai dengan Typstyle.
exit /b 0

:typstyle_missing
echo Typstyle tidak ditemukan. Pasang dari rilis resmi atau jalankan: cargo install typstyle --version 0.15.2 --locked
exit /b 1

:unknown_command
echo Perintah tidak dikenal: %~1
echo Gunakan make.bat, make.bat format, atau make.bat format-check.
exit /b 1

