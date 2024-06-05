Setting up Wi-Fi via the Command Line Interface

This method is suitable for those who don’t have access to the GUI normally used to set up Wi-Fi on the Raspberry Pi. It’s especially suitable for those with a serial console cable if you don’t have access to a screen or wired Ethernet. No additional software is required; everything is already included on the standard Raspberry Pi image.

The first thing you need to do is scan for local wireless networks using the command sudo iwlist wlan0 scan. This will list all available Wi-Fi networks including all sorts of other useful information (Figure 5).

1. Locate the name of your Wi-Fi network in the list; this will be listed next to ESSID.

2. Under the ESSID you should also see your authentication method, which could look like the following IEEE 802.11i/WPA2 Version 1. In my case the authentication method is WPA2, which is the newer and more secure method; this quick guide will work with both WPA and WPA2. You will also need the password for your Wi-Fi. If you don’t already know this, it is usually located on the reverse side of your modem/router.

3. Now you need to add your Wi-Fi settings to the wpa-supplicant configuration file. Type the following in the command line to the configuration file: sudo nano /etc/wpa_supplicant/wpa_supplicant.conf. Go to the bottom of the file and add the following Wi-Fi setting, adding your setting in the quotation marks.
network={
    ssid="The_ESSID_from_earlier"
    psk="Your_wifi_password"
}

Save the file by pressing CTRL+X and then Y on the keyboard and press enter to confirm. At this point, the wpa-supplicant configuration file will normally notice within a few seconds when a change has occurred and it will try to connect to the Wi-Fi network. If the Wi-Fi does not connect then a reboot may be required with sudo reboot. Once your Wi-Fi has connected successfully you can verify it by typing ifconfig wlan0; if the inet addr field has an IP address in it then it has successfully connected (Figure 6).