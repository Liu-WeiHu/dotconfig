#!/usr/bin/env bash

SCREENSHOT_POST_COMMAND+=(
)

SCREENSHOT_PRE_COMMAND+=(
)

pre_cmd() {
    for cmd in "${SCREENSHOT_PRE_COMMAND[@]}"; do
        eval "$cmd"
    done
    trap 'post_cmd' EXIT
}

post_cmd() {
    for cmd in "${SCREENSHOT_POST_COMMAND[@]}"; do
        eval "$cmd"
    done
}

if [ -z "$XDG_PICTURES_DIR" ]; then
    XDG_PICTURES_DIR="$HOME/Pictures"
fi

confDir="${confDir:-$XDG_CONFIG_HOME}"
save_dir="${2:-$XDG_PICTURES_DIR/Screenshots}"
save_file=$(date +'%y%m%d_%Hh%Mm%Ss_screenshot.png')
temp_screenshot="/tmp/screenshot.png"

# The comment tool is not shown by default, use Ctrl + T to show the comment tool.
annotation_args=("-o" "${save_dir}/${save_file}" "-df" "${temp_screenshot}")

annotation_args+=("${SCREENSHOT_ANNOTATION_ARGS[@]}")
evaluated_annotation_args=$(eval echo "${annotation_args[@]}")
mkdir -p "$save_dir"

function print_error {
    cat <<"EOF"
    ./screenshot.sh <action>
    ...valid actions are...
        p  : print all screens
        s  : snip current screen
        sf : snip current screen (frozen)
        m  : print focused monitor
EOF
}

pre_cmd

case $1 in
p) # print screen
    # timeout 0.2 slurp # capture animation lol
    # shellcheck disable=SC2086
    grimblast copysave screen $temp_screenshot && satty ${evaluated_annotation_args}
    ;;
a) # print all outputs
    # timeout 0.2 slurp # capture animation lol
    # shellcheck disable=SC2086
    grimblast copysave active $temp_screenshot && satty ${evaluated_annotation_args}
    ;;
s) # drag to manually snip an area / click on a window to print it
    # shellcheck disable=SC2086
    grimblast copysave area $temp_screenshot && satty ${evaluated_annotation_args} ;;
sf) # frozen screen, drag to manually snip an area / click on a window to print it
    # shellcheck disable=SC2086
    grimblast --freeze copysave area $temp_screenshot && satty ${evaluated_annotation_args} ;;
m)
    # timeout 0.2 slurp
    # shellcheck disable=SC2086
    grimblast copysave output $temp_screenshot && satty ${evaluated_annotation_args}
    ;;
*) # invalid option
    print_error ;;
esac

[ -f "$temp_screenshot" ] && rm "$temp_screenshot"
