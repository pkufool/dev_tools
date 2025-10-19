# dev_tools

## bash

* display Chinese
```
# Edit /etc/locale.gen to open the following lines:
en_US.UTF-8 UTF-8
zh_CN.UTF-8 UTF-8

sudo locale-gen
sudo update-locale LANG=zh_CN.UTF-8

export LANG=zh_CN.UTF-8
export LC_ALL=zh_CN.UTF-8
```

## tmux

## vim

## vpn

https://github.com/pkufool/clash-for-linux-backup

## web ssh

https://github.com/huashengdun/webssh

## frp

https://github.com/fatedier/frp

## nfs

```
sudo apt install nfs-kernel-server
```

```
# /etc/exports
/nfs2 192.168.1.0/24(rw,sync,no_subtree_check,insecure,root_squash,anonuid=1000,anongid=0)
```

```
# 使 exports 配置生效
sudo exportfs -a
# 重启 NFS 服务
sudo systemctl restart nfs-kernel-server
```

挂载
```
sudo apt install nfs-common

mount -t nfs -o nolock 192.168.1.29:/nfs0 /nfs0
```

## lvm

```
# 扫描系统中所有 LVM 物理卷（PV）、卷组（VG）和逻辑卷（LV）
sudo vgscan

# 激活所有卷组（默认情况下，LVM 可能不会自动激活外部磁盘的卷组）
sudo vgchange -a y

# 列出所有卷组及包含的逻辑卷
sudo lvdisplay

sudo mount /dev/mapper/vg0-lv0 /nfs2
```
