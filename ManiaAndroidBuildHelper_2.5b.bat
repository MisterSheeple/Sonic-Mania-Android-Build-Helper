@echo off
echo ------------------------------------------------------
echo   KiaraGale's Sonic Mania Android Build Helper v2.5b
echo ------------------------------------------------------
echo.
echo                                                  WARNING:
echo.
echo Before continuing, please consult the guide at https://github.com/Kiaru-the-Fox/Sonic-Mania-Android-Build-Guide/
echo.
pause
echo.
goto preferences

:preferences
set touch=y
set ultrawide=y
set extraslotamy=n
set hypermania=n
set /p touch=Build with Touch Control support? (y/n; default is y) 
set /p ultrawide=Build with Ultra-Widescreen support? (y/n; default is y) 
set /p extraslotamy=Build with Extra Slot Amy support? (y/n; default is n) 
set /p hypermania=Build with HyperMania support? (y/n; default is n) 
cls
goto clone

:clone
git clone https://github.com/Rubberduckycooly/Sonic-Mania-Decompilation.git "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation
git clone https://github.com/Rubberduckycooly/RSDKv5-Example-Mods.git "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\RSDKv5-Example-Mods
git clone https://github.com/Rubberduckycooly/GameAPI.git "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\GameAPI
git clone https://github.com/Rubberduckycooly/RSDKv5-Decompilation.git "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5 --recursive
echo Cloning done.
cls
goto dependencies

:dependencies
cd "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android
curl -L http://downloads.xiph.org/releases/theora/libtheora-1.1.1.zip --output libtheora.zip
curl -L http://downloads.xiph.org/releases/ogg/libogg-1.3.5.zip --output libogg.zip
powershell -command "Expand-Archive -LiteralPath '"%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libtheora.zip' -DestinationPath '"%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\'"
powershell -command "Expand-Archive -LiteralPath '"%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg.zip' -DestinationPath '"%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\'"
pause
rename libtheora-1.1.1 libtheora
pause
for /f %%a IN ('dir ""%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg-1.3.5" /b') do move ""%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg-1.3.5\%%a" ""%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg\"
pause
move "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg-1.3.5\include\Makefile.am "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg\include\Makefile.am
move "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg-1.3.5\include\Makefile.in "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg\include\Makefile.in
move "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg-1.3.5\include\ogg\config_types.h.in "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg\include\ogg\config_types.h.in
move "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg-1.3.5\include\ogg\Makefile.am "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg\include\ogg\Makefile.am
move "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg-1.3.5\include\ogg\Makefile.in "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg\include\ogg\Makefile.in
move "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg-1.3.5\include\ogg\ogg.h "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg\include\ogg\ogg.h
move "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg-1.3.5\include\ogg\os_types.h "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg\include\ogg\os_types.h
pause
rmdir "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg-1.3.5\ /s /q
del libtheora.zip libogg.zip
echo Dependencies done.
pause
xcopy "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libogg "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\windows\libogg /s /y /i
xcopy "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\android\libtheora "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\dependencies\windows\libtheora /s /y /i
echo Dependency copy done.
pause
cls
goto touchsetup

:touchsetup
cd "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\RSDKv5-Example-Mods\ManiaTouchControls
if /I %touch%==n (goto ultrawidesetup)
cd "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\GameAPI
xcopy "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\GameAPI "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\RSDKv5-Example-Mods\ManiaTouchControls\GameAPI /s /y /i
pause
goto ultrawidesetup

:ultrawidesetup
cd "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\RSDKv5-Example-Mods\UltrawideMania
if /I %ultrawide%==n (goto extraslotamy)
cd "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\GameAPI
xcopy "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\GameAPI "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\RSDKv5-Example-Mods\UltrawideMania\GameAPI /s /y /i
pause
goto extraslotamy

:extraslotamy
if /I %extraslotamy%==n (goto hypermania)
git clone https://github.com/Kiaru-the-Fox/Sonic-Mania-Decomp-Extra-Slot-Amy.git "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decomp-Extra-Slot-Amy
cd "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decomp-Extra-Slot-Amy
xcopy "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decomp-Extra-Slot-Amy\SonicMania "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\SonicMania /s /y /i
xcopy "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decomp-Extra-Slot-Amy\dependencies "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies /s /y /i
pause
goto hypermania

:hypermania
if /I %hypermania%==n (goto mainsymlinksetup)
git clone https://github.com/tariq-nasheed/HyperMania "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\HyperMania
cd "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\HyperMania\src
cd "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\GameAPI
xcopy "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\GameAPI "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\HyperMania\src\GameAPI /s /y /i
pause
goto mainsymlinksetup

:mainsymlinksetup
cd "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5\android\app\jni
mklink /D "Game" "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation
mklink /D "RSDKv5" "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\Sonic-Mania-Decompilation\dependencies\RSDKv5
if /I %touch%==y mklink /D "MTouchCtrl" "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\RSDKv5-Example-Mods\ManiaTouchControls
if /I %ultrawide%==y mklink /D "UWMania" "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\RSDKv5-Example-Mods\UltrawideMania
if /I %hypermania%==y mklink /D "HyperMania" "%USERPROFILE%"\Sonic-Mania-Android-Sheeple\HyperMania\src
echo Symlink setup done.
goto finish

:finish
cls
color AF
echo --------------------------------------------------------------------------------------------------------------------
echo SETUP COMPLETE. Please continue with the guide at https://github.com/Kiaru-The-Fox/Sonic-Mania-Android-Build-Guide/
echo --------------------------------------------------------------------------------------------------------------------
echo.
pause
exit