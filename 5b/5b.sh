if [ $# -ne 2 ]
then
echo "error - 2 args req";
exit;
fi

sort -o temp1 $1
sort -o temp2 $2
sort -m temp1 temp2
rm temp?
