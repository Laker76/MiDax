@echo off
cd /d %~dp0
cd ..\MidaxTester\expected_results
for /r . %%A in (anngen_*.csv) DO CALL :loopbody %%~nxA
cd ..\..\Midax
GOTO :EOF
:loopbody
SET curcsv=%1
echo %curcsv%
copy /Y %curcsv% ..\..\AlgoTesting\algotest_%curcsv:~7%
GOTO :EOF
