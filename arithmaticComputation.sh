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

