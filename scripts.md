```bash
sudo dd if=/dev/zero of=/swapfile bs=4096 count=1048576
```

```bash
sudo chmod 600 /swapfile
```

```bash
sudo mkswap /swapfile
```

```bash
sudo swapon /swapfile
```

```bash
# to /etc/fstab
/swapfile swap swap defaults 0 0
```

```bash
sudo swapon --show
```
