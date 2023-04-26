export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="dst"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
plugins=(git)

bindkey -s ^f "tmux-sessionizer\n"

source $ZSH/oh-my-zsh.sh

if [ -f "$HOME/.sdprc" ];
then
    source ~/.sdprc
else;
    echo "Unable to find '$HOME/.sdprc'" >&2
fi

if [ -f "$HOME/.cpscrc" ];
then
    source ~/.cpscrc
else;
    echo "Unable to find '$HOME/.cpsrc'" >&2
fi

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export EDITOR='nvim'
export GOPATH=$HOME/go
export PATH="/usr/local/go/bin:$GOPATH/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="~/bin:$PATH"
export PATH="/.local/share/nvim/mason/bin/:$PATH"
export DOTFILES="$HOME/.dotfiles"

alias pdf="zathura"
alias v="nvim"
alias vi="nvim"
alias sdn="shutdown now"
alias rdn="reboot"
alias bashrc="cat $HOME/.bashrc"
alias sdprc="cat $HOME/.sdprc"
alias cpscrc="cat $HOME/.cpscrc"
alias zshrc="cat $HOME/.zshrc"
alias sau="sudo apt update; sudo apt upgrade -y"
alias open="xdg-open"
alias yayskip="yay --mflags --skipinteg -Syu"
alias aoe="setxkbmap -layout us"
alias asd="setxkbmap -layout dvorak"
alias pacmanmirror="sudo reflector --verbose --latest 20 --sort rate --save /etc/pacman.d/mirrorlist"
alias ta="tmux a"

function vf() {
    file=$(fzf)
    nvim $file
}

function cl(){
    cd $1
    l
}

function cm(){
    mkdir -p $1
    cd $1
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/therealkey/.miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/therealkey/.miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/therealkey/.miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/therealkey/.miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

dotpull() {
    echo "Attempting to pull latest from https://github.com/cameronswilliamson/.dotfiles"
    set -e
    currentDirectory=$PWD
    cd $HOME/.dotfiles
    git pull
    cd $currentDirectory
}
