for f in $(find . -type d -maxdepth 1); do f1=`realpath $f`; echo $f1; cd $f1; dotnet restore; ~/bin/nuget.exe restore; cdp; done
