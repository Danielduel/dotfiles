mkdir -p tools

brew install zsh fzf powerlevel10k eza
brew install --cask font-dejavu-sans-mono-for-powerline
cargo install alacritty

curl -sSL https://raw.githubusercontent.com/alacritty/alacritty/master/extra/alacritty.info | tic -x -

PWD=$(pwd)
ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
ZSH_PLUGINS="$ZSH_CUSTOM/plugins"

mkdir -p $ZSH_PLUGINS

$(cd $ZSH_PLUGINS && git clone https://github.com/chrissicool/zsh-256color && cd $PWD)
$(cd $ZSH_PLUGINS && git clone https://github.com/zsh-users/zsh-autosuggestions && cd $PWD)
$(cd $ZSH_PLUGINS && git clone git@github.com:grigorii-zander/zsh-npm-scripts-autocomplete.git && cd $PWD)
$(cd $ZSH_PLUGINS && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git && cd $PWD)
