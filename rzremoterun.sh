#!/bin/bash
clear
echo -e "\e[1;34m+++++++++++++++++++++++++++++++++++++++++++++++++++++\e[0m"
echo -e "\e[1;34m -----> RUNNING COMMANDS ON REMOTE SERVERS ----->\e[0m"
echo -e "\e[1;34m+++++++++++++++++++++++++++++++++++++++++++++++++++++\e[0m\n"
sleep 1

#IP sheet should be given as argument 1.
if [ ! -f "$1" ];then
  echo -e "\e[1;31mIP sheet doesn't exist. Aborting remote execution process.....\e[0m\n"
  sleep 1
  exit 1
else
  echo -e "\e[1;32mIP sheet exists. Continuing process.....\e[0m\n"
  sleep 1
fi

N=$(wc -l < "$1" )
for ((i=1;i<=$N;i++))
do
  ipr=$(awk "NR==$i" "$1")
  echo -e "\n\e[1;32mServer IP = $ipr\e[0m"
  export ipr
  $(pwd)/write_commands_here.exp
done

