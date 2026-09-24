# copy.sh
Copy to Clipboard CLI utility for Linux

# Installation
## Dependencies 
Base: `yt-dlp`, `aria2c`

Optional: `wget`, `curl`

For X11: `xclip`

For Wayland: `wl-clipboard`

Wayland support: Partially working

First clone the repo
```sh
git clone https://github.com/cerialDX/copy.sh.git
cd copy.sh
```
It's recommended to install this to `~/.local` as an X-server or a Wayland compositor instance is only available as the user (launching an X-server as root is a big no no so don't do that).

Since this isn't a binary file it makes most sense to put it in a separate folder like `~/.local/scripts` or `~/.local/bin/scripts` 
```sh
mkdir -p ~/.local/scripts
```
Copy both scripts to the install location
```sh
cp copy ~/.local/scripts/copy
cp .downloaded.sh ~/.local/scripts/.downloaded.sh
```
Note: `.downloaded.sh` and `copy` should both be in the same folder.

Finally, make these globally available

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
Run `copy h` to print help commands

# Configuration
The following parameters can be configured in ~/.config/copy.sh:

	Display Server backend (SERVER): [x11] or wayland

	Downloader backend for `copy w` (DOWNLOADER): wget or curl or [aria2c]
	
	yt-dlp download flags for `copy ya` and `copy yv` (YAFLAGS and YVFLAGS): string of flags for yt-dlp (see `yt-dlp -h`), default: `--embed-thumbnail` for both

# Wayland support
Wayland support from my testing atleast is kind of hit or miss.
All the text options work but the file options (f, w, ya and yv) dont work reliably (which in hindsight is the most major use case).
I still recommend that you test the script on wayland on your own. 
