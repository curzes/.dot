# Mergar configurationen från Xresources och stanger av lockscreen och annat skit
xrdb -merge .Xresources &
# xrdb -query -all & Samma sak som den under, tror jag
xrdb -q &
xset -spms &
xset s noblank &
xset -dpms s off &
xsetroot -cursor_name left_ptr &

# Saker som har att gora med teckensnitt
xset +fp ~/.fonts &
xset fp rehash &

# /usr/bin/dropbox &
# feh --randomize --bg-scale ~/.config/wallpapers/blk/* &
feh --bg-scale ~/.config/wallpapers/4.jpg
# conky &
compton --config ~/.config/compton.conf -b &
# Ta bort musen (sudo pacman -S unclutter)
unclutter &
amixer set 'Master' 100% &
# bash ~/.config/dzen2/dzen.sh &

# exec xmonad
# exec openbox-session
exec dwm
