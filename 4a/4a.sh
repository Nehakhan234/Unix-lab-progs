echo "Menu
1:list of files
2:process state
3:date
4:users
5:quit to terminal
enter ur choice:"

read choice
case "$choice" in
1)ls -l;;
2)ps;;
3)date;;
4)who;;
5)exit;;
*)echo "invalid entry";;
esac
