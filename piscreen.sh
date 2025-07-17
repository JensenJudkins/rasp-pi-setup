#!/bin/bash
sudo apt install git python3
git clone https://github.com/goodtft/LCD-show.git
chmod -R 755 LCD-show
cd LCD-show/
sudo ./system_backup.sh
sudo ./LCD35-show
