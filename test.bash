#!/bin/bash

tmp=/tmp/$$
 
ERROR_EXIT () {
    echo "$1" >&2
    rm -f $tmp-*
    exit 1
}
#####################################
 # TEST1 
#####################################

echo 4 > $tmp-ans
./gcd.sh 20 12 > $tmp-out || ERROR_EXIT "TEST1-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST1-2"

echo 5 > $tmp-ans
./gcd.sh 5 10 > $tmp-out || ERROR_EXIT "TEST1-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST1-2"

echo 6 > $tmp-ans
./gcd.sh 18 12 > $tmp-out || ERROR_EXIT "TEST1-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST1-2"

echo OK
rm -f $tmp-*
exit 0
