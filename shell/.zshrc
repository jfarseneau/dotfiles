# asdf
export PATH="$HOME/.asdf/shims:$PATH"

# psql
export PATH=/Applications/Postgres.app/Contents/Versions/12/bin:$PATH

# Hook direnv into your shell.
eval "$(asdf exec direnv hook zsh)"

alias gitprettylog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# Exa
alias ll='exa --long --header --git'
alias l='exa --long --header --git'

# McFly
if [[ -r "/usr/local/opt/mcfly/mcfly.zsh" ]]; then
  source "/usr/local/opt/mcfly/mcfly.zsh"
fi

# Plugins
. <(zr zsh-users/zsh-autosuggestions zsh-users/zsh-syntax-highlighting zsh-users/zsh-history-substring-search)

# Starship
eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
