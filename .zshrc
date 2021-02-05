# エディタを Neovim にできているかはわからん
export EDITOR='nvim'

# キーバインドを vim に
bindkey -v
bindkey -M viins 'jk' vi-cmd-mode

PROMPT='%~ %(!.#.%%) '
