@echo off
MD %userprofile%\.mclauncher
MOVE "%userprofie%\Downloads\EssentialClient-Launcher-main\EssentialClient-Launcher-main\Update.bat" "%userprofile%\.mclauncher\"
MOVE "%userprofie%\Downloads\EssentialClient-Launcher-main\EssentialClient-Launcher-main\V1.1.version" "%userprofile%\.mclauncher\"
MOVE "%userprofie%\Downloads\EssentialClient-Launcher-main\EssentialClient-Launcher-main\MinecraftLauncher.bat" "%userprofile%\.mclauncher\"
del /q "%userprofie%\Downloads\EssentialClient-Launcher-main\
echo %random%%random%%random%%random%>>"%userprofile%\Personal Key.uuid"
CD %USERPROFILE%
attrib +h "%USERPROFILE%\Personal Key.uuid"
