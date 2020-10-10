#!/bin/bash
file=$1
line=$(wc -l $file)
echo "$line">>1853615-hw1-q3.log
char=$(wc -c $file)
echo "$char">>1853615-hw1-q3.log
starttime=$(sed -n '133p' $1|cut -c2-9)
endtime=$(sed -n '232p' $1|cut -c2-9)
start1=$(date +%s -d "$starttime")
end1=$(date +%s -d "$endtime")
echo "$(($end1-$start1))">>1853615-hw1-q3.log
sum=0
num=0
for((i=133;i<233;i++))
do
#	:<<!
	avg1=$(sed -n $i'p' $1|cut -c45-48)
	avg2=$(sed -n $i'p' $1|cut -c51-54)
	avg3=$(sed -n $i'p' $1|cut -c57-60)
#echo "$avg1"
#done
#:<<!
#avg1=0.34
	if [ $avg1 != 0 ]
	then
		sum=$(echo "scale=2;$sum+$avg1"|bc)
		num=$[ $num +1 ]
	fi
	if [ $avg2 != 0 ]
	then
        	sum=$(echo "scale=2;$sum+$avg2"|bc)
		num=$[ $num +1 ]
	fi
	if [ $avg3 != 0 ]
	then
        	sum=$(echo "scale=2;$sum+$avg3"|bc)
		num=$[ $num +1 ]
		#echo "$sum"
		#echo "$num"
	fi
done
#!
ans=$(echo "scale=4;$sum/$num"|bc)
echo "$ans">>1853615-hw1-q3.log
