#! /bin/bash
sudo add-apt-repository ppa:pipewire-debian/pipewire-upstream -y
sudo apt update && sudo apt install pipewire pipewire-audio-client-libraries -y
sudo apt install gstreamer1.0-pipewire libpipewire-0.3-{0,dev,modules} libspa-0.2-{bluetooth,dev,jack,modules} pipewire{,-{audio-client-libraries,pulse,media-session,bin,locales,tests}} -y
systemctl --user daemon-reload
systemctl --user --now disable pulseaudio.service pulseaudio.socket
systemctl --user --now enable pipewire pipewire-pulse
