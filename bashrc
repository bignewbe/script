# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
#
# If running interactively, then:
if [ "$PS1" ]; then
    alias   ls='ls --color=auto'
    alias   la='ls -lah'
    alias   ll='ls -lh'

    alias   d='dirs'
    alias   h='history'
    alias   pd='pushd'
    alias   po='popd'
    alias   m='more'
    alias   cd..='cd ..'
    alias   cdh='cd ~'
    alias   cdp='cd -'
    alias   cdw='cd ~/liping'
    alias   cdc='cd ~/cvsfile'
    alias   em='emacs'
    alias   xem='xemacs'
    
    #git command
    alias  gl='git log --oneline --decorate --graph --all -10'
    alias  gla='git log --graph --full-history --all --color --date=short --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%ad %s"'
    alias  gt='git tag'
    alias  gco='git checkout'
    alias  gcom='git checkout master'
    alias  gcod='git checkout dev'
    alias  gs='git status'
    alias  gb='git branch'
    alias  ga='git add'
    alias  gci='git commit -m'
    alias  gclone='git clone --single-branch'
    alias  gfindtagfromcommit='git describe --tags'
    alias  gfindcommitfromtag='git rev-list -n 1'
    alias  greset='git reset --hard HEAD'
    alias  gitshowremote='git remote -v'
    
    alias UpdateLib='python D:/home/liping/python/UpdateLib.py'
    alias MsBuild='python D:/home/liping/python/MsBuild.py -C D:\\home\\liping\\enviroment.json'
    alias ssh21='ssh -X liping@131.155.26.21'

    #export PS1='\[\e]1;My Desk\a\e]2;\u  \h  \s  \t  \d   ${PWD}\a\]\[\u@\h \W]$: '
    export PS1='\W]$: '

    #export CVSROOT=:ext:liping@131.155.26.30:/home/liping/cvsroot
    export CVSROOT=/cygdrive/d/home/D_drv/OneDrive/cvsroot
    export CVS_RSH=ssh
    export EDITOR=emacs

    export DISPLAY=:0
    export v1=liping@131.155.26.30
    export v2=liping@131.155.26.21
    export v8=liping@131.155.26.8

    #set the shared library path
    export LD_LIBRARY_PATH=/home/liping/lib:/usr/lib:/usr/X11R6/lib:$LD_LIBRARY_PATH
	
    export PATH=/cygdrive/c/Miniconda3/:$HOME/bin:$PATH
fi
