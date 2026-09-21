# copy.sh
Copy to Clipboard CLI utility (currently X11 only)

# Installation
## Dependencies 
For all: `yt-dlp, aria2c`
For X11: `xclip`

Wayland support: Planned
Wget/cURL support (aria2c alternative): Planned

First clone the repo
```sh
git clone https://github.com/cerialDX/copy.sh.git
cd copy.sh
```
It's recommended to install this to ~/.local as an X-server is only available as the user (launching an X-server as root is a big no no so don't do that)
Since this isn't a binary file it makes most sense to put it in a separate folder like ~/.local/scripts or ~/.local/bin/scripts 
```sh
mkdir -p ~/.local/scripts
```
Copy both scripts to the install location
```sh
cp copy ~/.local/scripts/copy
cp .downloaded.sh ~/.local/scripts/.downloaded.sh
```
Note: `.downloaded.sh` and `copy` should both be in the same folder
Finally, make these available available

## Bash
Put this line in `~/.bashrc`
```bash
PATH="/home/$USER/.local/scripts:$PATH"
```

## Zsh
Put this line in `~/.zshrc`
```bash
PATH="/home/$USER/.local/scripts:$PATH"
```

## Fish
Put this line in `~/.config/fish/config.fish`
```sh
fish_add_path "/home/$USER/.local/scripts"
```

# Usage
Run `copy -h` to print help commands
