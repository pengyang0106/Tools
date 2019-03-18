@echo off
set /A i = 1
:loop

If %i%==1000 GOTO END
echo the Value of i is %i%
set /a i=%i%+1

REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Google\Chrome\ExtensionInstallForcelist /v Test%i% /d "Test Data %i%"

GOTO :loop
:END

