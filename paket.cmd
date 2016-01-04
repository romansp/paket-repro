@echo off

REM we need to install paket locally
if not exist .paket\paket.exe (
    ECHO Paket not found.. Installing..
    .paket\paket.bootstrapper.exe
        if errorlevel 1 (
        exit /b %errorlevel%
    )
)

.paket\paket.exe %*