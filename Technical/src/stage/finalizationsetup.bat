md %TEMP%\vmware_guestcust

if NOT "%1" == "blocklogin" goto skiploginblock
move /y loginblocker.exe %TEMP%\vmware_guestcust
xcopy /E /Q /Y /O imgres\* %TEMP%\vmware_guestcust
guestcustutil.exe setupLoginBlocker %TEMP%\vmware_guestcust\loginblocker.exe

:skiploginblock
move /y bootrun.exe %TEMP%\vmware_guestcust
move /y bootrunMsg.dll %TEMP%
move /y guestcustutil.exe %TEMP%\vmware_guestcust
move /y imgcust-reboot.exe %TEMP%\vmware_guestcust
move /y finalize.bat %TEMP%\vmware_guestcust
%TEMP%\vmware_guestcust\bootrun -service -delete_directory -wait_for_cmd_finish %SYSTEMROOT%\system32\cmd.exe /Q /c "cd %TEMP%\vmware_guestcust && finalize.bat"

