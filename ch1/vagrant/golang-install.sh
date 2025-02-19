#!/bin/bash -ex

curl -L -o go1.24.0.linux-amd64.tar.gz https://go.dev/dl/go1.24.0.linux-amd64.tar.gz

echo "dea9ca38a0b852a74e81c26134671af7c0fbe65d81b0dc1c5bfe22cf7d4c8858 go1.24.0.linux-amd64.tar.gz" | sha256sum -c

rm -rf /usr/local/go && tar -C /usr/local -xzf go1.24.0.linux-amd64.tar.gz

export PATH=$PATH:/usr/local/go/bin

go version
