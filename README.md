# apw

Simple bash wrapper for ``apt`` and ``choco``

## Installing

```
$ wget https://raw.githubusercontent.com/cristianarbe/apw/master/apw -P ~/.local/bin
```

## Uninstalling

```
$ rm ~/.local/bin/apw
```

## What

Simple bash wrapper for apt and choco. Has three basic commands with a similar
syntax to ``apk``

```
$ apw add [PACKAGE]
$ apw del [PACKAGE]
$ apw info
$ apw upgrade
```

## Why

* Because typing "sudo" and "update" a million times is tiring.
* Because I want to use the same syntax on windows and on Debian.

## How

It is less than 100 lines of bash, [check it yourself](https://github.com/cristianarbe/apw/blob/master/apw).


## Contributing

Suggestions/improvements
[welcome](https://github.com/cristianarbe/apw/issues)!
