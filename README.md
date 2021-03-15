# Autoricer: A script that installs my setup

<p align="middle">
  <img src=images/arco_unix.gif height="90%" width="90%">

</p>

#### Please read the instructions here carefully before installling anything

## What is this?

This is a side-project I made to make my life easier when I want to migrate to a new machine or clean format my own machine and have my customized setup in place without much effort. I made one simple shell script that does it all. This script is aimed to rice bspwm and not GNOME. I keep GNOME as a fallback DE and for some it's utilities.

Some features and specs of this setup can be found [here](https://github.com/salil-sudo/arcoricer/blob/main/FEATURES.md)

An minimal version of arcoricer based on **Arch Linux** can be found [here](https://github.com/salil-sudo/archricer)
#### Warning: Use this arcoricer at your own risk. Best thing to do is install it on a freshly erased drive. Dont forget to backup your data before you do anything (Unless you know what you are doing :wink:)

## Pre-Installation

#### If you are testing this in a virtual machine, please refer to [known issues](#known-issues) section.

I have tested it on a [ArcoLinuxD](https://arcolinuxd.com/). It should work on other Arch based distros but you might have to add some extra stuff (or remove some unnecessary stuff).  For a fresh ArcoLinuxD installation these options should be selected as a minimum requirement. Some of these options might be unnecessary or can be chosen differently (needs testing)


- Kernel
	  ✔ Linux kernel without any nvidia (Should work with nvidia kernel as well, needs testing)
- Services
	✔ Bluetooth Support
	✔ Laptop Support
	✔ Network Discovery
	✔ Sound
- Login
	✔ Login manager: Gdm
- Desktop
	✔ Desktop: bspwm
	✔ Desktop: Gnome
- Keyboard
	✔ English

After ArcoLinux is installed, you will logged in the system via a TTY since Gdm is not enabled. You will have to manually enable Gdm service. To do so,

    mirror
    update
    systemctl enable gdm.service
    reboot

## Installation

Installation is straightforward:

    sudo pacman -Syu
    git clone https://github.com/salil-sudo/arcoricer
    cd arcoricer
    bash ./arcoricer

## Post-installation

- After logging into bspwm, you can press <kbd>Alt</kbd>+<kbd>Shift</kbd> +<kbd>h</kbd>, which will pull up a helper manual to get you started with basic keybindings.
- You will probably have to change the function keys to suit your keyboard layout. The function keys control sound, keyboard backlight and brightness. You can make these changes in `~/.config/sxhkd/sxhkdrc` .
- By default some sample wallpapers have been added in `~/Pictures/wallpapers/`. It is highly recommended to add more wallpapers here to make the most of the aesthetics. Just press <kbd>Alt</kbd>+<kbd>Shift</kbd> +<kbd>r</kbd> to refresh the wallpaper and enjoy :smiley:.
- Open neovim (nvim) and do a `:PlugUpdate`

## Known issues

If you are using a virtual machine or a machine with a really old hardware or for some other reason, picom's [dual kawase blur](https://github.com/tryone144/picom/tree/feature/dual_kawase ) wont work. In that case just remove [Tryone's](https://github.com/tryone144/picom) picom fork (if it is successfully installed at all) and install vanilla picom.

    yay -Rs picom-tryone-git
    sudo pacman -S picom

After that just remove the old config file `~/.config/picom.conf` and the in `~/.config/bspwm/bspwmrc` change the line `picom --experimental-backends &
` to `picom &
`

## Acknowledgements & Contributions

As we all do (at some point), I have taken some code snippets from internet formus and other places on the internet. I have mentioned the places I got my scripts and snippets from in [THANKS.md](https://github.com/salil-sudo/arcoricer/blob/main/THANKS.md). I have modified and adopted these to my own taste and convinience. For some reason, if you see your script or part of it and feel that I havent credited you, just let me know, I will do so. Any improvements, suggestions, feature requests and debloatings are of course welcome.

## Contact
<salil@salil.cool>
