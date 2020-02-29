#exmaple usage: sync.sh /cygdrive/e/ /cygdrive/c/ /cygdrive/d/home/sync/include_file.txt 2
if [ "$#" -ne 4 ]; then 
    echo "illegal number of parameters"
    exit 0
fi

#server --> local machine
#SRC1="liping@131.155.26.30:/home/liping/liping"
SRC1=$1
DST1=$2
INCLUDE=$3

#set if delete or not delete the destination
if [ $4 -eq 1 ]; then
   OPT="-av --no-perms --no-owner --no-group --no-times"
fi

if [ $4 -eq 2 ]; then
   OPT="-av --no-perms --no-owner --no-group --no-times --delete --delete-excluded"
fi

#set exclude file if any
if [ "$INCLUDE" != "none" ]; then
   echo $INCLUDE
   OPT=$OPT" --include-from=$INCLUDE"
fi

#echo  rsync $OPT $SRC1/ $DST1/
rsync $OPT $SRC1 $DST1
