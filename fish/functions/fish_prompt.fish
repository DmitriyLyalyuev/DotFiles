function fish_prompt
    echo
    set -l pointer_color red
    test $status = 0; and set pointer_color yellow

    set -q __fish_git_prompt_showupstream
    or set -g __fish_git_prompt_showupstream auto

    if not set -q VIRTUAL_ENV_DISABLE_PROMPT
        set -g VIRTUAL_ENV_DISABLE_PROMPT true
    end

    set_color yellow
    printf '%s' $USER
    set_color normal
    printf ' in '

    set_color $fish_color_cwd
    printf '%s' (prompt_pwd --dir-length=0)
    set_color normal

    set_color $fish_color_venv
    if set -q VIRTUAL_ENV
      pushd $VIRTUAL_ENV/..
      set cwd $(pwd)
      set VENV_NAME (basename $cwd)
      popd
      printf ' (%s)' $VENV_NAME
    end
    set_color normal

    # git
    set_color white -d
    set -l prompt_git (fish_git_prompt '%s')
    test -n "$prompt_git"
    and printf ' %s' $prompt_git
    set_color normal

    # Line 2
    echo
    set_color $pointer_color
    printf '» '
    set_color normal
end