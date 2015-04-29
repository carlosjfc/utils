# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH
umask 002

alias ..="cd .."
alias ...="cd ../.."
#add all unversioned files to SVN
alias svn.ad="svn add --force * --auto-props --parents --depth infinity -q"
#delete all locally missing files on working copy
alias svn.mi.de="svn st | grep ! | cut -d! -f2| sed 's/^ *//' | sed 's/^/"/g' | sed 's/$/"/g' | xargs svn rm"
#delete all .svn folders recursively
alias .svn.de="find . -type d -name '.svn' -print -exec rm -rf {} \;"
#replace the spaces in file name for underscores
alias .file.rp.sp="for file in *; do mv "$file" `echo $file | tr ' ' '_'` ; done"
#go to my home
alias home="cd /home/username"
#go to my sites root
alias sites="cd /home/username/sites"
