if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_user_paths $fish_user_paths $HOME/.cargo/bin
    eval (/opt/homebrew/bin/brew shellenv)
    eval (anyenv init - | source)
    # alias
    alias ls exa
    starship init fish | source
    # neovimの設定ファイル配置場所
    set -gx XDG_CONFIG_HOME "$HOME/.config"
end
status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source

