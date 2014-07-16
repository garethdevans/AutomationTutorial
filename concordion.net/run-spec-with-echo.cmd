@echo off

:: Ensure msbuild is on path
set PATH=%SystemRoot%\Microsoft.NET\Framework\v4.0.30319;%PATH%

:: Build in Release configuration
set config=Release

:: this will pickup the solution file
msbuild /p:Configuration=%config%

echo !!! You must have Gallio installed and have Gallio.Echo.exe in the PATH to run this batch file !!!

Gallio.Echo.exe /pd:lib\Gallio-Concordion-Adapter /hd:lib\Gallio-Concordion-Adapter /runner:Local /wd:. src\concordion.spec\bin\%config%\Concordion.Spec.dll
pause