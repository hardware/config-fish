# Path to your oh-my-fish.
set -g OMF_PATH $HOME/.local/share/omf

# Path to your oh-my-fish configuration.
set -g OMF_CONFIG $HOME/.config/omf

### Configuration required to load oh-my-fish ###
# Note: Only add configurations that are required to be set before oh-my-fish is loaded.
# For common configurations, we advise you to add them to your $OMF_CONFIG/init.fish file or
# to create a custom plugin instead.

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# Theme
set fish_theme agnoster
set -g theme_display_user yes
# set -g default_user hardware
set --erase fish_greeting

set -x EDITOR "vim"
set -x VISUAL "vim"
set -x PAGER "less -r"
set -x TERM xterm-256color
set -x LC_ALL en_US.UTF-8
set -x LC_CTYPE en_US.UTF-8
set -x PATH $PATH $HOME/.gem/ruby/2.2.0/bin

alias grep='grep --color=auto'
alias ls='ls --color=auto -lh'
alias c='clear'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'
alias df='df -h'
alias dfall='df -h | grep /dev/sda'
alias du='du -c -h'
alias mkdir='mkdir -p'
alias nano='vim'
alias ping='ping -c 100'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias cls='echo -ne "\033c"'
alias myip='dig o-o.myaddr.l.google.com @ns1.google.com txt +short | sed -e \'2d;s/"//g\''
alias pgmodeler='/opt/pgmodeler/start.sh &'
alias reboot='systemctl reboot'
alias poweroff='systemctl poweroff'
alias halt='systemctl halt'
alias arch='alsi -a -u'
alias search="yaourt --color --pager -Ss"
alias systemctl="sudo systemctl"
alias dmesg='dmesg --color=always | less -r'
alias digs='dig +short'
alias digr='dig +short -x'
alias digt='dig +nocmd +noall +answer'
alias diga='dig +noauthority +noquestion +noadditional +nostats'
alias shred='shred -fuzv'
alias bitcoin='bitcoin-cli --datadir="/data/bitcoin"'
alias bitcoin-stop="bitcoin stop ; systemctl stop bitcoind"
alias dashcoin='dash-cli --datadir="/data/dashcoin"'
alias getas='whois -h whois.radb.net'

# SSH Servers
source $HOME/.config/fish/includes/private-alias.fish
