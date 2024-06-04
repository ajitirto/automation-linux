#!/bin/bash


wmctrl -s 3

# Membuka Google Chrome dengan background
google-chrome &

sleep 1

open_url() {
  local url=$1
  xdotool key ctrl+l  # Fokus ke address bar
  sleep 1
  xdotool type "$url"  # Ketik URL
  sleep 1
  xdotool key KP_Enter  # Tekan Enter
  sleep 4
}


open_url 'twitter.com'

xdotool key ctrl+t
sleep 1
open_url 'facebook.com'

xdotool key ctrl+t
sleep 1
open_url 'netflix.com'

xdotool key ctrl+t
sleep 1
open_url 'otakudesu.cloud'

xdotool key ctrl+t
sleep 1
open_url 'instagram.com'


wmctrl -s 0

echo "task done, thankyou"