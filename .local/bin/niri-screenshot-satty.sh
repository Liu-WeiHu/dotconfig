#!/usr/bin/env bash

dbus-monitor --session "interface='org.freedesktop.Notifications',member='Notify'" |
    while read -r line; do
        if [[ "$line" =~ string\ \"(file:///[^\"]+\.png)\" ]]; then
            path="${BASH_REMATCH[1]}"
            # URL 解码（处理空格等特殊字符）
            path=$(python3 -c "import urllib.parse, sys; print(urllib.parse.unquote(sys.argv[1][7:]))" "$path")
            # 过滤只处理 niri 截图目录
            [[ "$path" == */Pictures/Screenshot/* ]] && satty -f "$path" &
        fi
    done
