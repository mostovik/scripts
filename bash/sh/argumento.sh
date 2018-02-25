read x
read y
z=`echo $x + $y | bc --scale=2`
#z=$(($x+$y))
echo $z
