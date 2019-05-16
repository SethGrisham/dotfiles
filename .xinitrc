[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
~/.fehbg &
unclutter &
slstatus &
exec dwm
