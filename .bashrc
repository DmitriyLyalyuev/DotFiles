# If not running interactively, don't do anything
[ -z "$PS1" ] && return

HISTCONTROL=ignoredups:ignorespace
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s histappend
shopt -s checkwinsize

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[\033[01;31m\]$(git-ps)\[\033[00m\]\$ '

if ! grep '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

[ -f ~/.bash_aliases ] && . ~/.bash_aliases
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
if [ -f ~/.bash_completion ] && ! shopt -oq posix; then
    . ~/.bash_completion
fi

[ -f ~/.bash_security_tokens ] && . ~/.bash_security_tokens

export PATH="$HOME/go/bin:$(brew --prefix qt@5.5)/bin:$HOME/.rbenv/shims:$HOME/.rbenv/bin:$HOME/bin:$PATH:/usr/local/bin:/usr/local/sbin"
export CDPATH=/Users/silver/Projects/ManageBac
export LC_ALL=en_US.UTF-8
export LOCAL_ANSIBLE_PYTHON_INTERPRETER=`which python`
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

ssh-add

eval "$(rbenv init -)"
