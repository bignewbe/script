UpdateLib=E:/Code/PythonScript/PythonScript/UpdateLib.py;
MsBuild=E:/Code/PythonScript/PythonScript/MsBuild.py;
DstFolder=D:\\Lib
for f in $(find . -name "*.csproj" -type f 2>/dev/null); do 
    echo $f
    python $UpdateLib -o 1 -p $f;
done


