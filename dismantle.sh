#!/bin/bash
sudo systemctl stop httpd
sudo rm -rf /var/www/http/*
sudo yum remove httpd wget unzip -y
