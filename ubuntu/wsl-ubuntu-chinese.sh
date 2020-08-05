#!/bin/bash
# wsl - Ubuntu中文环境

sudo apt-get install language-pack-zh-hans -y

(cat <<CONF
LANG="zh_CN.UTF-8"
LANGUAGE="zh_CN:zh:en_US:en"
CONF
) >> /etc/environment

(cat <<CONF
en_US.UTF-8 UTF-8
zh_CN.UTF-8 UTF-8
zh_CN.GBK GBK
zh_CN GB2312
CONF
) >> /var/lib/locales/supported.d/local

sudo locale-gen

sudo apt install language-pack-zh-hans -y
sudo apt install manpages-zh -y


(cat <<CONF
export DISPLAY=\$(awk '/nameserver / {print \$2; exit}' /etc/resolv.conf 2>/dev/null):0
export LIBGL_ALWAYS_INDIRECT=1
CONF
) >> ~/.bashrc