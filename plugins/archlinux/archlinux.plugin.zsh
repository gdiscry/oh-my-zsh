arch_sync() {
  pacman -Syy
  (( $+command[abs] )) abs
  (( $+command[pkgfile] )) pkgfile --update
}
