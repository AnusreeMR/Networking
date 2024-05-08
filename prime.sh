#prime
#set -vx

if [ $# -ne 2 ]
then
echo "syntax is $0 <no1> <no2>"
fi

a=$1
b=$2
echo "\n the prime number between $a and $b are:"
if [ $a -gt $b ]
then
t=$a
a=$b
b=$t
fi

while [ $a -le $b ]
do
i=2
while [ $i -le `expr $a / 2` ] 
do
if [ `expr $a % $i` -eq 0 ]
then
break
fi
i=`expr $i + 1`
done
if [ $i -gt `expr $a / 2` ]
then
echo -n "\n$a\n"
fi
a=`expr $a + 1` 
done
exit 0
