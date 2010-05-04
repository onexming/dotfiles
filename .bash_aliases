# Dir navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ~='cd ~'
alias ll="ls -lahG"
alias ls="ls -G"

# Utilities
alias a="ack -ia"
alias d="du -h -d=1"
alias df="df -h"
alias g="git"
alias grep='GREP_COLOR="1;37;41" LANG=C grep --color=auto'
alias h="history"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""
alias ip="curl -s http://checkip.dyndns.com/ | sed 's/[^0-9\.]//g'"
alias localip="ipconfig getifaddr en1"
alias vp="vim -p"

# Sync
alias sync_irc="rsync -avz ~/Sites/IRC/ slice:/home/gianni/www/irc.gf3.ca"