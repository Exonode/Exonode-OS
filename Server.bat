@echo off
rem Boo Hoo
Title [Exonode-OS] [Beta-0.0.01]
>nul find "SubUser1=Admin" Login.cmd && (
  >nul find "SubUser1Pass=password123" Login.cmd && (
      goto MyLogin
  ) || (
      goto MissingLogin
  )
) || (
  >nul find "SubUser2=Kevin" Login.cmd && (
      >nul find "SubUser2Pass=devPW" Login.cmd && (
	      goto MyLogin
	  ) || (
	      goto MissingLogin
	  )
  ) || (
      goto MissingLogin
  )
)

:Login
rem Oh Look a login
if exist Login.cmd (
    %userCwd%
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

:MyLogin
echo 4
goto PauseLoop
