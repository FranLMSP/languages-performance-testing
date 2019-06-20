#!/bin/bash
set -e
echo "Bubble Sort algorithm in C++ (50000 indexes). Time in milliseconds" > results.txt;
echo "" >> results.txt;

g++ main.cpp -o main -O3;

total=0;
count=0;
for i in `seq 1 ${1:-10}`;
do
    count=$((count+1));
    ts=$(date +%s%N);
    ./main;
    tt=$((($(date +%s%N) - $ts)/1000000));
    total=$((total+tt));
    echo "Test N° $count time: $tt ms" >> results.txt;
done
echo "" >> results.txt;
echo "Tested $count times" >> results.txt;
echo "Total time: $total ms" >> results.txt;
average=$((total/count));
echo "Average: $average ms" >> results.txt;

cat results.txt;
