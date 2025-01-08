# robbyrussell.zsh-theme

# Customized Prompt with Git Status
PROMPT="%(?:%{$fg_bold[green]%}➜% :%{$fg_bold[red]%}➜% ) %{$fg[cyan]%}%c%{$reset_color%} "
PROMPT+='$(git_prompt_info) '

# Git Prompt Customization
ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✔"

# Function to Display Git Branch and Status
git_prompt_info() {
  if git rev-parse --is-inside-work-tree &>/dev/null; then
    local branch
    branch=$(git symbolic-ref --short HEAD 2>/dev/null) || branch=$(git describe --tags --exact-match 2>/dev/null) || branch="detached"

    if git diff --quiet && git diff --cached --quiet; then
      # Clean repository: Green color with ✔ icon, including closing parenthesis
      echo "%{$fg_bold[green]%}($branch ${ZSH_THEME_GIT_PROMPT_CLEAN})%{$reset_color%}"
    else
      # Dirty repository: Red color with ✗ icon, including closing parenthesis
      echo "%{$fg_bold[red]%}($branch ${ZSH_THEME_GIT_PROMPT_DIRTY})%{$reset_color%}"
    fi
  fi
}

# The rest of the original robbyrussell.zsh-theme content follows...
# Ensure not to remove or alter other parts unless intended

# Example of the default robbyrussell theme settings
# You can keep or adjust these as needed
# You may find additional settings and functions below this point in the original theme
