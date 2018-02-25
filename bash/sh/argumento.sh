read x
read y
z=`echo $x + $y | bc `
#z=$(($x+$y))
echo $z
