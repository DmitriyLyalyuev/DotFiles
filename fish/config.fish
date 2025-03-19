### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
set --export --prepend PATH "/Users/silver/.rd/bin:/Users/silver/bin"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

if status is-interactive
    # Commands to run in interactive sessions can go here
end
 
# Disable the fish greeting message
set fish_greeting ""
 
# Print a new line after any command
source ~/.config/fish/functions/postexec_newline.fish
source ~/.aliases

# Setup brew
eval "$(/opt/homebrew/bin/brew shellenv)"
 
# Clear line on CTRL + C
# Sometimes it still doesn't work well enough on node.js scripts :(
bind --preset \cC 'cancel-commandline'
 
# Auto-switch nvm version on cd
# Requires a ~/.node-version file with a valid node version
# https://github.com/jorgebucaran/nvm.fish/pull/186
if type -q nvm
  function __nvm_auto --on-variable PWD
  nvm use --silent 2>/dev/null # Comment out the silent flag for debugging
  end
  __nvm_auto
end
 
# Pyenv setup
# Requires `brew install pyenv`
if type -q pyenv
  status --is-interactive; and source (pyenv init -|psub)
end
 
# `ls` → `ls -laG` abbreviation
abbr -a -g ls ls -laG
 
# `ls` → `exa` abbreviation
# Requires `brew install exa`
if type -q exa
  abbr --add -g ls 'exa --long --classify --all --header --git --no-user --tree --level 1'
end
 
# `cat` → `bat` abbreviation
# Requires `brew install bat`
if type -q bat
  abbr --add -g cat 'bat'
end
 
# `rm` → `trash` abbreviation (moves files to the trash instead of deleting them)
# Requires `brew install trash`
if type -q trash
  abbr --add -g rm 'trash'
end

function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

# uv
fish_add_path "/Users/silver/.local/bin"
