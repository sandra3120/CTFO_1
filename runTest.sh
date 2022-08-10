echo "Test Started"
projectName=CTFO
scriptName=$projectName.jmx
time=$(date "+%Y.%m.%d-%H.%M")
results=PerfTest_Results_$time
mkdir ./$results
mkdir ./HTMLReport_$time
echo "test starting"
nohup sh apache-jmeter-5.4.3/bin/jmeter.sh CTFO.jmx
mv ./HTMLReport_$time ./$results
mv ./$projectName.jtl ./$results
mv ./jmeter.log ./$results
mv ./GrafanaResults.txt ./$results
mv ./Aggregate_$time.csv ./$results
mv ./$projectName.properties ./$results
echo "Test Finished. Find test results in folder $results"


