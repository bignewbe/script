source /cygdrive/e/Code/script/sync/rsync.sh
SRC1=$1
DST1=$2
EXCLUDE=$3    
OPT=$4
dstdir=$(dirname $DST1)
folder=$(basename $DST1)

#if [ -z $OPT ]; then echo "yes"; else echo "no"; fi;
#echo $SRC1;
#echo $DST1;
#echo $dstdir;
#echo $folder;

if [ ! -d "$SRC1" ] || [ ! -d "$dstdir" ]; then
   echo "$SRC1 or $dstdir does not exist";
   exit;   
fi

if [ -d "$DST1" ]; then
   day=`date +%d`
   dayfolder=$dstdir/${folder}_$day/
   #echo "$DST1 exit";
   if [ "$day" -eq "1" ]; then  
       month=`date +%Y%m`
	   monthfolder=$dstdir/${folder}_$month/
       #echo "true"; 
   fi
fi

if [ ! -z "$monthfolder" ]; then
   #echo "we need to sync $monthfolder";
   echo rsync -av --chmod=ugo=rwX -e ssh --delete --delete-excluded $DST1 $monthfolder
        rsync -av --chmod=ugo=rwX -e ssh --delete --delete-excluded $DST1 $monthfolder
fi

if [ ! -z "$dayfolder" ]; then
   #echo "we need to sync $dayfolder";
   echo rsync -av --chmod=ugo=rwX -e ssh --delete --delete-excluded $DST1 $dayfolder
        rsync -av --chmod=ugo=rwX -e ssh --delete --delete-excluded $DST1 $dayfolder
fi 

if [ ! -z $OPT ] && [ $OPT -eq "2" ]; then
    opt="-av --chmod=ugo=rwX -e ssh --delete --delete-excluded";
else
    opt="-av --chmod=ugo=rwX -e ssh ";
fi

if [ ! -z $EXCLUDE ]; then
    opt=$opt" --exclude-from=$EXCLUDE"
fi  

echo rsync $opt $SRC1 $DST1
     rsync $opt $SRC1 $DST1









