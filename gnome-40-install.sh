# Start by creating the workspace
# Gather the repos
# Install prereqs
# Install mutter
# Install gnome-shell-40
# Reboot & Enjoy



# Setting up prereqs
#//// sudo pacman -S gnome
sudo pacman -S cmake
sudo pacman -S gn-m85
sudo pacman -S glib2-git
sudo pacman -S sassc
sudo pacman -S asciidoc



# Setting up workspace
mkdir GnomeShell40
cd GnomeShell40


# Gathering repos
git clone https://gitlab.gnome.org/GNOME/mutter
git clone https://gitlab.gnome.org/feaneron/gnome-shell/


# Installing mutter
cd  mutter
meson _build --prefix=/usr
sudo ninja install -C _build


# Installing gnome-shell-40
cd gnome-shell
git checkout gbsneto/40-stuff
meson _build --prefix=/usr
sudo ninja install -C _build