alias l "ll";
alias .. "cd ..";
alias vim "nvim";
alias code "code .";
alias p3 "python3.9";
alias g "git";
alias gs "git status";
alias ga "git add";
alias gc "git commit -m";

function fish_greeting
    echo Now its (set_color yellow; date +%T; set_color normal) and lets keep pushing!
end

fish_vi_key_bindings

starship init fish | source
