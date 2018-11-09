sudo -i
add-apt-repository universe
apt-get update
apt-get install -y apparmor-utils apt-transport-https avahi-daemon ca-certificates curl dbus jq network-manager socat software-properties-common
mkdir -p /etc/docker
echo '{"dns": ["8.8.8.8", "8.8.4.4"]}' > /etc/docker/daemon.json
curl -sSL https://get.docker.com | sh
curl -sL "https://raw.githubusercontent.com/home-assistant/hassio-build/master/install/hassio_install" | bash -s
