# @ECHO off
SETLOCAL

SET nugetfolder="%~dp0.nuget"
SET nugetpath="%nugetfolder%\nuget.exe"

if not exist "%nugetfolder%" mkdir "%nugetfolder%"

if not exist "%nugetpath%" (
	echo Invoke-WebRequest "https://dist.nuget.org/win-x86-commandline/latest/nuget.exe" -OutFile "%nugetpath%" | powershell -command -
)

"%nugetpath%"  %*


