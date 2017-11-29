@ECHO off
REM nuget.exe bootstrapper - from https://github.com/arvesv/SmallTools/blob/master/nugetexe.cmd 
REM A replacement for nuget.exe to avoid checkin in binaries under source control0

SETLOCAL

SET nugetfolder="%~dp0.nuget"
SET nugetpath="%nugetfolder%\nuget.exe"

if not exist "%nugetfolder%" mkdir "%nugetfolder%"

if not exist "%nugetpath%" (
	echo Invoke-WebRequest "https://dist.nuget.org/win-x86-commandline/latest/nuget.exe" -OutFile "%nugetpath%" | powershell -command -
)

set TMP=.
"%nugetpath%"  %*


