@echo off & setlocal EnableDelayedExpansion
rem ��ȡ��ǰĿ¼�������ԡ�*_plugin.bat����ʽ�������ļ���·��
for /f "delims=" %%i in ('"dir /a/s/b/on *_plugin.bat"') do (
set file=%%~fi
set file=!file:/=/!
Call !file!
rem echo !file! >> ����.txt
)
exit
