# Butter
`butter` (until someone finds a better name) is/will be a `bash` utility to
manage btrfs subvolumes.

- Why bash?
*It is only targeted for Linux, so bash it is.*

- Why butter?
*Because ButterFS, I guess.*

- What does it do?
*Ah, good question Timmy.*

At the moment, `butter` does:
```sh
# ./butter set / snapshot.default.max 3
# ./butter snapshot / type foo comment "first!"
Create a snapshot of '/' in '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@ac01be59-3045-4e32-bb85-a75ccba80916.tmp'
fooCreate a readonly snapshot of '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@ac01be59-3045-4e32-bb85-a75ccba80916.tmp' in '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@ac01be59-3045-4e32-bb85-a75ccba80916'
Delete subvolume (no-commit): '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@ac01be59-3045-4e32-bb85-a75ccba80916.tmp'
# ./butter snapshot / type foo comment "second!"
Create a snapshot of '/' in '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@887e2ad8-d404-4552-b378-0cc066aa0d59.tmp'
fooCreate a readonly snapshot of '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@887e2ad8-d404-4552-b378-0cc066aa0d59.tmp' in '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@887e2ad8-d404-4552-b378-0cc066aa0d59'
Delete subvolume (no-commit): '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@887e2ad8-d404-4552-b378-0cc066aa0d59.tmp'
# ./butter snapshot / type foo comment "third!"
Create a snapshot of '/' in '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@d1f98120-1194-4a24-b8c4-f5607704a3c6.tmp'
fooCreate a readonly snapshot of '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@d1f98120-1194-4a24-b8c4-f5607704a3c6.tmp' in '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@d1f98120-1194-4a24-b8c4-f5607704a3c6'
Delete subvolume (no-commit): '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@d1f98120-1194-4a24-b8c4-f5607704a3c6.tmp'
# ./butter snapshot / type foo comment "fourth! (oops, first one gone)"
Create a snapshot of '/' in '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@9dabe8dc-2577-42dc-8e76-bfeef6908686.tmp'
fooCreate a readonly snapshot of '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@9dabe8dc-2577-42dc-8e76-bfeef6908686.tmp' in '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@9dabe8dc-2577-42dc-8e76-bfeef6908686'
Delete subvolume (no-commit): '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@9dabe8dc-2577-42dc-8e76-bfeef6908686.tmp'
Delete subvolume (no-commit): '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@ac01be59-3045-4e32-bb85-a75ccba80916'
# ./butter snaplist
MOUNTPOINT  TYPE  DATE                          UUID
/           foo   Thu Dec 17 22:29:59 CET 2015  887e2ad8-d404-4552-b378-0cc066aa0d59
/           foo   Thu Dec 17 22:30:04 CET 2015  d1f98120-1194-4a24-b8c4-f5607704a3c6
/           foo   Thu Dec 17 22:30:16 CET 2015  9dabe8dc-2577-42dc-8e76-bfeef6908686
```

## TODO
Lots of things, still
