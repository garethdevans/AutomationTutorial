@echo off
echo !!! You must have Gallio installed and have Gallio.Echo.exe in the PATH to run this batch file !!!
Gallio.Echo.exe /pd:lib\Gallio-Concordion-Adapter /hd:lib\Gallio-Concordion-Adapter /runner:Local /wd:. src\concordion.spec\bin\Release\Concordion.Spec.dll
pause