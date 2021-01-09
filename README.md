<div align="center">
<img src="tiramisu.png">
<p><b>Deliciously fast Linux init</b></p>
<a href="LICENSE">
  <img src="https://img.shields.io/github/license/Dream-Imperium/tiramisu?color=ff69b4&style=for-the-badge">
</a><br>
<a href="https://travis-ci.org/Dream-Imperium/tiramisu">
  <img src="https://travis-ci.org/Dream-Imperium/tiramisu.svg?branch=master">
</a>
</div>

<i>"like what runit is to systemd"</i>
<i>"i don't know if that's something to be proud of or not"</i> - <b><i>some guy on irc</i></b>

# About

Tiramisu is an init system designed for speed.
It does nothing more than start and stop the system by default. There are three main "runlevels", `fs` which is called directly after the pseudo filesystems necessary for the system to run have been mounted, `interlude` which is ran before dropping the user into a tty, and `tty` which is what is responsible for actually starting said ttys.

## Installation

```
$ git clone https://github.com/Dream-Imperium/tiramisu
$ cd tiramisu
$ make
$ sudo make install
```

### Additional files

If your distribution has any files specific to it, they can be found in `dist`. Replace everything in `/usr/lib/tiramisu` with your distribution specific files for optimal usage with your distribution.

If they're not available, feel free to contribute or request them.

:)
