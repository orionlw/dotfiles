function personal --wraps='/usr/bin/git --git-dir=$HOME/bin/ --work-tree=$HOME' --wraps=/usr/bin/git\ --git-dir=\$HOME/bin/\n --wraps='/usr/bin/git --git-dir=$HOME/bin/' --wraps='/usr/bin/git --git-dir=$HOME/bin/ --work-tree=$HOME/bin' --description 'alias personal=/usr/bin/git --git-dir=$HOME/bin/ --work-tree=$HOME/bin'
  /usr/bin/git --git-dir=$HOME/bin/ --work-tree=$HOME/bin $argv
        
end
