# Autoricer: A script that installs my setup

<p align="middle">
  <img src=images/arco_unix.gif height="90%" width="90%">

</p>

#### Please read the instructions here carefully before installling anything

## What is this?

This is a side-project I made to make my life easier when I want to migrate to a new machine or clean format my own machine and have my customized setup in place without much effort. I made one simple shell script that does it all. Some features of my setup are mentioned in my personal config [repo](https://github.com/salil-sudo/arcorice). Any feature update will be mentioned [there](https://github.com/salil-sudo/arcorice) and not here. Although this repository and my personal config [repo](https://github.com/salil-sudo/arcorice) are almost same. I prefer to keep them separate. This script is aimed to rice bspwm and not GNOME. I keep GNOME as a fallback DE and for some it's utilities.

#### Warning: Use this autoricer at your own risk. Best thing to do is install it on a freshly erased drive. Dont forget to backup your data before you do anything (Unless you know what you are doing :wink:)

## Pre-Installation

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
    git clone https://github.com/salil-sudo/autoricer
    cd autoricer
    bash ./autoricer
There will be some package conflicts during installation, just choose 'yes' to resolve them. For example, I use [rofi-dmenu](https://aur.archlinux.org/packages/rofi-dmenu/) which would conflict with dmenu and will ask to remove it. Make sure to reboot your system after installation.

## Post-installation

- After logging into bspwm, you can press <kbd>Alt</kbd>+<kbd>Shift</kbd> +<kbd>h</kbd>, which will pull up a helper manual to get you started with basic keybindings.
- You will probably have to change the function keys to suit your keyboard layout. The function keys control sound, keyboard backlight and brightness. You can make these changes in `~/.config/sxhkd/sxhkdrc` .
- By default  a [sample wallpaper](https://unsplash.com/photos/zepnJQycr4U) has been added in `~/Pictures/wallpapers/`. It is highly recommended to add more wallpapers here to make the most of the aesthetics. Just press <kbd>Alt</kbd>+<kbd>Shift</kbd> +<kbd>r</kbd> to refresh the wallpaper and enjoy :smiley:.
- Open neovim (nvim) and do a `:PlugUpdate`

## Known issues

If you are using a virtual machine or a machine with a really old hardware or for some other reason, picom's [dual kawase blur](https://github.com/tryone144/picom/tree/feature/dual_kawase ) wont work. In that case just remove [Tryone's](https://github.com/tryone144/picom) picom fork and install vanilla picom.

    yay -Rs picom-tryone-git
    sudo pacman -S picom

After that just remove the old config file `~/.config/picom.conf` and the in `~/.config/bspwm/bspwmrc` change the line `picom --experimental-backends &
` to `picom &
`

## Acknowledgements & Contributions

As we all do (at some point), I have taken some code snippets from internet formus and other places on the internet. I have mentioned the places I got my scripts and snippets from in [THANKS.md](https://github.com/salil-sudo/autoricer/blob/main/THANKS.md). I have modified and adopted these to my own taste and convinience. For some reason, if you see your script or part of it and feel that I havent credited you, just let me know, I will do so. Any improvements, suggestions, feature requests and debloatings are of course welcome.  

## Contact
<salil@salil.cool>
