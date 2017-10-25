# blackarch-ruby

Complementary (totally unofficial) repository to blackarch, for yet un-merged changes / additions. For those out there who like toying with potentially broken packages...

Upstream doesn't seem to care too mucchc (see BlackArch/blackarch#1231), and over time the repo has grown to be more of a catch-all for everything that's broken in blackarch and/or things my team or I wanted to have as a package for Arch. So look around, feel free to use whatever :)

## Instructions

Import the repository key:

```
pacman-key --add repokey.asc
pacman-key --lsign-key repo@obsidian
```

Put the repo url above `[blackarch]`, like so:

```
[obsidian]
Server = https://github.com/lsfxz/blackarch-ruby/releases/download/20170901/

[blackarch]
Server = https://www.mirrorservice.org/sites/blackarch.org/blackarch/$repo/os/$arch
```
