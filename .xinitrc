xrdb -merge .Xresources &
xrdb -q &
xset -spms &
xset s noblank &
xset -dpms s off &
xsetroot -cursor_name left_ptr &
xset r rate 300 50 & # Speed xrate up

# /usr/bin/dropbox &
# feh --randomize --bg-scale ~/.config/wallpapers/blk/* &
feh --bg-scale ~/.config/wallpapers/1.jpg

# conky ~/.config/conky.conf &
compton --config ~/.config/compton.conf -b &

# mpd &			# music player daemon-you might prefer it as a service though
# remaps &		# run the remaps script, switching caps/esc and more; check it for more info
# xcompmgr &		# xcompmgr for transparency
dunst &			# dunst for notifications
unclutter &		# Remove mouse when idle

exec dwm
