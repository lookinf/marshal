@echo off&setlocal EnableDelayedExpansion
color 0a
echo %date% %time%
cd \
cd C:\WINDOWS\system32\drivers\etc
set/p option=���������ѡ��:1���أ�2���� 3����

if "%option%"=="1" copy /y C:\WINDOWS\system32\drivers\etc\back\hosts_develop C:\WINDOWS\system32\drivers\etc\hosts
if "%option%"=="2" copy /y C:\WINDOWS\system32\drivers\etc\back\hosts_123 C:\WINDOWS\system32\drivers\etc\hosts
if "%option%"=="3" copy /y C:\WINDOWS\system32\drivers\etc\back\hosts C:\WINDOWS\system32\drivers\etc\hosts
exit
