alias eb='vim ~/.bash_profile'
alias sb='source ~/.bash_profile'
alias grep='grep --colour=auto'
alias server='python -m SimpleHTTPServer'
alias vim='nvim'

##### SYSTEM #####
export BASH_SILENCE_DEPRECATION_WARNING=1
export GOBIN="$HOME/go/bin"
export GOPATH="$HOME/go"
export GO111MODULE=on
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export PATH="$HOME/Library/Python/2.7/bin:${PATH}"
export PATH="$HOME/.gem/ruby/2.3.0/bin:${PATH}"
export PATH="$HOME/.jenv/bin:${PATH}"
export GPG_TTY=$(tty)
export HOMEBREW_NO_AUTO_UPDATE=1

##### GENERAL #####
alias ls='ls -GFh'
alias grep='grep --colour=auto'
bindkey '\e[H' beginning-of-line
bindkey '\e[F' end-of-line

setopt PROMPT_SUBST
PROMPT='%{%F{blue}%}%9c %{%F{green}%}$(current_git_branch)%{%F{magenta}%}$ %{%F{none}%}'

##### GIT #####
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

function gl {
  hash='%C(red)%h'
  date='%C(blue)%cs'
  msg='%C(white)%<(80,trunc)%s'
  auth='%C(dim white)- %an'
  git log "$@" -15 --abbrev-commit --format=format:"$hash $date $msg $auth%C(reset)"
}

function gs { git status "$@" }
function gbb { git branch "$@" --color=always --sort=-committerdate | head -10 }
function gss { git stash save "$@" }
function gsa { git stash apply stash@{$1} }
function gsd { git stash drop stash@{$1} }
function gsp { git stash pop stash@{$1} }
 
function gsl { 
  reflog='%C(red)%gd'
  date='%C(blue)%cs'
  msg='%C(reset)%gs'
  git stash list --color=always --format="$reflog $date $msg" | sed -e "s/On.*:\ //" 
}
 
function gp {
  branch=`echo $(git_branch) | sed 's/^.\(.*\).$/\1/'`
  git push --set-upstream origin $branch
}

function gb {
  options=( $(git for-each-ref refs/heads/ --format='%(refname:short)' --sort=-committerdate | head -10) )

  source ~/.scripts/menu-select.sh
  menu-select "${options[@]}"
  choice=$?

  git checkout ${options[$choice]}
}


current_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
