function cs
    cd $argv
    ls -lha
end

alias ls 'ls -lha'
alias v nvim
alias vi nvim
alias sv 'vim -u ~/.SpaceVim/vimrc'
alias readme 'wget https://raw.githubusercontent.com/othneildrew/Best-README-Template/master/BLANK_README.md'

alias vf 'v ~/.config/fish/config.fish'
alias vv 'v ~/.config/nvim/init.lua'

alias cv 'cd ~/.config/nvim'
alias cf 'cd ~/.config/fish'

alias 322 'cd ~/Dev/322;source ./322-venv/bin/activate.fish'

alias cm 'xmodmap ~/.config/fish/colemak_dh_ansi_us.xmodmap'
alias qw 'xmodmap ~/.config/fish/qwerty.xmodmap'
alias kubectl="minikube kubectl --"

starship init fish | source
