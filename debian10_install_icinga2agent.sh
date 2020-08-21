apt update
apt upgrade
apt install -y apt-transport-https wget gnupg
wget -O - https://packages.icinga.com/icinga.key | apt-key add
echo "deb https://packages.icinga.com/debian icinga-buster main" > /etc/apt/sources.list.d/icinga.list
echo "deb-src https://packages.icinga.com/debian icinga-buster main" >> /etc/apt/sources.list.d/icinga.list
apt update
apt install icinga2