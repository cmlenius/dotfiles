alias eb='vim ~/.bash_profile'
alias sb='source ~/.bash_profile'
alias gs='git status'
alias grep='grep --colour=auto'
alias server='python -m SimpleHTTPServer'
alias java8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`; java -version"
alias java11="export JAVA_HOME=`/usr/libexec/java_home -v 11`; java -version"

##### SYSTEM #####
export BASH_SILENCE_DEPRECATION_WARNING=1
export GOPATH="$HOME/go"
export GOROOT="$(brew --prefix golang)/libexec"
export GOBIN="$HOME/go/bin"
export GO111MODULE=on
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export PATH="$HOME/Library/Python/2.7/bin:${PATH}"
export PATH="$HOME/.gem/ruby/2.3.0/bin:${PATH}"
export PATH="$HOME/.jenv/bin:${PATH}"
export GPG_TTY=$(tty)
#eval "$(jenv init -)"

##### CETAS #####
export GH_USER=cmlenius
export GH_EMAIL=cameron.lenius@gmail.com
export GH_PASSWORD=$(cat ~/.token)
export DOCKER_BUILDKIT=1

##### GIT #####
git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Command Prompt
PS1="\[\033[34m\]\w \[\033[32m\]\$(git_branch)\[\033[00m\]$ "

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Better git log
function gl {
  #git log "$@" --color --pretty=format:'%C(yellow)%h%Creset -%C(red)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'
  hash='%C(yellow)%h%C(reset)'
  date='%C(blue)%ar%C(reset)'
  auth='%C(dim white)- %an%C(reset)'
  refs='%C(green)%d%C(reset)'
  msg='%C(white)%s%C(reset)'
  git log "$@" -15 --abbrev-commit --date=local --decorate --format=format:"$hash $date $msg $auth"
}

# Push and set upstream
function gp {
  branch=`echo $(git_branch) | sed 's/^.\(.*\).$/\1/'`
  git push --set-upstream origin $branch
}

# Spawns selectable menu of recent git branchs
function gb {
  options=( $(git for-each-ref refs/heads/ --format='%(refname:short)' --sort=-committerdate | head -10) )

  source ~/src/scripts/menu-select.sh
  menu-select "${options[@]}"
  choice=$?

  #sqitch checkout ${options[$choice]}
  git checkout ${options[$choice]}
}
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
