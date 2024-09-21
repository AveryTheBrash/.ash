#!/bin/zsh

repeat=25
rate=0.75
filecaching=0
gifs=($wallgifs/*)
Xaxis=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f1)
Yaxis=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f2)
monitors=(`xrandr -q | grep -w "connected"`)

vlc --qt-start-minimized --qt-notification=0 --input-repeat=$repeat --rate=$rate --file-caching=$filecaching --playlist-autostart --video-wallpaper --no-video-title-show --playlist-tree --demux=avformat $gifs &> /dev/null &!
#gsettings set org.gnome.desktop.background picture-uri "$buffer"
