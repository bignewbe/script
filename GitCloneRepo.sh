## declare an array variable

declare -a arr=(ApiRequest
                CommonCSharp-Net
                CommonCSharp-Portable
                CommonCSharpLibary
                CommonCSharpTechnicalAnalysis
                DataApiSecondLayer
                document
                GitDoc
                IBApi
                IBTrader
                InteractiveBroker
                InternalWebsite
                InternalWebsiteDoc
                KeyMouseOperation
                Lib
                Logger
                Network
                NetworkRequestParameters
                NewsAndCalendarCapture
                PlayProject
                PortableCSharpLib
                PortableTechnicalAnalysis
                ProductAndUI
                ProjectDoc
                PythonScript
                QuoteServer
                RateCapturer
                script
                Serialization
                SpeechRecognition
                StockAnalysis
                StockAnalyzer
                StockChart
                StockScream
                TechnicalAnalysis
                TraderMobileAndroid
                TraderMobileDoc
                TraderMobilePortableLib
                TraderMobleIOS
                TraderMobleIOSDoc
                TradingPlatform
                WanGuoRongKe
                WebApiCommon
                WebServer
                WPFDataServer
                WPFHistoryDataConverter
                WPFSimulateDataServer)

baseUrl=http://liping@121.43.98.245:81/;		
folder=/cygdrive/h/Code_complete/;
currentFolder=$(pwd);
cd $folder;
pwd;

for f in "${arr[@]}"; do
     git clone $baseUrl$f.git;
	 
#    d=$(basename $f);
#    g1='git remote add home http://liping.asuscomm.com:82/';
#    g2='.git';
#    g3='git push home master';
#    command1=$g1$d$g2;
#    command2=$g3;
#    if [ "$d" != "Test" ] && [ "$d" != "Bash" ]  && [ "$d" != "Document" ]; then
#        cd $d;
#        $command1;
#        $command2;
#        cd ..;
#    fi        
done
cd $currentFolder;
pwd;
