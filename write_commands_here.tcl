#!/usr/bin/expect

set timeout -1

# Write your username and password below

spawn ssh -o StrictHostKeyChecking=no -Y $USERNAME@$::env(ipr) 	
expect "password: " { send "$PASSWORD\r" }

#(Write your Code Here)
#Start....................................................................................................................................
expect "]$ " { send "touch hello_file \r" }
expect "]$ " { send "mkdir hello_dir \r" }

#End.......................................................................................................................................

expect "]$ " { send "exit\r" }
interact
send_user "\n<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< Commands executed successfully on server $::env(ipr)  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\n"
