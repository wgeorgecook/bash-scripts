zenity --question --text="Do you want to flush the cache? This will require a password"
if [ $? == 0 ]  
then
sudo killall -HUP mDNSResponder;
echo "All done!";
killall Terminal
else
echo "Okay then";
killall Terminal
fi