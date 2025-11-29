echo -------- install node modules --------

npm install
npm install ../TrueConfSDK --install-links=true

while true; do

read -p "Do you want to install CocoaPods for iOS? (y/n) " yn

case $yn in 
	[yY] ) cd ios && pod install;
		break;;
	[nN] ) echo Ok, you can install it later manually with \'pod install\' command;
		exit;;
	* ) echo invalid response;;
esac

done
