#!/bin/bash


mkdir -p ~/TrueLayer

touch ~/TrueLayer/TLTest.txt

#The time when the script has been run

echo "The script was executed at" >> ~/TrueLayer/TLTest.txt


echolog(){
    if [ $# -eq 0 ]
    then cat - | while read -r message
        do
                echo "$(date +"[%F %T %Z]") $message" | tee -a $MY_LOG
            done
    else
        echo -n "$(date +'[%F %T %Z]')" | tee -a $MY_LOG
        echo $* | tee -a $MY_LOG
    fi
}

echolog " ">> ~/TrueLayer/TLTest.txt

echo -e " " >> ~/TrueLayer/TLTest.txt


#The name of the script file

_self="${0##*/}"
echo "The Script Name is $_self" >> ~/TrueLayer/TLTest.txt
 
echo -e " " >> ~/TrueLayer/TLTest.txt



#The full list of every file and folder name present in the running folder.

echo "All file in the Directory" >> ~/TrueLayer/TLTest.txt
find `dirname $0` -type f >> ~/TrueLayer/TLTest.txt

echo -e " " >> ~/TrueLayer/TLTest.txt



#The public IP the machine uses to reach internet,

myip="$(dig +short myip.opendns.com @resolver1.opendns.com)"
echo "Public IP address: ${myip}" >> ~/TrueLayer/TLTest.txt

echo -e " " >> ~/TrueLayer/TLTest.txt


#The ram available in MB

RAM="$(top -l 1 -s 0 | grep PhysMem)"
echo "${RAM}" >> ~/TrueLayer/TLTest.txt

echo -e " " >> ~/TrueLayer/TLTest.txt


# The PID and the name of the user that is executing the script

echo "The PID of the script is $$ $BASHPID" >> ~/TrueLayer/TLTest.txt
echo -e " " >> ~/TrueLayer/TLTest.txt
echo "The User executing the script is $USER" >> ~/TrueLayer/TLTest.txt



echo -e "------------------------------------------ " >> ~/TrueLayer/TLTest.txt






