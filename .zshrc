# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$PATH

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zshrc_functions
source /opt/asdf-vm/asdf.sh


alias ls="exa -lah --git --icons --group-directories-first"
alias bat="bat --style=auto"

alias cdump="composer dump-autoload"
alias cu="composer update"
alias ci="composer install"

alias dev="npm run dev"
alias build="npm run build"
alias ni="npm install"
alias nu="npm update"

# Artisan
alias pa='php artisan'
alias a='php artisan'
alias tinker='pa tinker'
alias mfs='pa migrate:fresh --seed'
alias mf='pa migrate:fresh'
alias mr='pa migrate:rollback'
alias m='pa migrate'
alias rl='pa route:list'
alias horizon='pa horizon'
alias queue='pa queue'
alias key='a key:generate'
alias serve="a serve"

alias g="git"
alias gs="git status"
alias ga='git add .'
alias nah="git reset --hard;git clean -df"
alias co="git checkout"
alias gl='git log --oneline --decorate --color --graph'
alias gm="git add .;git commit -m "
alias wip="git add .;git commit -m 'wip' > /dev/null"
alias wips="git add .;git commit -m 'wip' > /dev/null;git push"
alias main='git checkout $([ `git rev-parse --quit --verify master` ] && echo "master" || echo "main")'
alias gp=gitpush
alias gpn=gpnv
