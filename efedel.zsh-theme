# efedel theme depends on git-prompt plugin
PROMPT='%{$fg[$NCOLOR]%}%B%n%b%{$reset_color%}:%{$fg[blue]%}%B%~%b%{$reset_color%} %{$fg[$NCOLOR]%}%D{[%X]} $(git_super_status)
%(!.#.$) '
RPROMPT=''
# RPROMPT='[%*]'

# overriding git theming git-prompt plugin
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[yellow]%}"
