@echo off
REM %date:~0,4%%date:~5,2%%date:~8,2% ȡ�õ�ǰʱ�� ������
REM �ļ�λ�÷����ı�ʱֻ��� filePath
REM set filePath=C:\Mark\work\
rem echo ��ǰ�̷���%~d0
rem echo ��ǰ�̷���·����%~dp0
rem echo ��ǰ������ȫ·����%~f0
rem echo ��ǰ�̷���·���Ķ��ļ�����ʽ��%~sdp0
rem echo ��ǰCMDĬ��Ŀ¼��%cd%
set filePath=%cd:~0,-7%\work\
set file=%filePath%%date:~0,4%-%date:~5,2%.txt
cd \
c:
cd c:\Program Files\EmEditor\
REM �첽����EmEditor.exe�༭��������Ҫ�༭�Ķ���ļ�
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
REM �ر�dos����

REM pause������򵽴���ͣ����ֹ���������ֱ���˳�  pause>nul

