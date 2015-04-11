# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme agnoster

# All built-in plugins can be found at ~/.oh-my-fish/plugins/
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Enable plugins by adding their name separated by a space to the line below.
set fish_plugins theme

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# set fish_function_path $fish_function_path "/usr/lib/python3.4/site-packages/powerline/bindings/fish/"
# . powerline-setup.fish

set -g theme_display_user yes
# set -g default_user hardware

set -x EDITOR "vim"
set -x VISUAL "vim"
set -x PAGER "less -r"
set -x TERM xterm-256color
set -x LC_ALL en_US.UTF-8
set -x LC_CTYPE en_US.UTF-8
set -x PATH $PATH $HOME/bin $HOME/.gem/ruby/2.2.0/bin

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
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
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

# SSH Servers
. $HOME/.config/fish/includes/private-alias.fish
