FOR /F %%i IN ('dir /b /s install_flash_player_ax.exe') DO echo %%~pi && echo %%i >> findAdobeFlash%date:~-4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%.txt 2>&1
:: findAdobeFlash20100830_.txt
:: 2010       08          30
:: %date:~-4% %date:~4,2% %date:~7,2%
::
:: 08          30          2010
:: %date:~4,2% %date:~7,2% %date:~-4%
::
:: mm          dd          yy
:: %date:~4,2% %date:~7,2% %date:~-2%
:: %date:~4,2%%date:~7,2%%date:~-2%

