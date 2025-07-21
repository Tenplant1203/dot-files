# oh-my-zsh

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""
plugins=(git)
source $ZSH/oh-my-zsh.sh

# p10k -- terminal-theme-tool

if [[-r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"]]; then
source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
alias reload-zsh="source ~/.zshrc"
alias edit-zsh="nvim ~/.zshrc"
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# eza -- ls_visualization

alias ls="eza --icons=always --color=auto"

# zoxide -- cd_tools

eval "$(zoxide init zsh)"
alias cd="z"

# Java -- jdk

export JAVA_HOME=$(/usr/libexec/java_home -v 17)
export PATH="$JAVA_HOME/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/libarchive/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libarchive/include"
export PATH="/opt/homebrew/opt/libarchive/bin:$PATH"

# miniconda3 -- python environment

# >>> conda initialize >>>

# !! Contents within this block are managed by 'conda init' !!

**conda_setup="$('/Users/Tenplant/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$**conda_setup"
else
if [ -f "/Users/Tenplant/miniconda3/etc/profile.d/conda.sh" ]; then
. "/Users/Tenplant/miniconda3/etc/profile.d/conda.sh"
else
export PATH="/Users/Tenplant/miniconda3/bin:$PATH"
fi
fi
unset \_\_conda_setup

# <<< conda initialize <<<

# brew -- shell-priority-setting

export PATH="/opt/homebrew/bin:$PATH"

# personal-command -- shell-priority-setting

export PATH="$HOME/bin:$PATH"
