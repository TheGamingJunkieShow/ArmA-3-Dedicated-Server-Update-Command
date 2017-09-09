@echo off
@rem http://media.steampowered.com/installer/steamcmd.zip
SETLOCAL ENABLEDELAYEDEXPANSION


    SET STEAMLOGIN=SteamID SteamPassword
    SET A3serverBRANCH=233780 -beta
    SET A3serverPath=ArmA 3 Dedicated Server Location
    SET STEAMPATH=Steam Location


:: _________________________________________________________

echo.
echo     You are about to update ArmA 3 server
echo        Dir: %A3serverPath%
echo        Branch: %A3serverBRANCH%
echo.
echo     Key "ENTER" to proceed
pause
%STEAMPATH%\steamcmd.exe +login %STEAMLOGIN% +force_install_dir %A3serverPath% +"app_update %A3serverBRANCH%" validate +quit
echo .
echo     Your ArmA 3 server is now up to date
echo     key "ENTER" to exit
pause
