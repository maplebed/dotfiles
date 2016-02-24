# ------------------------------------------------------------------------
# Tyler Cipriani 
# oh-my-zsh theme
# Totally ripped off Dallas theme
# ------------------------------------------------------------------------

# Grab the current date (%W) and time (%t):
#JUNKFOOD_TIME_="%{$fg_bold[red]%}➜ %{$fg_bold[white]%}( %{$fg_bold[yellow]%}%W%{$reset_color%}@%{$fg_bold[white]%}%t )( %{$reset_color%}"
JUNKFOOD_TIME_="%{$fg_bold[white]%}( %{$fg_bold[yellow]%}%W%{$reset_color%}@%{$fg_bold[white]%}%t )( %{$reset_color%}"

# Grab the current machine name 
JUNKFOOD_MACHINE_="%{$fg_bold[blue]%}%m%{$fg[white]%} ):%{$reset_color%}"

# Grab the current username 
JUNKFOOD_CURRENT_USER_="%{$fg_bold[green]%}%n%{$reset_color%}"

# Grab the current filepath, use shortcuts: ~/Desktop
# Append the current git branch, if in a git repository: ~aw@master
JUNKFOOD_LOCA_="%{$fg[cyan]%}%~\$(git_prompt_info) \$(git_prompt_status)%{$reset_color%}"

# For the git prompt, use a white @ and blue text for the branch name
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}@%{$fg_bold[white]%}"

# Close it all off by resetting the color and styles.
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

# Do nothing if the branch is clean (no changes).
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✔"

# Add 3 cyan ✗s if this branch is diiirrrty! Dirty branch!
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}✗"

# stolen from the muse theme
ZSH_THEME_GIT_PROMPT_ADDED="%{$FG[082]%}✚%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$FG[166]%}✹%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$FG[160]%}✖%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$FG[220]%}➜%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$FG[082]%}═%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$FG[190]%}✭%{$reset_color%}"

# output the return value of the last command
JUNKFOOD_RETVAL_LEFT='%(?,%F{green}:%),%{$fg_bold[red]%}:()%f '
JUNKFOOD_RETVAL_RIGHT='%(?,,%F{yellow}%?)'

JUNKFOOD_LEADER='%{$fg[white]%}➜ %{$reset_color%}'

# Put it all together!
RPROMPT="$JUNKFOOD_RETVAL_RIGHT"
PROMPT="$JUNKFOOD_RETVAL_LEFT$JUNKFOOD_TIME_$JUNKFOOD_CURRENT_USER_@$JUNKFOOD_MACHINE_$JUNKFOOD_LOCA_
$JUNKFOOD_LEADER "
