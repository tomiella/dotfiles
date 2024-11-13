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


# DOTFILES
## Shell Setup
brew install zsh
chsh -s $(which zsh)

brew install --cask font-jetbrains-mono-nerd-font

curl -sS https://starship.rs/install.sh | sh
