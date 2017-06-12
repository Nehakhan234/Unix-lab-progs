if [ $# -eq 0 ]
then 
 echo "error - no args!"
exit
fi
 for i
do
   echo $i|tr '[a-z]' '[A-Z]'
done 
