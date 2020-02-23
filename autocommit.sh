d1=`pwd`;
d2=$1;
cd $d2;
msg=`git status --porcelain -uno`
err=`git status --porcelain -uno 2>&1 1>/dev/null`
if [ $err != "" ]; then
    echo "not a repo";
	exit;
fi
if [ $msg -ne ""]; then    
	git add -u;
	git commit -m "auto commit";
	git push;
fi;
cd $d1;