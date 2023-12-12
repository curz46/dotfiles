set -gx XDG_CONFIG_HOME $HOME/.config

if status --is-interactive
    # Commands to run in interactive sessions can go here
    fish_add_path /sbin
    fish_add_path /usr/bin
    fish_add_path /bin
    fish_add_path $HOME/bin
    fish_add_path $HOME/.cargo/bin
    fish_add_path $HOME/.local/bin

    set -gx EDITOR vim
    set -gx TERM xterm-256color

    alias gs='git status'
    alias gst='git status'
    alias gp='git push'
    alias gl='git log --oneline'
    alias ga='git add'
    alias gaa='git add -A'
    alias gc='git commit'
    alias gcam='git commit --amend'
    alias gd="git diff HEAD"

    # prevent accidental overwrite
    alias mv='mv -i'
    alias rm='rm -i'

    # modern utils
    alias cat='batcat -p'
    alias ls='exa'
    alias l='exa -l'
    #alias diff='delta'
    alias df='dust'

    alias feh='feh --scale-down'

    # machine-dependent configuration (not synced)
    source $HOME/.config/fish/local.fish
end
