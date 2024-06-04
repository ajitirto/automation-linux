#!/bin/bash

source .env

wmctrl -s 1

# Membuka Google Chrome dengan background
google-chrome &

sleep 1

chrome_admin() {
  local url=$1
  xdotool key ctrl+l  # Fokus ke address bar
  sleep 1
  xdotool type "$url"  # Ketik URL
  sleep 1
  xdotool key KP_Enter  # Tekan Enter
  sleep 2
}

chrome_admin 'https://covis.co.id/'

xdotool key KP_Enter 
sleep 2

 xdotool type "aji.prayogo@sinergi-nusantara.co.id"
 sleep 1
 xdotool key Tab
 sleep 1
 xdotool type "${PASSWORD_AJI}"
 xdotool key KP_Enter 
 sleep 2

 xdotool key ctrl + t

chrome_admin 'https://covis.co.id/public/dashboard' # custom 
sleep 2

wmctrl -s 0

echo "task done, thankyou"