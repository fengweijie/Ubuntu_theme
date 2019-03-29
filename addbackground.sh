sudo rm -rf /usr/share/backgrounds/test
sudo mkdir /usr/share/backgrounds/test
sudo cp  *.jpg /usr/share/backgrounds/test/
. makelist.sh > background.xml
sudo cp background.xml /usr/share/backgrounds/test/
sudo cp cust-wallpapers.xml /usr/share/gnome-background-properties/

gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/test/background.xml'
