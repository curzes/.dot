#!/bin/zsh

unsetopt PROMPT_SP

# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$HOME/.local/bin"

#--- Use the first program that it detects in the array as the default app
export BROWSER="brave"
export EDITOR="vim code"
export FILEMANAGER="ranger"
export IMAGEVIEWER="feh"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export ZDOTDIR="$HOME/.config/zsh"
export HISTFILE="$HOME/.local/share}/history"
export XINITRC="$HOME/.config/x11/xinitrc"

# export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority" # This line will break some DMs.
# export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
# export GNUPGHOME="${XDG_DATA_HOME:-$HOME/.local/share}/gnupg"

export PASSWORD_STORE_DIR="$HOME/.config/pass"
export ELECTRUMDIR="$HOME/.local/share}/electrum"

#--- Adds colors to MAN-pages
export LESS_TERMCAP_mb=$'\E[01;31m'             # begin blinking
export LESS_TERMCAP_md=$'\E[01;31m'             # begin bold
export LESS_TERMCAP_me=$'\E[0m'                 # end mode
export LESS_TERMCAP_se=$'\E[0m'                 # end standout-mode
export LESS_TERMCAP_so=$'\E[01;44;33m'          # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'                 # end underline
export LESS_TERMCAP_us=$'\E[01;32m'             # begin underline

export ST="eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJVU0VSSUQ6ZHBsYXlzZTphNGVlOTEzOS1hNThmLTQ5MjgtYjMzZC0zZjk5YmM0OTk1NjUiLCJqdGkiOiJ0b2tlbi1lNzI3ZjExZi1jYTM3LTRkOTktYmMxMC1jZTFmNGUyNzZhYzgiLCJhbm9ueW1vdXMiOmZhbHNlLCJpYXQiOjE2MTc2MzgzMTF9.ngeJSMY1wSLVw8YvhDkwSCS4pIADS5yedVb8KZPVHaY"

# This is the list for lf icons:
export LF_ICONS="di=📁:\
fi=📃:\
tw=🤝:\
ow=📂:\
ln=⛓:\
or=❌:\
ex=🎯:\
*.txt=✍:\
*.mom=✍:\
*.me=✍:\
*.ms=✍:\
*.png=🖼:\
*.webp=🖼:\
*.ico=🖼:\
*.jpg=📸:\
*.jpe=📸:\
*.jpeg=📸:\
*.gif=🖼:\
*.svg=🗺:\
*.tif=🖼:\
*.tiff=🖼:\
*.xcf=🖌:\
*.html=🌎:\
*.xml=📰:\
*.gpg=🔒:\
*.css=🎨:\
*.pdf=📚:\
*.djvu=📚:\
*.epub=📚:\
*.csv=📓:\
*.xlsx=📓:\
*.tex=📜:\
*.md=📘:\
*.r=📊:\
*.R=📊:\
*.rmd=📊:\
*.Rmd=📊:\
*.m=📊:\
*.mp3=🎵:\
*.opus=🎵:\
*.ogg=🎵:\
*.m4a=🎵:\
*.flac=🎼:\
*.wav=🎼:\
*.mkv=🎥:\
*.mp4=🎥:\
*.webm=🎥:\
*.mpeg=🎥:\
*.avi=🎥:\
*.mov=🎥:\
*.mpg=🎥:\
*.wmv=🎥:\
*.m4b=🎥:\
*.flv=🎥:\
*.zip=📦:\
*.rar=📦:\
*.7z=📦:\
*.tar.gz=📦:\
*.z64=🎮:\
*.v64=🎮:\
*.n64=🎮:\
*.gba=🎮:\
*.nes=🎮:\
*.gdi=🎮:\
*.1=ℹ:\
*.nfo=ℹ:\
*.info=ℹ:\
*.log=📙:\
*.iso=📀:\
*.img=📀:\
*.bib=🎓:\
*.ged=👪:\
*.part=💔:\
*.torrent=🔽:\
*.jar=♨:\
*.java=♨:\
"
