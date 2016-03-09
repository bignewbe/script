REM backup code and document to OneDrive
D:\cygwin64\bin\bash.exe -c -l '/cygdrive/d/home/sync/sync.sh /cygdrive/e/Code/ /cygdrive/d/OneDrive/Code/ /cygdrive/d/home/sync/exclude_file.txt 2'
D:\cygwin64\bin\bash.exe -c -l '/cygdrive/d/home/sync/sync.sh /cygdrive/e/Document/ /cygdrive/d/OneDrive/Document/ /cygdrive/d/home/sync/exclude_file.txt 2'
D:\cygwin64\bin\bash.exe -c -l '/cygdrive/d/home/sync/sync.sh /cygdrive/e/Eclipse/ /cygdrive/d/OneDrive/Eclipse/ /cygdrive/d/home/sync/exclude_file.txt 2'
D:\cygwin64\bin\bash.exe -c -l '/cygdrive/d/home/sync/sync.sh /cygdrive/e/Web/ /cygdrive/d/OneDrive/Web/ /cygdrive/d/home/sync/exclude_file.txt 2'

REM backup OneDrive to GoogleDrive
D:\cygwin64\bin\bash.exe -c -l '/cygdrive/d/home/sync/sync.sh /cygdrive/d/OneDrive/Code/           /cygdrive/d/GoogleDrive/Code/ none 2'
D:\cygwin64\bin\bash.exe -c -l '/cygdrive/d/home/sync/sync.sh /cygdrive/d/OneDrive/Document/       /cygdrive/d/GoogleDrive/Document/ none 2'
D:\cygwin64\bin\bash.exe -c -l '/cygdrive/d/home/sync/sync.sh /cygdrive/d/OneDrive/Eclipse/       /cygdrive/d/GoogleDrive/Eclipse/ none 2'
D:\cygwin64\bin\bash.exe -c -l '/cygdrive/d/home/sync/sync.sh /cygdrive/d/OneDrive/cvsroot/        /cygdrive/d/GoogleDrive/cvsroot/ none 2'
D:\cygwin64\bin\bash.exe -c -l '/cygdrive/d/home/sync/sync.sh /cygdrive/d/OneDrive/svn-repo-code/  /cygdrive/d/GoogleDrive/svn-repo-code/ none 2'
D:\cygwin64\bin\bash.exe -c -l '/cygdrive/d/home/sync/sync.sh /cygdrive/d/OneDrive/svn-repo-doc/   /cygdrive/d/GoogleDrive/svn-repo-doc/ none 2'

REM backup E drive to F
D:\cygwin64\bin\bash.exe -c -l '/cygdrive/d/home/sync/sync.sh /cygdrive/e/ /cygdrive/f/win8_E_drv/ /cygdrive/d/home/sync/exclude_file.txt 2'

REM backup D drive to F
D:\cygwin64\bin\bash.exe -c -l '/cygdrive/d/home/sync/sync.sh /cygdrive/d/ /cygdrive/f/win8_D_drv/ /cygdrive/d/home/sync/exclude_file.txt 2'






