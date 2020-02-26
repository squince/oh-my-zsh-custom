# vi: set ft=sh :
# QUINCE ZSH Theme - relies on the git-pairing and git-mob plugins

# standard prompt
PROMPT='$(_user_host)${_current_dir} $(git_pairing_branch)$(git_pairing_initials)%{$fg[$CARETCOLOR]%}%{$resetcolor%} '

# right aligned prompt info
RPROMPT=''

local _current_dir="%{$fg_bold[blue]%}%3~%{$reset_color%}"
local CARETCOLOR="white"
