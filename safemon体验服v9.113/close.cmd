@echo off
set exe=gameclient.exe
set /a num=5
if "%1"=="" goto c

set /a n=0
for /f "delims=" %%a in ('tasklist^|findstr /i "%exe%"') do set /a n+=1
if %n% gtr %num% goto a

goto b

:a
echo �ر�����
Taskkill /f /im launcher.exe
Taskkill /f /im %exe% /fi "pid ne %1"
ping 127.1 -n 6
Taskkill /f /im /pid %1"
Taskkill /f /im %exe%
goto e


:b
echo �رյ�ǰ
Taskkill /f /im launcher.exe
ping 127.1 -n 6
Taskkill /f /im /pid %1"
goto e

:c
echo ȫ���ر�
Taskkill /f /im %exe%

:e