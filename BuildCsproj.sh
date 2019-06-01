UpdateLib=E:/Code/PythonScript/PythonScript/UpdateLib.py;
MsBuild=E:/Code/PythonScript/PythonScript/MsBuild.py;
DstFolder=E:\\Lib
fileEnviroment=E:\\\BuildConfig\\\environment.json;
fileProjectMata=None;
#fileSeedSolutions=D:\\\Code\\\20170311_IBTrader_1.0.0\\\seedProjects.json;
fileSeedSolutions=E:\\\Code\\\20180722_seedProjects.json;
fileCompleteSolutions=E:\\\Code\\\completeProjects.json;

echo '############################################################################################################################################################'
# test build given seedSolutions
# a = ['-o', '2', '-s', fileSeedSolutions, '-C', fileEnviroment, '-m', fileProjectMata];      
echo 'test build given seed solutions'
echo python $MsBuild -o 2 -s $fileSeedSolutions -C $fileEnviroment

echo '############################################################################################################################################################'
echo 'test build given seed solutions and complete solutions'
echo python $MsBuild -o 3 -s $fileSeedSolutions -j $fileCompleteSolutions -C $fileEnviroment

echo '############################################################################################################################################################'
echo 'git build given seed solutions'
echo python $MsBuild -o 4 -s $fileSeedSolutions -C $fileEnviroment
#python $MsBuild -o 4 -s $fileSeedSolutions -C $fileEnviroment

echo '############################################################################################################################################################'
echo 'git build given seed solutions and complete solutions'
echo python $MsBuild -o 41 -s $fileSeedSolutions -j $fileCompleteSolutions -C $fileEnviroment

echo '############################################################################################################################################################'
# a = ['-o', '7', '-s', fileSeedSolutions, '-C', fileEnviroment, '-m', fileProjectMata];       
echo 'start GUI given seed solutions'
echo python $MsBuild -o 7 -s $fileSeedSolutions -C $fileEnviroment

echo '############################################################################################################################################################'
echo 'start GUI given given complete solutions'
echo python $MsBuild -o 71 -j $fileCompleteSolutions -C $fileEnviroment


echo '############################################################################################################################################################'
echo 'clone solutions, create batchbuild branch and create integration stream given complete solutions'
echo python $MsBuild -o 91 -j $fileCompleteSolutions -C $fileEnviroment -u liping -P 308721 -I 121.43.98.245 -O 81


echo '############################################################################################################################################################'
echo 'update master, batchbuild and integration streams given complete solutions'
echo python $MsBuild -o 92 -j $fileCompleteSolutions -C $fileEnviroment -u liping -P 308721 -I 121.43.98.245 -O 81


echo '############################################################################################################################################################'
echo 'clone workname from integration streams given seed solutions'
echo python $MsBuild -o 11 -s $fileSeedSolutions -C $fileEnviroment -u liping -P 308721 -I 121.43.98.245 -O 81

echo '############################################################################################################################################################'
echo 'update workName from integration streams given seed solutions'
echo python $MsBuild -o 93 -s $fileSeedSolutions  -C $fileEnviroment -u liping -P 308721 -I 121.43.98.245 -O 81

echo '############################################################################################################################################################'
#a = ['-o', '14', '-B', 'D:\\packages', '-j', fileCompleteSolutions];           
echo 'create package meta'
echo python $MsBuild -o 14 -j $fileCompleteSolutions -B 'D:\\packages'

echo '############################################################################################################################################################'
echo 'create project meta data given root folder'
echo python $MsBuild -o 16 -r 'D:\\Batchbuild\\20180722_IBTrader_1.0.1'



# echo '############################################################################################################################################################'
# #    a = ['-o', '4', '-l', solutionFolder, '-s', libFolder];       
# echo 'copy assemblies for solution'
# echo python $UpdateLib -o 4 -l   -s $DstFolder    
#    a = ['-o', '5', '-l', solutionFolder];       
#    parseArgument(a) 



echo
read -p "please choose which to run: " input
if [[ ! $input || $input = *[^0-9]* ]]; then
  echo "Error: '$input' is not a number." >&2;
  exit 1;
fi


if [[ $input = 2 ]]; then
  python $MsBuild -o 2 -s $fileSeedSolutions -C $fileEnviroment;
elif [[ $input = 3 ]]; then
  python $MsBuild -o 3 -s $fileSeedSolutions -j $fileCompleteSolutions -C $fileEnviroment;
elif [[ $input = 4 ]]; then
  python $MsBuild -o 4 -s $fileSeedSolutions -C $fileEnviroment;
elif [[ $input = 41 ]]; then
  python $MsBuild -o 41 -s $fileSeedSolutions -j $fileCompleteSolutions -C $fileEnviroment;
elif [[ $input = 7 ]]; then
  python $MsBuild -o 7 -s $fileSeedSolutions -C $fileEnviroment;
elif [[ $input = 71 ]]; then
  python $MsBuild -o 71 -j $fileCompleteSolutions -C $fileEnviroment;
elif [[ $input = 91 ]]; then
  python $MsBuild -o 91 -j $fileCompleteSolutions -C $fileEnviroment -u liping -P 308721 -I 121.43.98.245 -O 81;
elif [[ $input = 92 ]]; then
  python $MsBuild -o 92 -j $fileCompleteSolutions -C $fileEnviroment -u liping -P 308721 -I 121.43.98.245 -O 81;
elif [[ $input = 11 ]]; then
  python $MsBuild -o 11 -s $fileSeedSolutions -C $fileEnviroment -u liping -P 308721 -I 121.43.98.245 -O 81
elif [[ $input = 93 ]]; then
  python $MsBuild -o 93 -s $fileSeedSolutions -C $fileEnviroment -u liping -P 308721 -I 121.43.98.245 -O 81
elif [[ $input = 14 ]]; then
  python $MsBuild -o 14 -j $fileCompleteSolutions -B 'D:\\packages'
elif [[ $input = 16 ]]; then
  python $MsBuild -o 16 -r 'D:\\Batchbuild\\20180722_IBTrader_1.0.1'
else
  echo "not valid choice";
fi
