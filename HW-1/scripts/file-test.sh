#!
/bin/bash
threadCount=(16 8 8)
fileSize=("3G" "2G" "2G")
modes=("rndrw" "seqrd" "seqwr")
step=("prepare" "run" "cleanup")

for ((i=0; i<3 ;i++))
do
	echo "Running test number ${i}"
	for j in {1..5}
	do
		echo "Current run number: ${j}"
		for ((j=0;j<3;j++))
		do
			echo "Current Stage: ${step[$j]}"
			sysbench --num-threads=${threadCount[$i]} --test=fileio --file-total-size=${fileSize[$i]} --file-test-mode=${modes[$i]} ${step[$j]}	
		done
		echo "Run number ${j} is complete"
	done
done