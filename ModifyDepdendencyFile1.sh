echo modify dependency.json in $1;
for f in $(find $1 -name dependency.json -type f 2>/dev/null); do 
   echo -n "confirm to modify $f: Yes/(No) > " 
   read response
   # convert string to lower case
   response=$(echo $response | tr '[:upper:]' '[:lower:]')
   if [[ "$response" == "yes" || "$response" == "y" ]]; then
       # replace string in double quotes after "LocalRoot", \1 means matched in ()
       # delete DefaultReleasePath and DefaultDebugPath
       # replace DefaultReleasePath and DefaultDebugPath to Default    
       sed -re 's/("LocalRoot".*)".*"/\1 "\."/' $f | sed '/.*Default.*:.*/ d' | sed 's/Default.*Path/Default/g' >tmp.txt;
       mv tmp.txt $f;
   fi
done;

