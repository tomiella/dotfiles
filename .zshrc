# Starship
eval "$(starship init zsh)"

HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOMEBREW_PREFIX/share/zsh-you-should-use/you-should-use.plugin.zsh

alias pull="ls | xargs -P10 -I{} git -C {} pull"
alias cat="bat"

# Eza
alias l="eza -l --icons --git -a"
alias ll="l"
alias lt="eza --tree --level=2 --long --icons --git"

eval "$(zoxide init zsh)"
