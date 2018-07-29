*はてなブログで使用したvimの設定ファイルです*

>それぞれの環境で、指定先が代わり内容も変更しています。

```
win32 → Vim + Windows向け

centos7 → NeoVim + CentOS7向け

win32 → NeoVim-qt + Windows向け
```

*フォルダ構成*

*win32編 (vim-monster使用)*

```ruby

ファイルの指定先
$HOME/.vimrc  $HOME/.gvimrc

ディレクトリの指定先
~/.vim/rc/dein.toml  ~/.vim/rc/dein_lazy.toml

Rubyスクリプトを実行するとファイルなどが移動するよ
ruby install.rb

```

*centos7 (deoplete RSense使用)*

```ruby
ディレクトリの指定先
$HOME/.config/nvim

ファイルの指定先
~/.config/nvm/init.vim

~/.config/nvim/rc/dein.toml  ~/.config/nvm/rc/dein_lazy.toml

Rubyスクリプトを実行するとファイルなどが移動するよ
ruby install.rb

```

Windows neovim-qt (deoplete monster rcodetools使用)

```ruby

init.vimのデフォルト
~/AppData/Local/nvim

rcフォルダやdeinの指定
~/.config/nvim

Rubyスクリプトを実行するとファイルなどが移動するよ
ruby install.rb

```

*created Takayuki Kamiyama.*

***Vim設定ファイルは、MITライセンスです***
