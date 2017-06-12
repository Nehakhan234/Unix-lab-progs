
while [ $# -ne 0 ]
do
temp="$1 $temp"
shift
done
echo "args in rev order"
echo "$temp"
