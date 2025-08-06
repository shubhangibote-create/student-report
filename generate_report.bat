@echo off
echo Name,Marks > report.csv
echo Alice,85 >> report.csv
echo Bob,92 >> report.csv
powershell Compress-Archive -Path report.csv -DestinationPath student-report.zip
