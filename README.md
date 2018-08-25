*はてなブログで使用したvim_settingです*

    とても古いファイルです。設定、一部を使うのには向いています。


```
win32 = Vim + Windows向け

centos7 = NeoVim + CentOS7向け

win32 = NeoVim-qt + Windows向け
```

*フォルダ構成*

*win32*

```ruby

ファイルの指定先
$HOME/.vimrc  $HOME/.gvimrc

ディレクトリの指定先
~/.vim/rc/dein.toml  ~/.vim/rc/dein_lazy.toml

Rubyスクリプトを実行するとファイルなどが移動するよ
ruby install.rb

```

*centos7*

```ruby
ディレクトリの指定先
$HOME/.config/nvim

ファイルの指定先
~/.config/nvm/init.vim

~/.config/nvim/rc/dein.toml  ~/.config/nvm/rc/dein_lazy.toml

Rubyスクリプトを実行するとファイルなどが移動するよ
ruby install.rb

```

Windows neovim-qt

```ruby

init.vimのデフォルト
~/AppData/Local/nvim

rcフォルダやdeinの指定
~/.config/nvim

Rubyスクリプトを実行するとファイルなどが移動するよ
ruby install.rb

```

Windows + Vim8-kaoriya or Vim8  + Python3.5 or Python3.6

```txt

win_dein_neocomplete

win_dein_deoplete

$HOME .vim

$HOME .vimrc

$HOME .gvimrc

設置すると初期動作します。

好みに合ったプラグインに修正願います。

※ Rubyであれば、このままで充分です。

```

動作しなければ、

http://takkii.hatenablog.com

環境構築ブログ内で検索してみてください。

*created Takayuki Kamiyama.*
