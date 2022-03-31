#!/bin/sh



sudo mount --bind ../tendermint ./tendermint
sudo mount --bind ../cosmos-sdk ./cosmos-sdk

make build-linux-with-shared-library


sudo umount ./tendermint
sudo umount ./cosmos-sdk
