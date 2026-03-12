# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
eval "$(starship init zsh)"
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=10"
export PATH="$PATH:/home/exi/.npm-global/bin"
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/exi/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
