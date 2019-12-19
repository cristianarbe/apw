#!/bin/env sh

choco_update_cache() {
  choco list -lo | grep -v 'packages installed' |
    cut -d ' ' -f 1 |
    tail -n +2 >~/.cache/apw/installed
}

choco_add() { choco install "$@" && choco_update_cache; }

choco_del() { choco uninstall "$@" && choco_update_cache; }

choco_upgrade() { choco upgrade all -y && choco_update_cache; }

choco_info() {
  test ! -f ~/.cache/apw/installed && update_cache
  cat ~/.cache/apw/installed
}
