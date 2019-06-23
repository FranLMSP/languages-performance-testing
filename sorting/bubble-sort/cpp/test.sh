#!/bin/bash
set -e;
echo "Bubble Sort algorithm in GCC (Latest) (50000 indexes). Time in milliseconds" | tee results.txt;
echo "" | tee -a results.txt;

echo "" > docker.log; echo "" >> docker.error;

docker pull gcc:latest 1> docker.log 2> docker.error
docker run --rm -v "$PWD":/usr/src/app -w /usr/src/app gcc:latest g++ -o main main.cpp -O3;

total=0;
count=0;
for i in `seq 1 ${1:-10}`;
do
    count=$((count+1));
    ts=$(date +%s%N);
    ./main;
    tt=$((($(date +%s%N) - $ts)/1000000));
    total=$((total+tt));
    echo "Test N° $count time: $tt ms" | tee -a results.txt;
done
echo "" | tee -a results.txt;
echo "Tested $count times" | tee -a results.txt;
echo "Total time: $total ms"| tee -a results.txt;
average=$((total/count));
echo "Average: $average ms"| tee -a results.txt;
