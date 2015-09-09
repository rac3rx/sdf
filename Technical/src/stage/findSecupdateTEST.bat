FOR /R %%i IN (SecUpdate.bat) DO cd %%~pi && call %%i >> findSecLog%date:~-4%%date:~4,2%%date:~7,2%_%%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%.txt 2>&1
cd \