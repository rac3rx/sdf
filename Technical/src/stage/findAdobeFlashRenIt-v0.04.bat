:: myRen.bat
::   Usage:  myren Folder_Name
::   NB:  orginally to rename fiel extensions
:: @echo off

@echo off & setlocal EnableDelayedExpansion
pushd %*

for /F "delims=" %%i in ('dir /s /B install_flash_player_ax.exe') do (
  set file="%%~pi.old"
  :: NB: rename destination target cannot contain drive or path
  rename "%%i" install_flash_player_ax.exe.old) 

popd

:: End_of_Batch
