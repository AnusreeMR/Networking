#set -vx
#time
hr=`date +%H`
user=`whoami`
if [ $# -ne 0 ]
then
echo "syntax is <$0>"
fi
if [ $hr -gt 0 -a $hr -le 12 ]
then
echo "hello, goodmorning $user"
elif [ $hr -gt 12 -a $hr -le 16 ]
then
echo "hello goodafternoon $user"
elif [ $hr -gt 16 -a $hr -le 18 ]
then
echo "hello goodevening $user"
else
echo "hello goodnight $user"
fi

