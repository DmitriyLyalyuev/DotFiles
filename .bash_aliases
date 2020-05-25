alias mkdir='mkdir -pv'
alias wget='wget -c'
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias shutdown='sudo /sbin/shutdown'
alias fuck='history -d $((HISTCMD-2)) && history -d $((HISTCMD-1))'
alias hogs='for i in G M K; do du -ah | grep [0-9]$i | sort -nr -k 1; done | head -n 11'
alias less='less -FX'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
#alias python='python3'
#alias pip='/usr/local/bin/pip3'

# DevOps tools
alias tf='terraform'
alias be="bundle exec"
alias lg="lazygit"

# MacOS fixes
alias whois='ssh home whois'

wanip() {
curl ifconfig.me
}

tolower(){ echo ${@,,}; }

weather() {
curl http://wttr.in/$1
}
