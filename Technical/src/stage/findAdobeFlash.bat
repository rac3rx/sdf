FOR /F %%i IN ('dir /b /s install_flash_player_ax.exe') DO echo %%~pi && echo %%i >> findAdobeFlash%date:~-4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%.txt 2>&1
