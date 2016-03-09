directory=$1;
currentDir=$(dirname $(readlink -f .));
# echo $currentDir;
for f in $(find $directory -name *.sln -type f 2>/dev/null); do 
    # echo $f;
    # #path=$(dirname $f);
    path=$(dirname $(readlink -f $f));
	echo -n $path;
	if [ -d $path/.git ]; then
   	    changes=$(git --git-dir=$path/.git --work-tree=$path status --porcelain -uno 2>/dev/null)
   	    # echo check repo $path;
   	    #cd $path;
   	    if [[ -n $changes ]]; then 
   	       echo "   Yes";
   	    else
   	       echo "   No";
   	    fi
	else
	    echo "   NA";
	fi
done
#git --git-dir=$p/.git --work-tree=$p status --porcelain -uno


