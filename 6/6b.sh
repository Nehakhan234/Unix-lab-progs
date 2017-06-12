stty -echo
echo "enter a password"
read pswd
clear
npwd=
trap ' ' 0 1 2
echo "the terminal is locked!!"
while test "$npwd" != "$pswd"
do

 echo "Enter the password again:"
  read npwd
done

echo "correct password"
echo "Terminal lock has been opened"
stty echo
