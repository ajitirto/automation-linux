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
  sleep 4
}

chrome_admin 'http://paris-app.id/'

 xdotool type "aji.prayogo@sinergi-nusantara.co.id"
 sleep 1
 xdotool key Tab
 sleep 1
 xdotool type "${PASSWORD_AJI}"
 xdotool key KP_Enter 
 sleep 4


firefox_hrdc() {
    local url=$1
    xdotool key ctrl+l  # Fokus ke address bar
    sleep 1
    xdotool type "$url"  # Ketik URL
    sleep 1
    xdotool key KP_Enter  # Tekan Enter
    sleep 4
}




wmctrl -s 0

echo "task done, thankyou"