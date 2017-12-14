#/usr/local/env bash

cd "$(dirname "$0")"

apt install -y python3 python3-requests python3-RPi.GPIO

install pi-blinker /usr/local/bin/
install pi-blinker.service /etc/systemd/system/

systemctl daemon-reload
systemctl enable pi-blinker.service
systemctl start pi-blinker.service
