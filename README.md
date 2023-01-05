<h1 align=center> ~/.dotfiles </h1>

<p align=center> my configuration files </p>

## Install

```bash
git clone git@github.com:liuyuzhenn/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles && sh ./install.sh
```

### Uninstall

```bash
cd ~/.dotfiles && sh ./uninstall.sh
```

## Dependencies

### basic
```bash
yay neovim ranger i3-gaps tmux neofetch ripgrep fd fzf cmake node tree
```

### neovim 

vim-plug
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

markdown-preview
```bash
cd ~/.local/share/nvim/plugged/markdown-preview.nvim/ && npm install
```


### tmux

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### fcitx5

```bash
sudo pacman -S fcitx5-im fcitx5-chinese-addons fcitx5-pinyin-zhwiki fcitx5-material-color
```

Add in `/etc/X11/xinit/xinitrc`:
```
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
```

### Fonts


Emoji
```
yay -S ttf-hack-nerd noto-fonts-emoji ttf-font-awesome
```

Chinese
```
yay -S wqy-bitmapfont wqy-microhei wqy-microhei-lite wqy-zenhei adobe-source-han-mono-cn-fonts adobe-source-han-sans-cn-fonts adobe-source-han-serif-cn-fonts
```
