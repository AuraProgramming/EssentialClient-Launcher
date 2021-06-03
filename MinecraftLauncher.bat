@echo off
color 20
title MCBE Launcher by Aura
echo Loading...
timeout /nobreak /t 5 > nul
cls

set MinecraftBedrock.mcshortcut=%temp%\MinecraftBedrock.mcshortcut

:menu
echo 1. Launch Minecraft
set /p 1=

if "%1%"=="1" goto runmc

:runmc
if exist "%userprofile%\Documents\VerifiedImport.mcbe" goto speedy
cls
echo Loading Resources...
start msedge.exe https://download1491.mediafire.com/gno1h2spv74g/x813xnxvv0pbed9/Essential+Client.mcpack
timeout /nobreak /t 15 > nul
cls
echo Quick-starting Minecraft to import Resources... (Note: Do not press anything)
Start "" "Essential Client.mcpack"
timeout /nobreak /t 15 > nul
cls
echo Resources Loaded Sucessfully!
timeout /nobreak /t 1 > nul
cls
echo Cleaning Up Temporary Storage Files...
del /q "%userprofile%\Downloads\Essential Client.mcpack"
timeout /nobreak /t 2 > nul
cls
echo Verifying Resource Values...
echo resourcesloaded>>"%userprofile%\Documents\VerifiedImport.mcbe"
timeout /nobreak /t 3 > nul
:speedy
cls
timeout /nobreak /t 1 > nul
echo Verified Resource Values!
timeout /nobreak /t 1 > nul
cls
echo Full-Starting BRM...
timeout /nobreak /t 2 > nul
cls
echo Exiting in 3 seconds
timeout /nobreak /t 3 > nul
echo RUNMC>>%MinecraftBedrock.mcshortcut%
Start "" "%MinecraftBedrock.mcshortcut%"
cls
exit
