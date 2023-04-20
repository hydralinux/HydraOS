#!/usr/bin/env bash
cd /tmp

### Instally 17g and other stuff
apt install wget
wget https://github.com/quemos/deb/releases/download/deb/17g-installer_1.0_all.deb
apt install ./*.deb -yq --allow-downgrades
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
##nano usr/share/applications/gdebi.desktop ##exec--> sh -c "gdebi-gtk %f"

#### Disable recommends by default
cat > /etc/apt/apt.conf.d/01norecommend << EOF
APT::Install-Recommends "0";
APT::Install-Suggests "0";
EOF
