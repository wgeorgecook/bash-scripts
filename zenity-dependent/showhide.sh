zenity --question --text="Do you want to show hidden files?"
if [ $? == 0 ]  
then
	echo "Yes detected" ;
	echo "Showing all files";
	defaults write com.apple.finder AppleShowAllFiles TRUE;
	killall Finder;
	echo "Complete. Exiting.";
	sleep 2;
	killall Terminal
elif [ $? == 1 ]  
then 
	echo "No detected"
	echo "Disabling hidden files";
	defaults write com.apple.finder AppleShowAllFiles FALSE;
	killall Finder;
	echo "Complete. Exiting";
	sleep 2;
	killall Terminal
else 
	echo "No input detected. Exiting."; 
	killall Terminal
fi
