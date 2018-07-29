require 'fileutils'

Dir.mkdir("~/.vim/rc", 0666) unless FileTest.exist?("~/.vim/rc")

FileUtils.mv(['.vimrc','.gvimrc'],'#{ENV[HOME]}')
FileUtils.mv(['rc/dein_lazy.toml','rc/dein.toml'],'~/.vim/rc')
