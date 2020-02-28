# manjaro-i3

## Getting started

For max yolo just run the `setup.sh` script. Otherwise check and edit the `xrandr-settings.desktop` file and make sure it works for your setup.  
You can also curate the vimrc as it is somewhat extensive, the same goes for the gitinore tho not quite as extensive.  
Add more aliases to the `.bash_aliases` file if you want, if not its always available at `~/.bash_aliases` after running the script.

Bluetooth is a bit finiky and is still beeing improoved.

## Scripts

 - `setup-applications.sh`
 > Updated pacman and installs basic applications like chromium, vscode and node.
 - `setup-system.sh`
 > Configures xrandr(edit `xrandr-settings.desktop`) and the system clock
 - `setup-dot-files.sh`
 > Adds some useful config to your bashrc including aliases. Also adds vimrc and global gitignore
 - `setup-bluetooth.sh`
 > Installs and atempts to configure bluetooth service.

