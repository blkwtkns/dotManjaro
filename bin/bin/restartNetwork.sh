#!/bin/sh
# Restarts NetworkManager and starts brcmfmac

sudo systemctl restart NetworkManager
sudo modprobe brcmfmac
