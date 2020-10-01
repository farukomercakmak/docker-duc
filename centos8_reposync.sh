#!/bin/bash
rsync  -avSH --delete rsync://ftp.linux.org.tr/centos/8/ /opt/8
wget -P /opt/ wget https://www.centos.org/keys/RPM-GPG-KEY-CentOS-Official
