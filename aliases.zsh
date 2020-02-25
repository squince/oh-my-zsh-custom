# My Custom Aliases for ZSH
alias myip="curl http://ipecho.net/plain; echo"
alias zedit="vi ~/.zshrc"
alias upzed="source ~/.zshrc"
alias usage="du -h -d1 | sort -rh"
alias port="lsof -i "

# ToDo.sh
alias td='/usr/local/Cellar/todo-txt/2.10/bin/todo.sh'
alias tdp='/usr/local/Cellar/todo-txt/2.10/bin/todo.sh -d ~/.ptodo.cfg'
alias tdm='/usr/local/Cellar/todo-txt/2.10/bin/todo.sh -d ~/.metodo.cfg'
alias tds='/usr/local/Cellar/todo-txt/2.10/bin/todo.sh -d ~/.ec2todo.cfg'
alias tdl='clear; /usr/local/Cellar/todo-txt/2.10/bin/todo.sh ls'
alias tdpl='clear; /usr/local/Cellar/todo-txt/2.10/bin/todo.sh -d ~/.ptodo.cfg ls'
alias tdml='clear; /usr/local/Cellar/todo-txt/2.10/bin/todo.sh -d ~/.metodo.cfg ls'
alias tdsl='clear; /usr/local/Cellar/todo-txt/2.10/bin/todo.sh -d ~/.ec2todo.cfg ls'
alias todo='/usr/local/Cellar/todo-txt/2.10/bin/todo.sh'

# Environment Stuff
alias ll='ls -lhaFG'
alias llc='clear && ls -lhaFG'
alias vi='/Applications/MacVim.app/Contents/MacOS/Vim'
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias ports="netstat -a | grep LISTEN"
alias listen="lsof -n -i4TCP:"
alias xcodeaccept="sudo xcodebuild -license accept"
alias bkuphome="cd ~/ && ./.squince_backup_script.sh"
alias icloud="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
alias shebang='echo "#!/usr/bin/env bash"'


# git stuffs
alias gitching="git whatchanged | grep -A 4 commit | less"
alias gitbranches="git for-each-ref --format='%(committerdate) %09 %(authorname) %09 %(refname)' | sort -k5n -k2M -k3n -k4n"
alias gitgraph="git log --graph --oneline"
alias gitupstream="git log --oneline --no-merges"
alias gl="git log --graph --date=relative --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset%n%w(0,4,4)%-b%n%n%-N'"

# Work Stuff
#alias vpn="nvm use v6.2.1 && sudo vpn-client" # Ben VPN
#alias vpn="sudo openconnect mrx.glgroup.com
#alias vpn="sudo vpn-client"
alias vpn="nvm use 10.15.1 && sudo glgroup openvpn"
alias shipup="glgroup devship create --branch squince --headquarters 'git@github.com:glg/ec2.starphleet.dev.headquarters.git'"
alias dbup="glgroup devdb create"
alias jups="source activate giftcards && source ./etc/env.sh && jupyter notebook"
alias newprod="source activate newproducts && source ./etc/env.sh && jupyter notebook"
alias dealspec="source activate dealspec && source ./etc/env && jupyter notebook"
alias myml="source activate myml && jupyter notebook"
alias gcsrc="source activate giftcards && conda env list"
alias tokenize="node ~/TOOLS/tokenize.js"
alias decodetoken="node ~/TOOLS/decodeToken.js"
alias mixevents="ag \"onclick=\"mixpanel.track\(('[A-z ]*')\" -o --heading | grep onclick | awk -F\' '{print $2}' | sort"
alias devship="ssh admiral@squince.dev.glgresearch.com"
