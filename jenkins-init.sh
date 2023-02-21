#!/bin/bash

systemctl enable docker
systemctl start docker

cat <<EOF > /root/hello.txt
Hello World!
EOF
