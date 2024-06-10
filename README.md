# Dotfiles

## Requirements

Ensure you have the following installed on your system. The examples are using yay as a packet manager.

### Git

```
yay git
```

### Stow

```
yay stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone git@github.com/tomiella/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```
