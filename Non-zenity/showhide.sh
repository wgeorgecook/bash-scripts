echo 'Do you want to show[s] or hide[h] hidden files?'
read -sn 1 toggle
echo "Your input is: $toggle"
if [ $toggle == s ] ; then 
	echo "Showing all files";
	defaults write com.apple.finder AppleShowAllFiles TRUE;
	killall Finder;
	echo "Complete. Exiting.";
	sleep 2;
	exit 1
elif [ $toggle == h ] ; then 
	echo "Disabling hidden files";
	defaults write com.apple.finder AppleShowAllFiles FALSE;
	killall Finder;
	echo "Complete. Exiting";
	sleep 2;
	exit 1
else 
	echo "Input not recognized. Exiting."; exit 1
fi
