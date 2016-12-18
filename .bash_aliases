# File: ~/bash_aliases
# Author: Ali Mehmandoost <https://github.com/Mehmandoost>
# Desc: Definition of some useful aliases for the bash


# Some common shortcuts for file-/directory commands
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'
alias l='ls'
alias grep='grep --color=auto'

# Aliases for common chmods
alias 000='chmod 000'
alias 644='chmod 644'
alias 755='chmod 755'


# Aliases for software managment
alias pacman='sudo pacman'
alias update='sudo pacman -Syu'


# Execute the last command as root
alias lr='sudo $(history | tail -n 2 | head -n 1 | sed -e "s/^[ ]*[0-9]*[ ]*//g")'


# Show state of charge
alias batterypower='upower -i /org/freedesktop/UPower/devices/battery_BAT0| grep -E "state|to\ full|percentage"'


# kerio VPN commands
alias vpnstart='sudo kvpnc start'
alias vpnstop='sudo kvpnc stop'
alias vpnconfig='sudo kvpnc configure'
alias vpnlog='cat /var/log/kerio-kvc/error.log'

# airvpn
alias airvpn='sudo airvpn'

# mount an encrypt folder
alias mecryptfs='sudo mount -t ecryptfs'
alias prettyjson='python -m json.tool'

# always run systemctl as root
alias systemctl='sudo systemctl'

# run a ssh tunnel
alias ssh_tunnel='ssh -C2qTnN -D'

# Search for a process containing a given name
function pps() {
ps aux | grep "$@" | grep -v 'grep';
}

# less with source-highlithing
sless(){
 source-highlight-esc.sh $* | less -R ;
}

# emacsClient
emacsd(){
if [ $(pgrep -xc "emacs") = "0" ]
then
    emacs --daemon 
fi
    emacsclient $*
}

# stop emacs server
alias stopemacs.d="emacsclient -e '(client-save-kill-emacs)'"

my.say() {
wget -q -O /tmp/bash.my.functions.hello.data.01.mp3 wget  --header="Accept: text/html" --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:21.0) Gecko/20100101 Firefox/21.0" "http://translate.google.com/translate_tts?tl=en_us&q=$*";

local IFS=+;mplayer −quiet /tmp/bash.my.functions.hello.data.01.mp3 > /dev/null 2>&1;
}
