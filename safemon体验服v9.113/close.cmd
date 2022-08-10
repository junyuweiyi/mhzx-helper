@echo off
set exe=gameclient.exe
set /a num=5
if "%1"=="" goto c

set /a n=0
for /f "delims=" %%a in ('tasklist^|findstr /i "%exe%"') do set /a n+=1
if %n% gtr %num% goto a

goto b

:a
echo 关闭所有
Taskkill /f /im launcher.exe
Taskkill /f /im %exe% /fi "pid ne %1"
ping 127.1 -n 6
Taskkill /f /im /pid %1"
Taskkill /f /im %exe%
goto e


:b
echo 关闭当前
Taskkill /f /im launcher.exe
ping 127.1 -n 6
Taskkill /f /im /pid %1"
goto e

:c
echo 全部关闭
Taskkill /f /im %exe%

:e