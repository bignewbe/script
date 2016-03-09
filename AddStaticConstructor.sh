directory=$1;
currentDir=$(dirname $(readlink -f .));
for f in $(find . -name "*.cs" -type f 2>/dev/null | xargs grep class | grep -v "//"); do 
    echo $f;
done
#git --git-dir=$p/.git --work-tree=$p status --porcelain -uno


