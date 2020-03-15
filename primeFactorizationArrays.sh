#! /bin/bash 

read -p "enter a number to find its prime factors: " number
count=0

for (( divisor=2; divisor<=number; divisor++ ))
do
		for(( ; $((number%divisor))==0; ))
		do
				primeFactorArray[count++]=$divisor
				number=$((number/divisor))
		done
done

echo ${primeFactorArray[@]}
