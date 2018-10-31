# apod-bash
Bash script to change the desktop background of your (Ubuntu) Gnome Shell with NASA's "Astronomy Picture of the Day"

First of all, apply for a free NASA API developer key over here:
https://api.nasa.gov/index.html#apply-for-an-api-key

Packages needed for this script are curl and jq.

Install them with:
sudo apt install curl jq

To make this script executable:
chmod +x apod-bash

You can execute this script by hand but it is much more convenient to put it in /etc/cron.daily or create a cronjob for it. 
