# vi: set ft=sh :
# git pairing prompt support
# - based on git-prompt.sh @ https://github.com/git/git/tree/master/contrib/completion

function git_pairing_initials {
  local initials=$(git mob-print --initials)
  local c_yellow=$(tput setaf 3);
  if [[ -n "${initials}" ]]; then
    echo "${c_yellow}[${initials}]"
  fi
}

function git_pairing_branch () {
  local c_red=$(tput setaf 1);
  local c_green=$(tput setaf 2);

  # COMPONENTS OF PROMPT
  local ahead_r=""          # ahead of remote
  local behind_r=""         # behind remote
  local b_prompt=""         # branch portion
  local u_prompt=""         # untracked files
  local push_count=0
  local pull_count=0
  local pull_arrow="▼ "
  local push_arrow="▲ "
  local untracked="✶"

  local s="$(git status --ignore-submodules --porcelain 2>/dev/null)"; # s = git status
  local tb="$(git symbolic-ref HEAD 2>/dev/null)";
  local b="${tb##refs/heads/}"; # b = branch
  local r="$(git remote 2>/dev/null)/$b"; # r = remote
  local push_pull="$(git rev-list --left-right $r...HEAD 2>/dev/null)"; # push_pull = list of revisions

  if [[ "$s" == *\?\?* ]]; then
    u_prompt=" ${untracked}"
  fi

  if [ -n "$push_pull" ]; then
    local commit
    for commit in $push_pull
    do
      case "$commit" in
      "<"*) ((pull_count++)) ;;
      ">"*) ((push_count++)) ;;
      esac
    done
  fi

  if [ "$push_count" -gt 0  ]; then
    ahead_r=" ${push_arrow}${push_count}"
  fi

  if [ "$pull_count" -gt 0  ]; then
    behind_r=" ${pull_arrow}${pull_count}"
  fi

  if [ -n "$b" ]; then
    b_prompt="[${b}${ahead_r}${behind_r}${u_prompt}]"
  fi
  if [ -n "$s" ]; then
     echo "${c_red}${b_prompt}"
  else
     echo "${c_green}${b_prompt}"
  fi
}
