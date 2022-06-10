if status is-interactive
    # Commands to run in interactive sessions can go here
 
    fish_add_path $HOME/bin

    alias gs='git status'
    alias gst='git status'
    alias gp='git push'
    alias gl='git pull'
    alias glg='git log --oneline'
    alias ga='git add'
    alias gaa='git add -A'
    alias gc='git commit'
    alias gcam='git commit --amend'
    alias gd="git diff HEAD"

    # prevent accidental overwrite
    alias mv='mv -i'
    alias rm='rm -i'

    # modern utils
    alias cat='bat -p'
    alias ls='exa'
    alias l='exa -l'
end
