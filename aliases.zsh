# My Custom Aliases for ZSH
alias getmyip="curl http://ipecho.net/plain; echo"
alias myip="echo 'curl http://ipecho.net/plain; echo'"
alias zedit="vi ~/.zshrc"
alias upzed="source ~/.zshrc"
alias usage="du -h -d1 | sort -rh"
alias port="lsof -i "
# alias clear="clear & printf '\e[2J\e[3J\e[H'"

# ToDo.sh
alias td='/opt/homebrew/bin/todo.sh'
alias tdp='/opt/homebrew/bin/todo.sh -d ~/.ptodo.cfg'
alias tdm='/opt/homebrew/bin/todo.sh -d ~/.metodo.cfg'
alias tds='/opt/homebrew/bin/todo.sh -d ~/.ec2todo.cfg'
alias tdl='clear; /opt/homebrew/bin/todo.sh ls'
alias tdpl='clear; /opt/homebrew/bin/todo.sh -d ~/.ptodo.cfg ls'
alias tdml='clear; /opt/homebrew/bin/todo.sh -d ~/.metodo.cfg ls'
alias tdsl='clear; /opt/homebrew/bin/todo.sh -d ~/.ec2todo.cfg ls'
alias todo='/opt/homebrew/bin/todo.sh'

# Environment Stuff
alias ll='ls -lhaFG'
alias llc='clear && ls -lhaFG'
alias vi='/opt/homebrew/bin/vim'
alias vim='/opt/homebrew/bin/vim'
alias ports="netstat -a | grep LISTEN"
alias listen="lsof -n -i4TCP:"
alias xcodeaccept="sudo xcodebuild -license accept"
alias bkuphome="cd ~/ && ./.squince_backup_script.sh"
alias icloud="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
alias shebang='echo "#!/usr/bin/env bash"'
alias killstreamliner="ps ax | grep 9090 | grep -v grep | cut -f 2 -d ' ' | xargs kill -9 ; rm -rf /tmp/ec2.starphleet.headquarters"
# alias killvpn="ps ax | grep -v grep | grep -i vpn | cut -f 1 -d ' ' | xargs kill -9"


# git stuffs
alias gitching="git whatchanged | grep -A 4 commit | less"
alias gitbranches="git for-each-ref --format='%(align:35,left) %(committerdate) %(end) %(align:25,left) %(authorname) %(end) %(align:80,left) %(refname) %(end)' 'refs/remotes' | sort -k5n -k2M -k3n -k4n"
# alias gitgraph="git log --graph --decorate --oneline"
alias gitgraph="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)%aD%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)'"
alias gitupstream="git log --oneline --no-merges"
alias gl="git log --graph --date=relative --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset%n%w(0,4,4)%-b%n%n%-N'"
alias newauthor="git add-coauthor"
alias appbranches="ag autodeploy | grep -v ':#\s*autodeploy' | grep -v master | grep -v canary | grep -v deploy2 | grep -v modifiedForCXHomeStaging | grep -v main | grep -v clientStaging | grep -v clientDemo | grep -v faker-proxy | grep -v epiquery-templates"
alias epibranches="ag BRANCH="
alias hqbranches="clear; appbranches; epibranches"
alias prune="git remote prune origin"

# Work Stuff
# alias vpn="nvm use v6.2.1 && sudo vpn-client" # Ben VPN
# alias vpn="sudo openconnect mrx.glgroup.com"
# alias vpn="sudo vpn-client"
alias vpn="sudo -E glgroup wireguard"
alias devship="ssh admiral@squince.dev.glgresearch.com"
alias demoship="ssh admiral@client-demo.dev.glgresearch.com"
alias stagingship="ssh admiral@client.dev.glgresearch.com"
alias shipup="glgroup devship create --branch squince --headquarters 'git@github.com:glg/ec2.starphleet.dev.headquarters.git'"
alias demoup="glgroup devship create --branch 'client-demo' --headquarters 'git@github.com:glg/ec2.starphleet.dev.headquarters.git'"
alias shipout="glgroup devship delete"
alias dbup="glgroup devdb create"
alias gcsrc="source activate giftcards && conda env list"
alias tokenize="node ~/TOOLS/tokenize.js"
alias decodetoken="node ~/TOOLS/decodeToken.js"
alias mixevents="ag \"onclick=\"mixpanel.track\(('[A-z ]*')\" -o --heading | grep onclick | awk -F\' '{print $2}' | sort"
alias apluswhitelist='sudo glgroup sql whitelist add --subscription "GLG Azure Services" --server "glg-dev-server"'
alias cpsharedlib='rm -rf ./node_modules/@glg/cx-shared-lib && pushd ~/github/glg/cx-shared-lib/ && nvmit && npm run build && popd && nvmit && cp -rf ~/github/glg/cx-shared-lib ./node_modules/@glg/'
alias datahubaccess='glgroup sql login tempAccess --server datahub'
alias sqldevaccess='glgroup sql login tempAccess --server sqldev'

# Docker Stuff
alias buildlistings="./bin/build-docker.sh && docker build -f Dockerfile.dev -t cx-app-projects-listing --build-arg "GITHUB_SSH_KEY=$GITHUB_SSH_KEY" ."
alias attachlistings="docker run -it cx-app-projects-listing sh"
