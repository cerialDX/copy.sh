#!/usr/bin/bash
printf '%s\r\n' "file://$(realpath "$3")" | xclip -i -selection clipboard -t text/uri-list
echo "$3"
