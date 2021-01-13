#!/bin/bash -x
read -p "Enter the value of a :" a
read -p "Enter the value of b :" b
read -p "Enter the value of c :" c
result1=$(( $a + $b * $c ))
echo $result1
result2=$(( $a * $b + $c ))
echo $result2
result3=$(( $c + $a / $b ))
echo $result3
result4=$(( $a % $b + $c ))
echo $result4
declare -A result
result[1]="$result1"
result[2]="$result2"
result[3]="$result3"
result[4]="$result4"
a[0]=result1
a[1]=result2
a[2]=result3
a[3]=result4
for (( i=0;i<4;i++ ))
do
 for(( j=i;j<4;j++ ))
do
if [${a[$i]} -gt ${a[$j]}]
then
 	temp=${a[$i]}
	a[$i]=${a[$j]}
	a[$i]=$temp
	fi
	done
done
echo "array after sorting "
for (( i=0;i<4;i++))
do
echo ${a[$i]}

done
