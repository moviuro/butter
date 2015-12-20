# Butter
`butter` (until someone finds a better name) is/will be a `bash` utility to
manage btrfs subvolumes.

# Quickstart
## Needed folders
```sh
# mkdir -p /mnt/butter
# mount -osubvol=/ /dev/sda2 /mnt/butter
# mkdir -p /mnt/butter/$(< /etc/machine-id)
```

## Take snapshots
```sh
# butter snapshot /
# butter snaplist
MOUNTPOINT  TYPE     DATE                          UUID
/           default  Sun Dec 20 16:52:44 CET 2015  082df386-98c2-44d9-9012-07fb2b22ea20
```

## Take automated snapshots
```sh
# butter add /,/home,/var hourly
```
And then you can add to your cron or w/e:
```sh
butter snapshot ALL type hourly
```

# Questions?
- Why bash?
*It is only targeted for Linux, so bash it is.*

- Why butter?
*Because ButterFS, I guess.*

