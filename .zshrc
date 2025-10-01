# ===============================
# Environment
# ===============================
export PATH="$HOME/.local/bin:$PATH"

# 256色サポート
export TERM="xterm-256color"

# ===============================
# History
# ===============================
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks

# ===============================
# Completion
# ===============================
# Docker CLI completions
fpath=(~/.docker/completions $fpath)

autoload -Uz compinit
compinit

# 補完候補をメニューから選択する
zstyle ':completion:*' menu select
# 補完候補に色を付ける
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
# 大文字小文字を区別しない補完
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# ===============================
# Prompt (Modern)
# ===============================
# カラー設定を有効化
autoload -Uz colors
colors

# Git ブランチ情報を表示
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%F{cyan}[%b]%f'
zstyle ':vcs_info:*' enable git

# プロンプトのカスタマイズ
PROMPT='%F{green}%n@%m%f:%F{blue}%~%f ${vcs_info_msg_0_}
%F{magenta}❯%f '

# ===============================
# Aliases
# ===============================
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'
alias tmux='tmux -2'  # 256色モード

# Git aliases
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'

# ===============================
# Plugins (Optional - install if needed)
# ===============================
# Syntax highlighting (install: brew install zsh-syntax-highlighting)
if [[ -f /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
  source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# Auto suggestions (install: brew install zsh-autosuggestions)
if [[ -f /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
  source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# ===============================
# Tmux auto-start
# ===============================
if [ -z "$TMUX" ]; then
  tmux attach -t default || tmux new -s default
fi
