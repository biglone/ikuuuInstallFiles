@echo off & CD /D %~DP0 & TITLE
>NUL 2>&1 REG.exe query "HKU\S-1-5-19" || (echo �ýű�û�С��Թ���Ա������С� ����ϵ�ͷ�&echo.&pause&exit)

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Connections" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Connections" /f >nul 2>&1

rem echo 32bit
reg delete "HKLM\SOFTWARE\WOW6432Node\Policies\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxySettingsPerUser /f >nul 2>nul
rem echo 64bit
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxySettingsPerUser /f >nul 2>&1

echo ���������ٴμ��ϵͳ������

ping 127.0.0.1 -n 3 >nul