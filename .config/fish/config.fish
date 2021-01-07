set --erase fish_greeting
function fish_greeting
end




alias cf='cd ~/.config'
alias cfb='cd ~/.config/bspwm'
alias cfs='cd ~/.config/sxhkd'
alias cfi='cd ~/.config/i3'
alias cfp='cd ~/.config/polybar'
alias ch='cd ~/'
alias cs='cd ~/.scripts'
alias cff='cd ~/.config/fish'
alias la='ls -A'
alias ..='cd ..'
alias ...='cd ../..'
alias cfn='cd ~/.config/nvim'
alias cfnp='cd ~/.config/nvim/vim-plug'
alias cff='cd ~/.config/fish'
alias cfra='cd ~/.config/ranger'
alias cfd='cd ~/.config/dunst'
alias cfro='cd ~/.config/rofi'

abbr -a chx chmod +x
abbr -a ne nvim
abbr -a cpi nvim ~/.config/picom.conf




starship init fish | source
