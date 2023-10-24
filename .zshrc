export PATH=/usr/local/bin:"$PATH"
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:$HOME/.local/bin
export PATH="$HOME/.fzf/bin:$PATH"
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/appimages/
export ZSH="$HOME/.oh-my-zsh"
export VIMRC="$HOME/.config/nvim/init.vim"
export EDITOR=nvim
export ZSH_THEME=""
export BAT_THEME="gruvbox-dark"
plugins=(git zsh-fzf-history-search zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias vim=nvim
alias fzf="fzf --height 40%"
export FZF_DEFAULT_COMMAND='fd --type f --ignore-file ~/.gitignore'
alias ipy="ipython3"
alias ls="exa"
eval "$(zoxide init zsh)"
fpath+=($HOME/.zsh/pure)

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
export PATH="$HOME/.poetry/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
autoload -U promptinit; promptinit
prompt pure

# pnpm
export PNPM_HOME="/home/nico/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform
