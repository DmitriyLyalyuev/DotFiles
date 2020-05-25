#!/bin/bash

function git-unpushed {
    brinfo=$(LC_ALL=C git branch -v)
    if [[ $brinfo =~ ("[ahead "([[:digit:]]*)]) ]]
    then
        unpushed="${BASH_REMATCH[2]}"
    fi
}

function git-unstaged {
    st=$(LC_ALL=C git status | egrep 'Changes not staged for commit|Untracked files' | tail -1)
    if [[ $st == "Changes not staged for commit:" || $st == 'Untracked files:' ]]
    then
        unstaged="✘"
    fi
}

function git-staged {
    st=$(LC_ALL=C git status | grep 'Changes to be committed' | tail -1)
    if [[ $st == "Changes to be committed:" ]]
    then
        staged="✽"
    fi
}

function git-branch {
    br=$(LC_ALL=C git branch | cut -d' ' -f2)
}

function git-ps {
    [ -d '.git' ] || return
    git-branch
    git-unstaged
    git-staged
    git-unpushed

    if [[ $br ]]; then
        ps="$br"
    fi
    if [[ $unpushed ]]; then
        ps="${ps}($unpushed)"
    else
        ps="${ps}(✔)"
    fi
    if [[ $staged ]]; then
        ps="${ps}${staged}"
    fi
    if [[ $unstaged ]]; then
        ps="${ps}${unstaged}"
    fi
    echo $ps
}

# MOTD
function echo_motd() {
    local color="$1"
    printf "${color}$2\033[0m\n"
}
