#sync only dat json xml and log file 
rsync -zarv --include="*/" --include="*.dat" --include="*.json" --include="*.xml" --include="*.log" --exclude="*" --delete --delete-excluded IBTrader liping@47.97.2.154:~/data/
#sync C# project files 
rsync -zarv --exclude=".git" --exclude=".vs" --exclude=".gitignore" --exclude="packages" --exclude="bin" --exclude="obj" --delete --delete-excluded 20180722_IBTrader_1.0.1 liping@47.97.2.154:~/code/ 