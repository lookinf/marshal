@echo off
REM %date:~0,4%%date:~5,2%%date:~8,2% 取得当前时间 年月日
REM 文件位置发生改变时只需改 filePath
REM set filePath=C:\Mark\work\
rem echo 当前盘符：%~d0
rem echo 当前盘符和路径：%~dp0
rem echo 当前批处理全路径：%~f0
rem echo 当前盘符和路径的短文件名格式：%~sdp0
rem echo 当前CMD默认目录：%cd%
set filePath=%cd:~0,-7%\work\
set file=%filePath%%date:~0,4%-%date:~5,2%.txt
cd /d c:\Program Files\EmEditor\
REM 异步调用EmEditor.exe编辑器，打开需要编辑的多个文件
REM @start EmEditor.exe C:\WINDOWS\system32\drivers\etc\hosts
REM @start EmEditor.exe D:\apache-tomcat-6.0.26\conf\server.xml
@start EmEditor.exe %filePath%question.txt
@if not exist %file% copy nul %file%
@echo %date%>>%file%
@copy %file% /A + %filePath%sample.txt /A %file%
@start EmEditor.exe %file%
REM @start iexplore.exe http://www.sohu.com/
REM start c:\windows
REM 
REM 关闭dos窗口
REM pause命令程序到此暂停，防止批处理玩后直接退出  pause>nul