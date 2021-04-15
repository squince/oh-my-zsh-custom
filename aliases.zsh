# My Custom Aliases for ZSH
alias getmyip="curl http://ipecho.net/plain; echo"
alias myip="echo 'curl http://ipecho.net/plain; echo'"
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
alias killstreamliner="ps ax | grep 9090 | grep -v grep | cut -f 1 -d ' ' | xargs kill -9 ; rm -rf /tmp/ec2.starphleet.headquarters"
# alias killvpn="ps ax | grep -v grep | grep -i vpn | cut -f 1 -d ' ' | xargs kill -9"


# git stuffs
alias gitching="git whatchanged | grep -A 4 commit | less"
alias gitbranches="git for-each-ref --format='%(committerdate) %09 %(authorname) %09 %(refname)' | sort -k5n -k2M -k3n -k4n"
# alias gitgraph="git log --graph --decorate --oneline"
alias gitgraph="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)%aD%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)'"
alias gitupstream="git log --oneline --no-merges"
alias gl="git log --graph --date=relative --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset%n%w(0,4,4)%-b%n%n%-N'"
alias newauthor="git add-coauthor"
alias appbranches="ag autodeploy | grep -v master | grep -v canary | grep -v deploy2 | grep -v modifiedForCXHomeStaging | grep -v main | grep -v clientStaging | grep -v clientDemo | grep -v faker-proxy | grep -v epiquery-templates"
alias epibranches="ag BRANCH="
alias hqbranches="clear; appbranches; epibranches"
alias prune="git remote prune origin"

# Work Stuff
# alias vpn="nvm use v6.2.1 && sudo vpn-client" # Ben VPN
# alias vpn="sudo openconnect mrx.glgroup.com"
# alias vpn="sudo vpn-client"
alias vpn="nvm use 10.15.1 && sudo glgroup wireguard"
alias devship="ssh admiral@squince.dev.glgresearch.com"
alias demoship="ssh admiral@client-demo.dev.glgresearch.com"
alias stagingship="ssh admiral@client.dev.glgresearch.com"
alias shipup="glgroup devship create --branch squince --headquarters 'git@github.com:glg/ec2.starphleet.dev.headquarters.git'"
alias shipout="glgroup devship delete"
alias dbup="glgroup devdb create"
alias jups="source activate giftcards && source ./etc/env.sh && jupyter notebook"
alias newprod="source activate newproducts && source ./etc/env.sh && jupyter notebook"
alias dealspec="source activate dealspec && source ./etc/env && jupyter notebook"
alias myml="source activate myml && jupyter notebook"
alias gcsrc="source activate giftcards && conda env list"
alias tokenize="node ~/TOOLS/tokenize.js"
alias decodetoken="node ~/TOOLS/decodeToken.js"
alias mixevents="ag \"onclick=\"mixpanel.track\(('[A-z ]*')\" -o --heading | grep onclick | awk -F\' '{print $2}' | sort"
alias apluswhitelist='sudo glgroup sql whitelist add --subscription "GLG Azure Services" --server "glg-dev-server"'
alias cpsharedlib='rm -rf ./node_modules/@glg/cx-shared-lib && pushd ~/github/glg/cx-shared-lib/ && nvmit && npm run build && popd && nvmit && cp -rf ~/github/glg/cx-shared-lib ./node_modules/@glg/'
