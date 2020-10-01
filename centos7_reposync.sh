#!/bin/bash
rsync  -avSH --delete rsync://ftp.linux.org.tr/centos/7/ /opt/7
wget -P /opt/ wget https://www.centos.org/keys/RPM-GPG-KEY-CentOS-Official
