if status is-interactive
    # Commands to run in interactive sessions can go here
end
# Activer les couleurs dans ls
set -x CLICOLOR 1
set -x LS_COLORS 'di=35:ln=36:so=32:pi=33:ex=31:bd=1;33:cd=1;33:su=37:sg=30:tw=30:ow=34:*.c=32:*.h=33:*.py=36:*.pdf=31'

# Grep color
set -x GREP_OPTIONS '--color=auto'
starship init fish | source
function fish_postexec --on-event fish_postexec
    if test $CMD_DURATION -gt 3000
        echo (set_color brblack)"⏱ Command took "(math $CMD_DURATION / 1000)"s"(set_color normal)
    end
end
set -Ux EDITOR nvim
set -g fish_greeting 
fastfetch
# Couleurs
#set -g fish_color_command A6E22E
#set -g fish_color_param F8F8F2
#set -g fish_color_comment 75715E
#set -g fish_color_error F92672
#set -g fish_color_operator FD971F
#set -g fish_color_escape 66D9EF
#set -g fish_color_cwd A6E22E
#set -g fish_color_cwd_root F92672
#set -g fish_color_user AE81FF
#set -g fish_color_host 66D9EF
#set -g fish_color_git_dirty FD971F
#set -g fish_color_git_clean A6E22E

alias cava="cava -p ~/.config/cava/config"
