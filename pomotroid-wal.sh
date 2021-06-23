#!/bin/bash
# Check if wal colors.sh-file exsists
if [ -f "$HOME/.cache/wal/colors.sh" ]; then
    # Load wal colors.sh-file
    . /home/$USER/.cache/wal/colors.sh
    echo \
        '{
                "name": "Wal-generated theme",
                "colors": {
                        "--color-long-round": "'${color3:-#eeeeee}'",
                        "--color-short-round": "'${color3:-#eeeeee}'",
                        "--color-focus-round": "'${color5:-#eeeeee}'",
                        "--color-background": "'${background:-#eeeeee}'",
                        "--color-background-light": "'${background:-#eeeeee}'",
                        "--color-background-lightest": "'${color5:-#eeeeee}'",
                        "--color-foreground": "'${color3:-#eeeeee}'",
                        "--color-foreground-darker": "'${color5:-#eeeeee}'",
                        "--color-foreground-darkest": "'${color14:-#eeeeee}'",
                        "--color-accent": "'${color3:-#eeeeee}'"
                        }
                }' >~/.config/pomotroid/themes/wal.json
    echo "New pomotroid theme generated..."
fi
