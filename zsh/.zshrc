#eval "$(oh-my-posh init zsh --config https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/tokyonight_storm.omp.json)"

eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/custom-tokyo-night.toml)"


alias ls='eza --color --icons'
alias la='eza -la --color --icons'
alias lr='eza -lR --color --icons'

alias nvim-conf='cd ~/.config && nvim'
