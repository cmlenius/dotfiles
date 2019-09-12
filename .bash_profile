##### COMMAND PROMT #####
git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1="\[\033[00;32m\]\$(git_branch)\[\033[00m\] \[\033[00;34m\]\W\[\033[00m\] \$ "


##### GIT #####
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

alias gb='git branch'
alias gs='git status'


##### MISC #####
repl() {
  if [ -z "$1" ]; then
    lein repl
  else
    lein repl :start :port $1
  fi
}

clog() {
  files=(*.log)
  if [ ${#files[@]} -eq 1 ]; then
    if [ -z "$1" ]; then
      tail -n 300 $files
    else
      if [ $1 -eq 0 ]; then
        cat $files
      else
        tail -n $1 $files
      fi
    fi
  else
    echo "More than 1 log file"
  fi
}

alias eb='vim ~/.bash_profile'
alias sb='source ~/.bash_profile'
