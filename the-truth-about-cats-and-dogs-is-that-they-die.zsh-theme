local blue_op="%{$fg[yellow]%}[%{$reset_color%}"
local blue_cp="%{$fg[yellow]%}]%{$reset_color%}"
local yellow_op="%{$fg[yellow]%}> %{$reset_color%}"
local path_p="%F{green}%8c"
local smiley="%(?,%{$fg[green]%}:%)%{$reset_color%},%{$fg[red]%}:(%{$reset_color%})"

if [[ -n "$SSH_CLIENT"  ||  -n "$SSH2_CLIENT" ]]; then
  PR_HOST='%F{red}%M%f' # SSH
else
  PR_HOST='%F{green}%M%f' # no SSH
fi

local user_host="[%F{green}%n%f%F{cyan}@${PR_HOST}]"
local current_dir="%B%F{red}%~%f%b"

PROMPT="╭─${user_host} ${current_dir} %{$reset_color%}
╰─➤ ${smiley} %F{blue}[%f "
RPROMPT='$(git_prompt_info) %F{blue}] %F{green}%D{%L:%M} %F{yellow}%D{%p}%f'

ZSH_THEME_GIT_PROMPT_PREFIX="%F{yellow}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f"
ZSH_THEME_GIT_PROMPT_DIRTY=" %F{red}*%f"
ZSH_THEME_GIT_PROMPT_CLEAN=""
