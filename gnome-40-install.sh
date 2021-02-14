# Start by creating the workspace
# Gather the repos
# Install prereqs
# Install mutter
# Install gnome-shell-40
# Reboot & Enjoy



# Setting up prereqs
# installing the complete gnome lib is the best way to satisfy few dependencies
sudo pacman -S gnome # You can always unisntall late

sudo pacman -S cmake
sudo pacman -S gn-m85
sudo pacman -S glib2-git # Looks like there is some problem in the prepare(), wait for it to get fixed
sudo pacman -S sassc
sudo pacman -S asciidoc
sudo pacman -S yay


yay -S gnome-shell-40alfa
yay -S mutter-40alfa

# It should be done by now




# this is for updating to the latest version
# Setting up workspace
mkdir GnomeShell40
cd GnomeShell40


# Gathering repos
git clone https://gitlab.gnome.org/GNOME/mutter &
git clone https://gitlab.gnome.org/feaneron/gnome-shell/ &


# Installing mutter
cd  mutter
meson _build --prefix=/usr
sudo ninja install -C _build

cd..

# Installing gnome-shell-40
cd gnome-shell
git checkout gbsneto/40-stuff
meson _build --prefix=/usr
sudo ninja install -C _build
