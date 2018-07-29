require 'fileutils'

Dir.mkdir("~/.config/nvim", 0666) unless FileTest.exist?("~/.config/nvim")
Dir.mkdir("~/.config/nvim/rc", 0666) unless FileTest.exist?("~/.config/nvim/rc")

FileUtils.mv('init.vim','~/AppData/Local/nvim')
FileUtils.mv(['rc/dein.toml','rc/dein_lazy.toml'],'~/.config/nvim/rc')

