function cs
    cd $argv
    ls -lha
end

alias ls 'exa -al --color=always --group-directories-first --icons'
alias v nvim
alias vi nvim
alias sv 'vim -u ~/.SpaceVim/vimrc'
alias readme 'wget https://raw.githubusercontent.com/othneildrew/Best-README-Template/master/BLANK_README.md'

alias vf 'v ~/.config/fish/config.fish'
alias vv 'v ~/.config/nvim/init.lua'

alias cv 'cd ~/dotfiles/nvim'
alias cf 'cd ~/dotfiles/fish'

alias 322 'cd ~/Dev/322;source ./322-venv/bin/activate.fish'

alias cm 'xmodmap ~/.config/fish/xmodmap/colemak_dh_ansi_us.xmodmap'
alias qw 'xmodmap ~/.config/fish/xmodmap/qwerty.xmodmap'
alias wm 'xmodmap ~/.config/fish/xmodmap/workman.xmodmap'
alias kubectl="minikube kubectl --"

contains ~/bin $fish_user_paths; or set -Ua fish_user_paths ~/bin
contains ~/.cargo/bin $fish_user_paths; or set -Ua fish_user_paths ~/.cargo/bin

starship init fish | source
