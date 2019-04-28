sudo -i
apt-get update
apt-get install -y apparmor-utils apt-transport-https avahi-daemon ca-certificates curl dbus jq network-manager socat software-properties-common
mkdir -p /etc/docker
echo '{"dns": ["8.8.8.8", "8.8.4.4"]}' > /etc/docker/daemon.json
curl -sSL https://get.docker.com | sh
curl -sL "https://raw.githubusercontent.com/home-assistant/hassio-installer/master/hassio_install.sh" | bash -s
