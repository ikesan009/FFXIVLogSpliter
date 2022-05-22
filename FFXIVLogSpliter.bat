@echo off

REM #############################################################################
set taskname=Split FFXIV Logs
set workdir=%CD%
set settingstxt=%workdir%\settings.txt
set loglist=%workdir%\temp.txt
REM #############################################################################

REM #### load setting file ####
for /f "tokens=1,* delims==" %%a in (%settingstxt%) do (
    set %%a=%%b
)

REM #### kill ACT process ####
echo ### ACTを停止しています．．．
taskkill /F /IM "Advanced Combat Tracker.exe" /T

REM #### archive the latest log ####
echo ### 最新のログをアーカイブしています．．．
dir /b /o-d "%ffxivlogdir%\Network_?????_????????.log" > %loglist%
set /P latestlog=<%loglist%
dir /b /o-d "%ffxivlogdir%\%latestlog:~0,-4%_#*" > %loglist%

set /P currentlognum=<%loglist%
set /a latestlognum=%currentlognum:~24,-4% + 1
if %latestlognum% lss 0 (
  set /a latestlognum=1
)
copy "%ffxivlogdir%\%latestlog%" "%ffxivlogdir%\%latestlog:~0,-4%_#%latestlognum%.log"
echo. > "%ffxivlogdir%\%latestlog%"

REM #### delete old logs ####
echo ### 古いログを削除しています．．．
for /f "skip=%lognum%" %%a in ('dir /b /o-d "%ffxivlogdir%"') do del "%ffxivlogdir%\%%a"

REM #### restart ACT process ####
echo ### ACTを再起動しています．．．
start "" "%actinstallpath%"

pause