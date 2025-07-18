source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
export EDITOR=vim
bindkey -v
FPATH="$HOME/.docker/completions:$FPATH"
autoload -Uz zkbd

# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' file-sort name
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle :compinstall filename '/home/filip/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt notify
unsetopt autocd
# End of lines configured by zsh-newuser-install

# Key bindings
unsetopt MULTIBYTE
source ~/.zkbd/$TERM-${${DISPLAY:t}:-$VENDOR-$OSTYPE}
    [[ -n ${key[Left]} ]] && bindkey "${key[Left]}" backward-char
    [[ -n ${key[Right]} ]] && bindkey "${key[Right]}" forward-char
    [[ -n ${key[Backspace]} ]] && bindkey "${key[Backspace]}" backward-delete-char
    [[ -n ${key[Delete]} ]] && bindkey "${key[Delete]}" delete-char
    [[ -n ${key[Home]} ]] && bindkey "${key[Home]}" beginning-of-line
    [[ -n ${key[End]} ]] && bindkey "${key[End]}" end-of-line

# Highlight colors overwrite
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[alias]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[alias-global]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=cyan'

# Autostart
autoload -Uz promptinit
# promptinit

clear
fastfetch

# Aliases
alias vim='nvim'
alias hibernate='systemctl hibernate'
alias neofetch='fastfetch'
alias ':q'='exit'
alias wikiman='wikiman -s arch'
alias ssh='kitten ssh'
alias ls='eza'
alias ll='eza -lha'
alias grep='rg --no-line-number --color=always'
alias find='fd'
alias cd='z'
alias cat='bat'

# Colours
#export TERM=xterm-color
alias diff='diff --color=always'
alias yay='yay --color=auto'
# alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias ss='grc ss'
alias pacman='pacman --color=always'
alias dmesg='dmesg --color=always'
export LESS='-R --use-color -Dd+r$Du+b$'
alias ping='grc ping'
alias traceroute='grc traceroute'
alias ps='grc ps'
alias xxdc='xxd -R always'

# zoxide setup. Must be beow compinit.
eval "$(zoxide init zsh)"

# End of the file. Do not insert anything below! Needed for corectness of syntax highlight
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(starship init zsh)"

# Created by `pipx` on 2025-06-06 05:54:12
export PATH="$PATH:/home/filip/.local/bin"
