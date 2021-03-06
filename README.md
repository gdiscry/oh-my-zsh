"OH MY ZSHELL!"
===============

**NOTE**: This documentation isn't finished and this project is
currently under rapid development. Be cautious, information here may
not be up to date.

**NOTE**: This fork is specifically for Archlinux and has been patched
for a system-wide install; Don't attempt to install to ~/.oh-my-zsh!
This project had radically diverged away from its source. While
plugins should remain compatible, there is much which has changed.

Setup
-----

`oh-my-zsh` should work with any recent release of [zsh][], the
minimum recommended version is 4.3.9. A package can be found in
Archlinux's [AUR][oh-my-zsh-git]. We recommend using [cower] to
install it:

```
$ cower -dd oh-my-zsh-git
```

First set zsh as your shell.

```
$ chsh -s /bin/zsh
```

Then the following needs to be added to  `~/.zshrc` file to activate
oh-my-zshell goodness.

	autoload omz
	zstyle :omz:style theme arch-blue
	plugins=(archlinux sprunge git)
	omz init

A skeleton template can be found at
`/usr/share/oh-my-zsh/templates/user.zsh-template`

Here's some example configs:

- James' example: [example.zshrc][]

Customization
=============

- To enable more the plugins, customize the plugins array in your
  `~/.zshrc`
- To change themes, change the `:omz:style` zstyle in `~/.zshrc`.
- To use sub-plugins simply add plugin/sub-plugin; example, archlinux/cower

If you want to override any of the default behaviour, just add a new
file (ending in `.zsh`) into the `~/.omz/` directory. If you have many
functions which go good together you can put them as a *.plugin.zsh
file in the `~/.omz/plugins/` directory.

If you would like to override the functionality of a plugin
distributed with oh-my-zsh, create a plugin of the same name in the
`~/.omz/plugins/` directory and it will be loaded instead of the one
provided one.

Themes
======

To use your custom theme, cp/mv the theme to `~/.omz/themes/mytheme.zsh-theme`
then update your .zshrc file so it knows to use the theme with
`zstyle :omz:style theme mytheme`

Resources
---------

The [refcard][] is pretty tasty for tips.

  [zsh]: http://www.zsh.org/
  [oh-my-zsh-git]: https://aur.archlinux.org/packages.php?ID=54375
  [cower]: https://github.com/falconindy/cower
  [refcard]: http://www.bash2zsh.com/zsh_refcard/refcard.pdf
  [example.zshrc]: https://github.com/archeydevil/dotfiles/blob/master/zshrc
