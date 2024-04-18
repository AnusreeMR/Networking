#script to check if the given sides can be the sides of a trianle 
if [ $# -gt 1 ]
then
echo "syntax is <$0><sides>"
exit 1
fi
if [ $# -eq 0 ]
then
echo "enter first side:"
read x
echo "entor second side:"
read y
echo "enter third side:"
read z
fi

if [ `expr $x + $y` -le $z -o `expr $y + $z` -le  $x -o `expr $x + $z` -le $y ]
then
echo " $x $y and $z are not sides of triangle"
exit 2
else
echo "they are sides of triangle"
fi

if [ $x -eq $y -a $y -eq $z ]
then
echo "equilateral triangle"
elif [  $x -eq $y -o $y -eq $z -o $z -eq $x ]
then
echo "isoceless Triangle"
else
x2=`expr $x \* $x`
y2=`expr $y \* $y`
z2=`expr $z \* $z`
if [ `expr $x2 + $y2` -eq $z2 ]
then
echo "right triangle"
else
echo "scalane triangle"
fi
fi
