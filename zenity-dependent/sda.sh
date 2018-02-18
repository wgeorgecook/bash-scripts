zenity --question --text="Are you at the SDA and do not have internet?"
if [ $? == 0 ]  
then
	echo "Yes detected" ;
	echo "Setting static IP"
	sudo networksetup -setmanualwithdhcprouter Wi-Fi 10.1.10.164;
	echo "Static IP configuration complete."
	echo "Setting DNS server"
	networksetup -setdnsservers Wi-Fi 8.8.8.8;
	echo "DNS configured."
	echo "Exiting."
	sleep 2;
	killall Terminal
elif [ $? == 1 ]  
then 
	echo "No detected"
	echo "Resetting back to automatic configuration";
	networksetup -setdhcp Wi-Fi;
	echo "Complete. Exiting";
	sleep 2;
	killall Terminal
else 
	echo "No input detected. Exiting."; 
	killall Terminal
fi
