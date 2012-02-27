# General Dotfiles
## Installation
`git clone git://github.com/zolrath/dotfiles.git ~/.dotfiles`

### Rake Tasks
When starting from scratch, to install oh-my-zsh, homebrew, and link the dotfiles run:

`cd ~/.dotfiles`

`rake dot:init`

You can do each step individually via:

`rake dot:zsh`

`rake dot:brew`

`rake dot:link`

### Secrets File
After pulling run

`git update-index --assume-unchanged secrets`

to ensure your real git/github information is not added to the repository.
Then modify the file to set up your git/github account information.
