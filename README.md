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
root@psychoticdelirium ~/butter (git)-[develop] # ./butter create /
snapshot.foo.max 2 snapshot.default.max 1
Create subvolume '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-'

root@psychoticdelirium ~/butter (git)-[develop] # ./butter get /
snapshot.foo.max snapshot.default.max uuid
MOUNTPOINT  PROP                  VALUE
/           snapshot.foo.max      2
/           snapshot.default.max  1
/           uuid                  faa80f6f-1fe9-4526-ac11-88ebfae3075d

root@psychoticdelirium ~/butter (git)-[develop] # ./butter snaplist 
MOUNTPOINT  TYPE  DATE  UUID

root@psychoticdelirium ~/butter (git)-[develop] # ./butter snapshot / type foo
Create a snapshot of '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-' in '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@9c64fc2a-c970-440d-9bc7-9a01f7cff695.tmp'
fooCreate a readonly snapshot of '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@9c64fc2a-c970-440d-9bc7-9a01f7cff695.tmp' in '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@9c64fc2a-c970-440d-9bc7-9a01f7cff695'
Delete subvolume (no-commit): '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@9c64fc2a-c970-440d-9bc7-9a01f7cff695.tmp'

root@psychoticdelirium ~/butter (git)-[develop] # ./butter snapshot / type foo
Create a snapshot of '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-' in '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@7608a99f-3233-4ac2-8dbb-970725f997f4.tmp'
fooCreate a readonly snapshot of '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@7608a99f-3233-4ac2-8dbb-970725f997f4.tmp'
in '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@7608a99f-3233-4ac2-8dbb-970725f997f4'
Delete subvolume (no-commit): '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@7608a99f-3233-4ac2-8dbb-970725f997f4.tmp'

root@psychoticdelirium ~/butter (git)-[develop] # ./butter snapshot / type foo
Create a snapshot of '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-' in '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@068aeddc-d6da-41ad-a5a1-457278e0f4d9.tmp'
fooCreate a readonly snapshot of '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@068aeddc-d6da-41ad-a5a1-457278e0f4d9.tmp' in '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@068aeddc-d6da-41ad-a5a1-457278e0f4d9'
Delete subvolume (no-commit): '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@068aeddc-d6da-41ad-a5a1-457278e0f4d9.tmp'
Delete subvolume (no-commit): '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@9c64fc2a-c970-440d-9bc7-9a01f7cff695'

root@psychoticdelirium ~/butter (git)-[develop] # ./butter snapshot / type foo
Create a snapshot of '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-' in '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@f8b0cbf0-edef-4bd2-b3d2-45051b99c225.tmp'
fooCreate a readonly snapshot of '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@f8b0cbf0-edef-4bd2-b3d2-45051b99c225.tmp' in '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@f8b0cbf0-edef-4bd2-b3d2-45051b99c225'
Delete subvolume (no-commit): '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@f8b0cbf0-edef-4bd2-b3d2-45051b99c225.tmp'
Delete subvolume (no-commit): '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@7608a99f-3233-4ac2-8dbb-970725f997f4'

root@psychoticdelirium ~/butter (git)-[develop] # ./butter snapshot / type foo
Create a snapshot of '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-' in '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@d8a6cd1f-f963-48e4-8e1c-1e040f449e50.tmp'
fooCreate a readonly snapshot of '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@d8a6cd1f-f963-48e4-8e1c-1e040f449e50.tmp' in '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@d8a6cd1f-f963-48e4-8e1c-1e040f449e50'
Delete subvolume (no-commit): '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@d8a6cd1f-f963-48e4-8e1c-1e040f449e50.tmp'
Delete subvolume (no-commit): '/mnt/butter/96ee4786d7b24914bd61e2a6aa52ae1f/-@068aeddc-d6da-41ad-a5a1-457278e0f4d9'

root@psychoticdelirium ~/butter (git)-[develop] # ./butter snaplist
MOUNTPOINT  TYPE  DATE                          UUID
/           foo   Fri Dec 11 23:05:33 CET 2015 f8b0cbf0-edef-4bd2-b3d2-45051b99c225
/           foo   Fri Dec 11 23:05:34 CET 2015 d8a6cd1f-f963-48e4-8e1c-1e040f449e50
```

## TODO
Lots of things, still
