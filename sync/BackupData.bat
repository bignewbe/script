REM backup E drive
G:\cygwin64\bin\bash.exe -c -l '/cygdrive/d/home/sync/sync.sh /cygdrive/e/ /cygdrive/c/win7_E_drv/ /cygdrive/d/home/sync/exclude_file.txt 2'

REM back D drive
G:\cygwin64\bin\bash.exe -c -l '/cygdrive/d/home/sync/sync.sh /cygdrive/d/ /cygdrive/c/win7_D_drv/ /cygdrive/d/home/sync/exclude_file.txt 2'

REM backup onedrive
G:\cygwin64\bin\bash.exe -c -l '/cygdrive/d/home/sync/sync.sh /cygdrive/e/Code/ /cygdrive/d/OneDrive/Code/ /cygdrive/d/home/sync/exclude_file.txt 2'
G:\cygwin64\bin\bash.exe -c -l '/cygdrive/d/home/sync/sync.sh /cygdrive/e/Document/ /cygdrive/d/OneDrive/Doc/ /cygdrive/d/home/sync/exclude_file.txt 2'

