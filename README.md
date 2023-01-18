<h1 align=center> ~/.dotfiles </h1>

<p align=center> my configuration files </p>

## Install

```bash
git clone git@github.com:liuyuzhenn/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles && sudo sh ./install.sh
```

### Uninstall

```bash
cd ~/.dotfiles && sudo sh ./uninstall.sh
```

## Dependencies

### basic
```bash
yay neovim ranger i3-gaps i3lock-fancy tmux neofetch ripgrep fd fzf cmake node tree xclip dunst
```

### zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
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
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
```

### fcitx5

```bash
sudo pacman -S fcitx5-im fcitx5-chinese-addons fcitx5-pinyin-zhwiki fcitx5-nord
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
yay -S ttf-hack-nerd noto-fonts-emoji ttf-font-awesome adobe-source-sans-fonts
```

Chinese
```
yay -S wqy-bitmapfont wqy-microhei wqy-microhei-lite wqy-zenhei adobe-source-han-mono-cn-fonts adobe-source-han-sans-cn-fonts adobe-source-han-serif-cn-fonts
```
