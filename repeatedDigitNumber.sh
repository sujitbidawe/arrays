#! /bin/bash

for (( number=1; number<=100; number++ ))
do
		originalNumber=$number
		remainder=$(( $number%10 ))
		number=$(( $number/10 ))
		if [[ $remainder -eq $number ]]
		then
				echo $originalNumber
		fi
		number=$originalNumber
done
