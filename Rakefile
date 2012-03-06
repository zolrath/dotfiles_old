# Rakefile
#
# Simple tasks for managing my dot files and applications associated them.

FILES_TO_LINK = %w{ackrc gemrc gitconfig gitignore powconfig pryrc rspec secrets tmux.conf tmux_host tmuxinator zshenv zshrc}

namespace :dot do 

  desc 'Create symlinks'
  task :link do
    begin
      FILES_TO_LINK.each do |file|
        dot_file = File.expand_path("~/.#{file}")
        if File.exists? dot_file
          puts "#{dot_file} already exists, skipping link."
        else
          File.symlink(".dotfiles/#{file}", dot_file)
          puts "Created link for #{file} in your home folder."
        end
      end
    rescue NotImplementedError
      puts "File.symlink not supported, you must do it manually."
      if RUBY_PLATFORM.downcase =~ /(mingw|win)(32|64)/
        puts 'Windows 7 use mklink, e.g.'
        puts '  mklink _vimrc .vim\vimrc'
      end
    end
  end

  desc "Install oh-my-zsh"
  task :zsh do
    begin
      sh %{curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh}
      sh %{rm ~/.zshrc}
    rescue
      puts "Couldn't install oh-my-zsh. Are you connected to the internet?"
    end
  end
  
  desc "Install homebrew"
  task :brew do
    begin
      sh %{/usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)"}
    rescue
      puts "Couldn't install homebrew. Are you connected to the internet?"
    end
  end

  desc "Install ZSH, Homebrew, and symlink dotfiles"
  task :init => ["zsh","brew","link"] do
    puts "Installed Oh-My-ZSH, Homebrew and linked dotfiles!"
  end
end
