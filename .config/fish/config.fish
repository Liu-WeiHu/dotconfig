if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx RUSTUP_DIST_SERVER https://rsproxy.cn
    set -gx RUSTUP_UPDATE_ROOT https://rsproxy.cn/rustup
    set -gx PATH $PATH:$HOME/Documents/go/bin:$HOME/.cargo/bin
    set -gx GOPATH ~/Documents/go
    set -gx ALIYUNPAN_CONFIG_DIR ~/.config/aliyunpan/
    set -gx TERMINAL kitty

    set -U fish_greeting

    alias ff='fastfetch'
    alias svi='sudoedit'
    alias pan='aliyunpan-go'

    function y
        set tmp (mktemp -t "yazi-cwd.XXXXXX")
        yazi $argv --cwd-file="$tmp"
        if read -z cwd <"$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
            builtin cd -- "$cwd"
        end
        rm -f -- "$tmp"
    end
end
