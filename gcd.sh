#!/bin/sh

if [ $1 -gt $2 ]; then
    m=$1; n=$2
else
    m=$2; n=$1
fi

r=`expr $m % $n`

while [ $r -ne 0 ]; do
    m=$n
    n=$r
    r=`expr $m % $n`  
done

echo "$n"
exit 0
