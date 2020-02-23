# initializes git mob within a repo

function mobit() {
  SCRIPT_DIR=$(dirname "${(%):-%x}")
  CURR_DIR=$(pwd)
  git mob --installTemplate
  if [ -f $SCRIPT_DIR/prepare-commit-msg ]; then
    cp $SCRIPT_DIR/prepare-commit-msg $CURR_DIR/.git/hooks
  fi
}
