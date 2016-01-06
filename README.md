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

# Installation
You can run a "portable" version pretty easily:
```sh
git clone git@github.com:moviuro/butter.git
cd butter
./butter help
```

If you run Archlinux, there is a PKGBUILD available on the [AUR](https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=butter).
TL;DR:
- `cp butter /usr/bin/`
- `mkdir -p /usr/lib/butter/ && cp lib-btr/* /usr/lib/butter/`
- `butter.8` goes to wherever manpages go
- `LICENSE` goes to wherever licenses go
