UpdateLib=D:/Code/PythonScript/PythonScript/UpdateLib.py;
MsBuild=D:/Code/PythonScript/PythonScript/MsBuild.py;
DstFolder=D:\\Lib
fileEnviroment=D:\\\BuildConfig\\\environment.json;
fileProjectMata=None;
#fileSeedSolutions=D:\\\Code\\\20170311_IBTrader_1.0.0\\\seedProjects.json;
fileSeedSolutions=D:\\\Code\\\20180722_seedProjects.json;
fileCompleteSolutions=D:\\\Code\\\completeProjects.json;

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
echo 'git build given seed solutions and complete solutions'
echo python $MsBuild -o 71 -s $fileSeedSolutions -j $fileCompleteSolutions -C $fileEnviroment

echo '############################################################################################################################################################'
#a = ['-o', '91', '-s', fileSeedSolutions, '-j', fileCompleteSolutions, '-u', 'liping', '-P', '308721', '-I', '121.43.98.245', '-O', '81', '-C', fileEnviroment, '-m', fileProjectMata];       
echo 'check out complete solutions, create batchbuild and integration stream'
echo python $MsBuild -o 91 -s $fileSeedSolutions -j $fileCompleteSolutions -C $fileEnviroment -u liping -P 308721 -I 121.43.98.245 -O 81

echo '############################################################################################################################################################'
#a = ['-o', '11', '-s', fileSeedSolutions, '-C', fileEnviroment, '-m', fileProjectMata, '-u', 'liping', '-P', '308721', '-I', '121.43.98.245', '-O', '81'];       
echo 'clone intergration stream to workname'
echo python $MsBuild -o 11 -s $fileSeedSolutions -C $fileEnviroment -u liping -P 308721 -I 121.43.98.245 -O 81


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
  python $MsBuild -o 71 -s $fileSeedSolutions -j $fileCompleteSolutions -C $fileEnviroment;
elif [[ $input = 91 ]]; then
  python $MsBuild -o 91 -s $fileSeedSolutions -j $fileCompleteSolutions -C $fileEnviroment -u liping -P 308721 -I 121.43.98.245 -O 81;
elif [[ $input = 11 ]]; then
  python $MsBuild -o 11 -s $fileSeedSolutions -C $fileEnviroment -u liping -P 308721 -I 121.43.98.245 -O 81
else
  echo "not valid choice";
fi
