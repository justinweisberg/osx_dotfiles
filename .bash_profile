function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

export PATH="$HOME/development/rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:"
eval "$(rbenv init -)"
source ~/dotfiles/git-completion.bash
source ~/dotfiles/git-prompt.bash
export PS1='\w$(__git_ps1 "(%s)")$(parse_git_dirty) $ '
