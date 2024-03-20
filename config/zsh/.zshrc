autoload -U colors && colors
PS1="%B%{$fg[blue]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[blue]%}]%{$reset_color%}%b"

# History
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="$HOME/.local/share/zsh/zsh_history"


# Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

bindkey -s '^F' 'tmux-sessionizer\n'

# arrow keys
bindkey '^[[1;5D' backward-word  # Ctrl + Left arrow
bindkey '^[[1;5C' forward-word   # Ctrl + Right arrow
bindkey '^[[1;5A' beginning-of-line  # Ctrl + Up arrow
bindkey '^[[1;5B' end-of-line  # Ctrl + Down arrow


# git
gitInfo() {
    local branchName=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)

    if [ -n "$branchName" ]; then
        local stagedCount=$(git diff --staged --name-only | wc -l)
        local unstagedCount=$(git diff --name-only | wc -l)
        local untrackedCount=$(git ls-files --others --exclude-standard | wc -l)

        local statusSymbol="%{$fg[green]%}"

        if [ "$stagedCount" -gt 0 ]; then
            # There are staged changes
            statusSymbol+="%{$fg[yellow]%} +${stagedCount}"
        fi

        if [ "$unstagedCount" -gt 0 ]; then
            # There are unstaged changes
            statusSymbol+="%{$fg[yellow]%} !${unstagedCount}"
        fi

        if [ "$untrackedCount" -gt 0 ]; then
            # There are untracked files
            statusSymbol+="%{$fg[cyan]%} ?${untrackedCount}"
        fi

        echo -e " %{$fg[blue]%}(%{$fg[green]%}${branchName}${statusSymbol}%{$fg[blue]%})%{$reset_color%}"
    fi
}

export PS1="$PS1\$(gitInfo)$ "
setopt PROMPT_SUBST;

source $HOME/.config/shell/aliasrc

if [ -f "$HOME/.local/bin/zmagic" ]; then
    source "$HOME/.local/bin/zmagic"
fi

# Load syntax highlighting; should be last.

if [ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

if [ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

