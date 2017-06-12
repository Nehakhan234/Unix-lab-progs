if [ $# -eq 0 ]
then 
echo "enter atleast one argument"
else
for i in $*
do
temp=`grep "$i" /etc/passwd|cut -d ":" -f6`
if [ -z "$temp" ]
then 
echo "$i is not a valid login name "
else
echo "$i is a valid login name "
echo "the directory $temp"
fi
done
fi 

