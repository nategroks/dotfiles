pfetch

export PS1="\[\e[30;47m\]\u\[\e[m\]@\[\e[37;44m\]\h\[\e[m\]_\[\e[44m\]\W\[\e[m\] "



# Blur {{{
if [[ $(ps --no-header -p $PPID -o comm) =~ yakuake|kitty ]]; then
        for wid in $(xdotool search --pid $PPID); do
            xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 -id $wid; done
fi
# }}}
