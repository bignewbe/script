@ECHO OFF

REM SET man1=%1
REM SET man2=%2
REM SHIFT & SHIFT
REM 
REM :loop
REM IF NOT "%1"=="" (
REM     IF "%1"=="-username" (
REM         SET user=%2
REM         SHIFT
REM     )
REM     IF "%1"=="-otheroption" (
REM         SET other=%2
REM         SHIFT
REM     )
REM     SHIFT
REM     GOTO :loop
REM )
REM 
REM ECHO Man1 = %man1%
REM ECHO Man2 = %man2%
REM ECHO Username = %user%
REM ECHO Other option = %other%

REM ...do stuff here...
REM :theend

SET folder=%1
C:\Windows\system32\takeown.exe -F %folder% /R
C:\Windows\system32\icacls.exe %folder% /t /grant Everyone:F
