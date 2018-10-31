#!/usr/bin/env bash

nasa_api_key="GET_YOUR_OWN_API_KEY"
apod_api_url="https://api.nasa.gov/planetary/apod?api_key=$nasa_api_key"

apod_json=$(curl -s $apod_api_url)

apod_media_type=$(echo $apod_json | jq .media_type)

if [ "$apod_media_type" == "\"image\"" ];
then
        apod_hd_url=$(echo $apod_json | jq .hdurl)
        gsettings set org.gnome.desktop.background picture-uri $apod_hd_url
fi
