default: add-repositories install-packages link-config show-notes

add-repositories:
	cat repositories.txt | sudo tee -a /etc/pacman.conf

install-packages:
	sudo pacman -Sy yaourt
	yaourt -Syy
	yaourt -S --needed --noconfirm `cat packages.txt`

# enable-services:
# 	sudo systemctl enable lightdm NetworkManager tlp tlp-sleep
# 	sudo systemctl disable systemd-rfkill
# 	sudo tlp start

link-config:
	rm -rf $$HOME/.i3
	stow -t $$HOME -R `ls -d */`

show-notes:
	cat ./post-install.txt
