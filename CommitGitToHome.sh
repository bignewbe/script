for f in $(find . -maxdepth 1 -mindepth 1 -type d 2>/dev/null); do
    d=$(basename $f);
    g1='git remote add home http://liping.asuscomm.com:82/';
    g2='.git';
    g3='git push home master';
    command1=$g1$d$g2;
    command2=$g3;
    if [ "$d" != "Test" ] && [ "$d" != "Bash" ]  && [ "$d" != "Document" ]; then
        cd $d;
        $command1;
        $command2;
        cd ..;
    fi        
done
