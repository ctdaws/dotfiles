# Dotfiles managed using Nix

## Usage
- Install `nix` using the Determinate Systems installer
- Install `nix-darwin`
- Clone the repo to `~/.dotfiles` 
- Run the command `darwin-rebuild switch --flake ~/.dotfiles#personal`

## TODO
- fish integration
  - remove git branch id from theme
  - remove startup message
- manage rust declaritively
- nix shell script for skyline?
- fix eza build warning
- hx as $EDITOR
- remove/replace gitconfig 
- remove/replace zsh and p10k
- integrate with direnv

- fix all build warnings
- split config into sections (e.g. work specific, programming, general etc)
- fix three finger drag being reset on reload
- add section for future phd stuff
- consider sioyek config for keybinds
- update zellij to not have startup tips
