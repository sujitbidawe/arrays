#! /bin/bash 

integerArray=(-2 -1 0 1 2 3)

arrayLength=${#integerArray[@]}

for ((i=0; i<=$(($arrayLength-2)); i++))
do
		for (( j=$(($i+1)); j<=$(($arrayLength-1)); j++ ))
		do
				for(( k=$(($j+1)); k<$arrayLength; k++ ))
				do
						if [[ $(( ${integerArray[i]} + ${integerArray[j]} + ${integerArray[k]} )) -eq 0  ]]
						then
								echo ${integerArray[i]},${integerArray[j]},${integerArray[k]}
						fi
				done
		done
done
