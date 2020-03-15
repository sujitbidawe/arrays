#! /bin/bash 

count=0
max=0
secondMax=0
min=1000
secondMin=1000

while [[ $count -lt 10  ]]
do
		threeDigitArray[$count]="$(( RANDOM%899 + 100  ))"
		(( count++ ))
done

#for (( int=0; int<count; int++ ))
#do
#		if [[ ${threeDigitArray[$int]} -gt $max  ]]
#		then
#				secondMax=$max
#				max=${threeDigitArray[int]}
#
#		elif [[ ${threeDigitArray[$int]} -gt $secondMax  ]]
#		then
#				secondMax=${threeDigitArray[$int]}
#		fi
#
#		if [[ ${threeDigitArray[$int]} -lt $min ]]
#		then
#				secondMin=$min
#				min=${threeDigitArray[$int]}
#
#		elif [[ ${threeDigitArray[$int]} -lt $secondMin  ]]
#		then
#				secondMin=${threeDigitArray[int]}
#		fi
#done

echo original array: ${threeDigitArray[@]}

for (( i=0; i<=$(($count-1)); i++ ))
do
		for (( j=$((i+1)); j<=$count; j++ ))
		do
				#echo $threeDigitArray[j]
				if [[ ${threeDigitArray[i]} -gt ${threeDigitArray[j]} ]]
				then
						temp=${threeDigitArray[i]}
						threeDigitArray[i]=${threeDigitArray[j]}
						threeDigitArray[j]=$temp
				fi
		done
done

echo sorted array: ${threeDigitArray[@]}
echo second lowest number is ${threeDigitArray[2]}
echo second highest number is ${threeDigitArray[$count-1]}
