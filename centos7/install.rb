require 'fileutils'

Dir.mkdir("~/.config/nvim", 0666) unless FileTest.exist?("~/.config/nvim")
Dir.mkdir("~/.config/nvim/rc", 0666) unless FileTest.exist?("~/.config/nvim/rc")

FileUtils.mv('init.vim','~/.config/nvim')
FileUtils.mv(['rc/dein_lazy.toml','rc/dein.toml'],'~/.config/nvim/rc')
