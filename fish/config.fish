alias l "ll";
alias .. "cd ..";
alias vim "nvim";
alias code "code .";
alias p3 "python3.9";
alias p10 "python3.10";
alias g "git";
alias gs "git status";
alias ga "git add";
alias gc "git commit -m";
alias ide "tmux new-session \; split-window -v \; resize-pane -D 14\; select-pane -t 0\; split-window -h\; attach"

function fish_greeting
    echo Now its (set_color yellow; date +%T; set_color normal) and lets keep pushing!
end

fish_vi_key_bindings

starship init fish | source
