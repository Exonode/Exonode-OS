rem Boo Hoo
@echo off
Title [Exonode-OS] [Beta-0.0.01]
SET sysDir=\SysDir
SET progDir=\progDir
SET cmdDir=\cmdDir
:Login
rem Oh Look a login
if exist Login.cmd (
    rem Want it to exist for now
) else (
    goto MissingLogin
)

:MissingLogin
echo ======================================================
echo     - Required File Missing: [Login.cmd]
echo     - Please Update To Obtain This File
echo [If Update Returns Error Please Make An Issue Request]
echo ======================================================
goto PauseLoop

:PauseLoop
pause>nul
goto PauseLoop
