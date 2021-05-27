@echo off
powershell Invoke-WebRequest -Uri https://raw.githubusercontent.com/AuraProgramming/EssentialClient-Launcher/main/MinecraftLauncher.bat -OutFile "%temp%\MinecraftLauncher.txt"
rename "%temp%\MinecraftLauncher.txt" "MinecraftLauncher.bat"
echo Would you like to install the update? Y/N
choice /c yn /n
if "%errorlevel%"=="1" goto install
if "%errorlevel%"=="2" goto cancel
pause>nul

:install
del /q "%userprofile%\.mclauncher\Minecraft Launcher.bat"
move /y "%temp%\MinecraftLauncher.bat" "%userprofile%\.mclauncher\"
cls
echo Update installed successfully!
pause>nul
exit

:cancel
cls
echo Cancelling...
pause>nul
exit
