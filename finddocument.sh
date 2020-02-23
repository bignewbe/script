#!/bin/sh

command="find -name doc"
ext="docx ppt pptx txt xml json pdf jpg png csv json xls xlsx vsdx cs py psproj csproj dot zip"
for i in $ext; do 
   #echo $i;
   command=$command" -o -name \"*.$i\"";
   j=`echo $i | tr a-z A-Z`;                 #convert to upcase 
   command=$command" -o -name \"*.$j\"";   
   #echo $command;   
done
echo $command;
$command