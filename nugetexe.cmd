@ECHO off

if not exist "%~dp0.nuget" mkdir "%~dp0.nuget"

if not exist "%~dp0.nuget\nuget.exe" (
	echo Invoke-WebRequest "https://dist.nuget.org/win-x86-commandline/latest/nuget.exe" -OutFile "%~dp0.nuget\nuget.exe" | powershell -command -
)

"%~dp0.nuget\nuget.exe"  %*


