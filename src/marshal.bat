@echo off & setlocal EnableDelayedExpansion
rem 获取当前目录下所有以“*_plugin.bat”形式命名的文件的路径
for /f "delims=" %%i in ('"dir /a/s/b/on *_plugin.bat"') do (
set file=%%~fi
set file=!file:/=/!
Call !file!
rem echo !file! >> 内容.txt
)
exit
