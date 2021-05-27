@echo off
powershell Invoke-WebRequesthttps://raw.githubusercontent.com/AuraProgramming/EssentialClient-Lancher/main/Minecraft%20Launcher.bat -OutFile "%temp%\Minecraft Launcher.bat"
choice /c Y/N /n /m Would you like to install the update?
if %errorlevel%==1 goto install
if %errorlevel%==2 goto cancel

:install
del /q "%userprofile%\.mclauncher\Minecraft Launcher.bat"
move /y "%temp%\Minecraft Launcher.bat" "%userprofile%\.mclauncher\"
cls
echo Update installed successfully!
exit

:cancel
cls
echo Cancelling...
pause>nul
exit
