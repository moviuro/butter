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
# ./butter set /,/home,/var snapshot.default.max 3
# ./butter snapshot /,/home,/var type foo       
# ./butter snapshot /,/home,/var type foo
# ./butter snapshot /,/home,/var type foo
# ./butter snapshot /,/home,/var type foo
# ./butter snaplist                      
MOUNTPOINT  TYPE  DATE                          UUID
/           foo   Fri Dec 18 23:54:37 CET 2015 0d2506b1-f4ba-48a4-b592-00bf50d20d42
/           foo   Fri Dec 18 23:54:40 CET 2015 56e3cb9e-b403-4e5e-903f-a4905c9120a1
/           foo   Fri Dec 18 23:54:43 CET 2015 3627ae90-cc61-4e93-9bf0-ae62670668e0
/home       foo   Fri Dec 18 23:54:38 CET 2015 0ef2f703-b89e-49ee-bc55-ee513effe446
/home       foo   Fri Dec 18 23:54:41 CET 2015 6e6ea37a-405f-4149-9bc0-874ed6a39dcf
/home       foo   Fri Dec 18 23:54:44 CET 2015 6cec5a9b-7cda-40b1-8e1d-6bf69af6e7be
/var        foo   Fri Dec 18 23:54:38 CET 2015 9d4bcd13-1ab9-4b7d-8821-5406a71ad2b7
/var        foo   Fri Dec 18 23:54:42 CET 2015 5de947e4-d134-4687-8d00-c495a8c608a6
/var        foo   Fri Dec 18 23:54:45 CET 2015 b97cbcee-2cef-4e90-bda8-c7956d0b1dba
# ./butter snapremove /,/var
# ./butter snaplist         
MOUNTPOINT  TYPE  DATE                          UUID
/           foo   Fri Dec 18 23:54:40 CET 2015 56e3cb9e-b403-4e5e-903f-a4905c9120a1
/           foo   Fri Dec 18 23:54:43 CET 2015 3627ae90-cc61-4e93-9bf0-ae62670668e0
/home       foo   Fri Dec 18 23:54:38 CET 2015 0ef2f703-b89e-49ee-bc55-ee513effe446
/home       foo   Fri Dec 18 23:54:41 CET 2015 6e6ea37a-405f-4149-9bc0-874ed6a39dcf
/home       foo   Fri Dec 18 23:54:44 CET 2015 6cec5a9b-7cda-40b1-8e1d-6bf69af6e7be
/var        foo   Fri Dec 18 23:54:42 CET 2015 5de947e4-d134-4687-8d00-c495a8c608a6
/var        foo   Fri Dec 18 23:54:45 CET 2015 b97cbcee-2cef-4e90-bda8-c7956d0b1db
```

## TODO
Lots of things, still
