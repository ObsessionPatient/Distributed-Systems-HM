#!/bin/bash
i=2;
sum=0;
while [ $i -le 100 ]
do 
	j=2
	flag=1
	while [ $j -le `expr $i / 2` ]
	do
	if [ `expr $i % $j` -eq 0 ]
		then flag=0;break;
	fi
	j=`expr $j + 1`  
 	done
	if [ $flag -eq 1 ]
	then 
                sum=`expr $sum + $i`
		#echo "${i} is a Prime "
	fi
	i=`expr $i + 1`
done
echo "${sum} is the answer"
