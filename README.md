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
$ ./butter list
MOUNTPOINT               UUID
/                        a442cf45-e979-4d43-b58c-503a0f62b3ee
/home                    1af0ca08-aad1-4808-8f30-b51741dd368a
/home/moviuro/Downloads  f86b9398-e38a-4a27-9f54-c18e81d19a7f
/home/moviuro/Music      115b343e-285c-49fe-bffb-95380cd61665
/home/moviuro/Videos     f1154b57-de91-404c-b8ac-983ea626c417
/var                     5e86af28-d1f0-4dca-a017-4ed4d860f51e
/var/log                 f90dd887-236a-4a79-9036-badd6c34b5e3

$ ./butter snaplist
MOUNTPOINT               TYPE  DATE                          UUID
/home/moviuro/Downloads  lulz  Thu Dec  3 21:45:54 CET 2015  c41505c0-8725-4c73-90f5-1f01fe578623
/home/moviuro/Downloads  lulz  Thu Dec  3 21:45:55 CET 2015  5372de08-9679-43fb-a318-23664e7aed62
/home/moviuro/Downloads  lulz  Thu Dec  3 21:45:57 CET 2015  90fa73e3-8695-4d1b-8a03-54acaab2289b
/home/moviuro/Downloads  lulz  Thu Dec  3 21:45:58 CET 2015  7cffa9e7-b205-47be-b63d-cc53b1fc415e
/home/moviuro/Downloads  lulz  Thu Dec  3 21:45:59 CET 2015  99af388b-b3c8-494c-b830-5c592187d2cf
/home/moviuro/Music      lulz  Thu Dec  3 21:45:39 CET 2015  3ef1597b-828e-43b2-987a-e7e7a9c655a7
/home/moviuro/Music      lulz  Thu Dec  3 21:45:40 CET 2015  0617407b-5546-443d-b135-93a125137240
/home/moviuro/Music      lulz  Thu Dec  3 21:45:41 CET 2015  ffea7f25-66d4-4553-b132-14f4b79a6641
/home/moviuro/Music      lulz  Thu Dec  3 21:45:42 CET 2015  7593bce3-54ca-4536-961f-e61f147233c5
/home/moviuro/Music      lulz  Thu Dec  3 21:45:44 CET 2015  af1f083b-ba62-49d9-8c40-102bf896c136
/var/log                 bar   Wed Dec  2 22:40:50 CET 2015  0c4af5c5-360e-4808-96e5-f84565d9a0c2
/var/log                 bar   Wed Dec  2 22:40:51 CET 2015  945b070f-038b-4ce9-8a09-a4e4a4db98c1
/var/log                 foo   Wed Dec  2 22:31:50 CET 2015  552f929e-9566-4c6b-9a51-ca869b869d7d
/var/log                 foo   Wed Dec  2 22:31:52 CET 2015  f6ffb3ba-80af-46b7-9c0e-79fa364198ef
/var/log                 foo   Wed Dec  2 22:31:56 CET 2015  1e489d3f-8431-4a68-9065-00e3e057032f
/var/log                 foo   Wed Dec  2 22:31:57 CET 2015  e41512bf-ac51-47f2-a830-6898ada27bb3
/var/log                 foo   Wed Dec  2 22:31:58 CET 2015  f272646f-d2e6-4a5a-a691-b966bfae6e5d
/var/log                 lulz  Thu Dec  3 21:17:19 CET 2015  1fee7d7b-1d8a-49bd-986b-97bbe5758cf6
/var/log                 lulz  Thu Dec  3 21:17:21 CET 2015  0316d172-a1e3-4cd6-ab59-6efbe38b7dc6
/var/log                 lulz  Thu Dec  3 21:17:27 CET 2015  cd71e2eb-1024-4242-92b0-0678cff46400
/var                     lulz  Thu Dec  3 20:50:20 CET 2015  4f7d2fb5-ea7e-4693-a914-201bea623e74
/var                     lulz  Thu Dec  3 20:50:23 CET 2015  55552952-11a8-4f03-9cb6-b5e5c465f008
/var                     lulz  Thu Dec  3 20:50:24 CET 2015  3bda7581-a544-43ab-81a9-231cff6ab7bd
/var                     lulz  Thu Dec  3 20:50:26 CET 2015  37d14f05-7c05-4e6f-95d2-ccd1cd5fd951
/var                     lulz  Thu Dec  3 20:53:29 CET 2015  3e78874a-b674-4ba7-a4a1-392a47132948

$ ./butter get /var/log snapshot.lulz.max snapshot.default.max
/var/log  snapshot.lulz.max     0
/var/log  snapshot.default.max  5
```

## TODO
Lots of things, still
