export SECRETS_NAMESPACE='squince'
export SECRETS_SHARED_NAMESPACE='developmentglobal'
export SECRETS_CREDENTIAL_SOURCE='file'

export SMTP_PORT=1025
export SMTP_HOST=ship.glgresearch.com
export SMTP_SERVER=127.0.0.1
export OVERRIDE_EMAIL_RECIPIENT=squince@glgroup.com
export LOGIN_EMAIL_RECIPIENT=squince@glgroup.com

export SQLDEV_USER='squince'
export SQLDEV_PWD='AlexCate0921!'

# NPM GIT SECURITY CRAP
# *********************
export GIT_SSH_COMMAND='ssh -i ~/.ssh/id_rsa'

# used for doing npm builds that require private github repos inside of a docker container
export DOCKER_GITHUB_SSH_PATH=~/.ssh/dockergithub
export GITHUB_SSH_KEY=$(cat $DOCKER_GITHUB_SSH_PATH | base64)
