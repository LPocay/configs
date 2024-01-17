if status is-interactive
    # Commands to run in interactive sessions can go here
end

# set -gx TERM xterm-256color

command -qv nvim && alias vim nvim

set fish_greeting ""

if type -q eza
    alias ll "eza -l -g --icons"
    alias lla "ll -a"
end

set -g FZF_PREVIEW_FILE_CMD "bat --style=numbers --color=always --line-range :500"
set -g FZF_LEGACY_KEYBINDINGS 0
