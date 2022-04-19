#!
/bin/bash
threadCount=(1 1 8)
cpuMaxPrime=(2000 10000000 10000)
maxTime=(0 30 0)
for ((i=0; i<3 ;i++))
do
	echo "Running test number ${i}"
	for j in {1..5}
	do
		echo "Current run number: ${j}"
		sysbench --num-threads=${threadCount[$i]} --test=cpu --cpu-max-prime=${cpuMaxPrime[$i]} --max-time=${maxTime[$i]} run
		echo "Run number ${j} is complete"
	done
done