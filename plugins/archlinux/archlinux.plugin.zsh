arch_sync() {
  sudo pacman -Sy
  (( $+commands[abs] )) && sudo abs
  (( $+commands[pkgfile] )) && sudo pkgfile --update
}

pkgfile() {
  saveIFS=$IFS; IFS=$'\n';
  pkgs=($(pacman -Ssq ^${1}$))
  IFS=$saveIFS

  echo Found $pkgs

  if [[ $#pkgs -eq 0 ]]; then
    echo "Grab from aur"
    cower -dd $1
  elif [[ $#pkgs -eq 1 ]]; then
    echo "Grab from abs"
    cp /var/abs/*/$1 . -r
  fi
}
