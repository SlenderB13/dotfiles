# Dotfiles
Here are my important config files for:
* Neovim
* Tmux
* Alacritty
* Fish

# How to use it
1. Create a `.dotfiles` folder in your `~/`
2. `git clone` this repo to it.
3. Create a symlink poiting to the related file in the `.dotfiles` folder.

### Example:
```bash
# Configuring Neovim
ln -s ~/.config/nvim/ ~/.dotfiles/nvim/
# The neovim config folder is actually pointing to the dotfiles folder
```
