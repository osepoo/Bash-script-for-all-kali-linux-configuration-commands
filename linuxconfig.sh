#!/bin/bash





echo -e "\e[1;31m                                                       \e[0m"
echo -e "\e[1;31m 		 ██████  ███████ ███████ ██████   ██████   ██████     \e[0m"
echo -e "\e[1;31m 		██    ██ ██      ██      ██   ██ ██    ██ ██    ██ 	\e[0m"
echo -e "\e[1;31m 		██    ██ ███████ █████   ██████  ██    ██ ██    ██ 	\e[0m"
echo -e "\e[1;31m 		██    ██      ██ ██      ██      ██    ██ ██    ██ 	\e[0m"
echo -e "\e[1;31m  		 ██████  ███████ ███████ ██       ██████   ██████  	\e[0m" 

echo -e "\e[1;31m \n               	                                by Muga \e[0m"
                                                  



echo "================================================================================================"
echo -e  "\t\t\tALL THE CONFIGURATION KALI COMMANDS"
echo "================================================================================================"
echo -e "\nPress the number associated with every instruction to execute said command"


echo -e "\t0 - To clear terminal screen"
echo -e "\t1 - Create a new user account"
echo -e "\t2 - Delete a user account"
echo -e "\t3 - To check the calender"
echo -e "\t4 - To display all the systems environment variables"
echo -e "\t5 - To display the disk usage and the total in bytes"
echo -e "\t6 - Perform a DNS lookup"
echo -e "\t7 - Briefly list the color setup for ls"
echo -e "\t8 - Print kernel messages"
echo -e "\t9 - To display your name on the terminal screen"
echo -e "\t10 - To display your environment variables"
echo -e "\t11 - To determine the file type"
echo -e "\t12 - To search for files that meet a desired criteria"
echo -e "\t13 - To display memory usage"
echo -e "\t14 - File system consistency check and repair"
echo -e "\t15 - File Transfer Protocol"
echo -e "\t16 - check directories in this file"
echo -e "\t17 - check disk space"
echo -e "\t18 - To Check hostname"
echo -e "\t19 - To change hostname"
echo -e "\t20 - To exit"
read number;
echo -e "================================================================================================"
echo -e "\n"

	performcmds()
	{
		if [[ $number -ne 20 ]]; then
			case $number in
				0) clear;;
				1) echo "Enter name of  user"
					read nameuser
					if [[ $nameuser ]]; then
						sudo adduser $nameuser
					else
						echo "nothing put bruh"
					fi ;;
				2) echo "Enter name of  user to delete"
					read deleteuser
					if [[ $deleteuser ]]; then
						sudo userdel $deleteuser
					else
						echo "nothing put bruh"
					fi ;;
				3) cal;;
				4) env;;
				5) du -c -b;;
				6) dig;;
				7) dircolors;;
				8) dmesg;;
				9) echo "what is your name?"
					read name
					if [[ $name ]]; then
						echo  "Welcome $name"
					else
						echo "nothing put bruh"
					fi ;;
				10) env;;
				11) echo "Enter file name you want to see details of"
					read filename
					if [[ $filename ]]; then
						file $filename
					else
						echo "nothing put bruh"
					fi ;;
				12) echo "Enter file name you want to find in location of"
					read location
					if [[ $location ]]; then
						find $location
					else
						echo "nothing put bruh"
					fi ;;
				13) free;;
				14) fsck;;
				15) ftp;;
				16) ls -l;;
				17) df -h;;
				18) hostname;;
				19) echo "Enter new hostname"
					read namehost
					if [[ $namehost ]]; then
						sudo hostnamectl set-hostname $deleteuser
					else
						echo "nothing put bruh"
					fi ;;
				1) ls -l;;
				2) df -h;;
			esac

		else
				exit
		fi
	}

while [[ $number -ne 20 ]]; do

	echo -e "\n"
	echo -e "\n================================================================================================"
	echo -e "You never decided to exit so press  the next command you want: "
	echo "================================================================================================"
	echo -e "\t0 - 	To clear terminal screen"
	echo -e "\t1 - check directories in this file"
	echo -e "\t2 - check disk space"
	echo -e "\t3 - To check the calender"
	echo -e "\t4 - To display all the systems environment variables"
	echo -e "\t5 - To display the disk usage and the total in bytes"
	echo -e "\t6 - Perform a DNS lookup"
	echo -e "\t7 - Briefly list the color setup for ls"
	echo -e "\t8 - Print kernel &amp; driver messages"
	echo -e "\t9 - To display your name on the terminal screen"
	echo -e "\t10 -To display your environment variables"
	echo -e "\t11 -To determine the file type"
	echo -e "\t14 -File system consistency check and repair"
	echo -e "\t15 -File Transfer Protocol"
	echo -e "\t16 - check directories in this file"
	echo -e "\t17 - check disk space"
	echo -e "\t18 - To Check hostname"
	echo -e "\t19 - To change hostname"
	echo -e "\t20 - To exit"
	read number;
	performcmds
	echo -e "\n================================================================================================"
done
