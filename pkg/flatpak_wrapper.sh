#!/bin/env sh

flatpak_update_cache() {
  (/bin/flatpak --user list) >~/.cache/apw/installed
}

flatpak_add() { flatpak --user install; }

flatpak_search() { flatpak --user search; }

flatpak_del() { flatpak --user uninstall; }

flatpak_upgrade() { flatpak --user update; }

flatpak_info() { flatpak --user list; }
