#!/bin/env sh

apt_update_cache() {
  (apt list --installed | sed 's/\/.*$//g') \
    >~/.cache/apw/installed
}

apt_add() { sudo apt update && sudo apt install; }

apt_search() { sudo apt update && apt search; }

apt_del() { apt purge "$@" && apt autoremove -y; }

apt_upgrade() { sudo apt update && sudo apt upgrade -y; }

apt_info() { apt list --installed; }
