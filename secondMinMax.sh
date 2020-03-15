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

for (( int=0; int<count; int++ ))
do
		if [[ ${threeDigitArray[$int]} -gt $max  ]]
		then
				secondMax=$max
				max=${threeDigitArray[int]}

		elif [[ ${threeDigitArray[$int]} -gt $secondMax  ]]
		then
				secondMax=${threeDigitArray[$int]}
		fi

		if [[ ${threeDigitArray[$int]} -lt $min ]]
		then
				secondMin=$min
				min=${threeDigitArray[$int]}

		elif [[ ${threeDigitArray[$int]} -lt $secondMin  ]]
		then
				secondMin=${threeDigitArray[int]}
		fi
done

echo ${threeDigitArray[@]}
echo ""
echo second maximum number is $secondMax
echo second minimum number is $secondMin
