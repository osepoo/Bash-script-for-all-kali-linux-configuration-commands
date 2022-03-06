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


echo -e "\t1 - To clear terminal screen"
echo -e "\t2 - To check disk space"
echo -e "\t3 - To check the calender"
echo -e "\t4 - To display all the systems environment variables"
echo -e "\t5 - To display the disk usage and the total in bytes"
echo -e "\t6 - To exit"
read number;
echo -e "================================================================================================"
echo -e "\n"

	performcmds()
	{
		if [[ $number -ne 6 ]]; then
			case $number in

				1) clear;;
				2) df -h;;
				3) cal;;
				4) env;;
				5) du -c -b;;

			esac

		else
				exit
		fi
	}

while [[ $number -ne 6 ]]; do

	echo -e "\n"
	echo -e "\n================================================================================================"
	echo -e "You never decided to exit so press  the next command you want: "
	echo "================================================================================================"
	echo -e "\t1 - To clear terminal screen"
	echo -e "\t2 - To check disk space"
	echo -e "\t2 - check disk space"
	echo -e "\t3 - To check the calender"
	echo -e "\t4 - To display all the systems environment variables"
	echo -e "\t5 - To display the disk usage and the total in bytes"
	echo -e "\t6 - To exit"
	read number;
	performcmds
	echo -e "\n================================================================================================"
done
