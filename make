cd $(dirname $0)

ls -1 $1/*.jpg | sort -R > train.txt

n=$( wc -l < train.txt )
n=$( echo "$n * 0.2" | bc )
n=$( printf "%.0f" $n )

sed -n "1,$n p" train.txt > test.txt
sed -n "1,$n d" train.txt
