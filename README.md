# .dotfiles
My `stow` directory containing my configuration files. `stow` version:
```
$ stow --version
stow (GNU Stow) version 2.3.1
```

## Commands
1) __Install all__ (create symlink)
```
$ ./map.sh | xargs -n2 bash -c 'stow -S -v --adopt --target="$0" "$1"'
```
2) __Update all__ (delete and create symlinks)
```
$ ./map.sh | xargs -n2 bash -c 'stow -R -v --adopt --target="$0" $1'
```
3) __Operation on a subset of packages__
```
$ ./map.sh zsh git | xargs ...
```

### Notes 

1) __--adopt__: Option `--adopt` is used to handle conflicts. Calling a `stow -S --adopt` multiple times is a safe operation (will have no effect if the symlink already exists)

2) __Simulation mode__: Use `stow -n` option to show what would happen after the execution without performing any operation. For example:
```
$ ./map.sh | xargs -n2 bash -c 'stow -S -nv --adopt --target="$0" "$1"'
MV: .gitconfig -> .dotfiles/git/.gitconfig
LINK: .gitconfig => .dotfiles/git/.gitconfig
WARNING: in simulation mode so not modifying filesystem.
```

3) __Future note__: Consider removing `map.sh` and just replicate the dir structure of each package from `$HOME` directory