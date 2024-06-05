Connecting a Bluetooth Keyboard

The best method for connecting a Bluetooth device is using the bluetoothctl command from the common line interface. There is a GUI application called blueman, but this is not stable on the Raspberry Pi and will cause it to crash.

If you are running the latest Raspberry Pi OS, then all the software has already been installed. If not, then you can simply type the following to install the Bluetooth module: sudo apt-get install pi-bluetooth. Once installed, follow these next steps to pair with your Bluetooth keyboard:

1. Run the Bluetooth program by typing bluetoothctl.

2. Turn on the Bluetooth, if not already on, by typing power on.

3. Enter device discovery mode with scan on command if device is not yet listed in devices.

4. Turn the agent on with agent on.

5. Enter pair MAC Address to do the pairing between devices.

6. You may be prompted to enter a passcode on the Bluetooth keyboard; if so, type this on the keyboard and press enter.

7. You will need to add the device to a list of trusted devices with trust MAC Address.

8. Finally, connect to your device with connect MAC Address.

Note: For a list of Bluetooth commands type help in the command line (Figure 7).

Connecting a Bluetooth Speaker

Before you get connected to your Bluetooth speaker, you will need to install Pulse Audio and its associated Bluetooth module. Pulse Audio is a sound server that receives audio input from multiple channels and filters them through to one single output or sink, as it’s known. Needless to say, go ahead and install it by typing the following in the command line: sudo apt-get install pulseaudio pulseaudio-module-bluetooth . Once installed give the Raspberry Pi a quick reboot to make sure everything is in order before we start: sudo reboot.

Now that everything we need to connect to the Bluetooth speaker is installed, you can follow these steps in order to connect. The process is the same as connecting to a Bluetooth keyboard (Figure 8):

1. Turn on the Bluetooth speaker and enter discovery mode

2. Open up the command line terminal on the Raspberry Pi and run bluetoothctl

3. Power on the Bluetooth device: power on

4. Turn the agent on: agent on

5. Scan for devices: scan on

6. Pair with your Bluetooth speaker pair MAC Address, at this point there should be no passcode to enter

7. Add the new Bluetooth speaker to the list of trusted devices: trust MAC Address

8. Now finally connect to the Bluetooth speaker: connect MAC Address