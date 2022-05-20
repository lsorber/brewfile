# ⚡️ Unboxing → developing

To get up and running with a new macOS device:

1. Install Command Line Tools for Xcode and Rosetta 2:
```bash
xcode-select --install
softwareupdate --install-rosetta
```
2. Install [Homebrew](https://brew.sh/):
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
3. Install my [Brewfile](Brewfile) with [Homebrew Bundle](https://github.com/Homebrew/homebrew-bundle):
```bash
brew bundle install --file=- < \
  <(curl --silent https://raw.githubusercontent.com/lsorber/brewfile/main/Brewfile)
```
4. Configure:
```bash
# Set up zsh plugins, direnv, pyenv, and starship.
cat << EOF >> ~/.zshrc
source $(brew --prefix)/share/antigen/antigen.zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search
antigen apply
eval "$(direnv hook zsh)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
eval "$(starship init zsh)"
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
EOF

# Set git's default branch name to main.
git config --global init.defaultBranch main

# Show hidden files in Finder.
defaults write com.apple.Finder AppleShowAllFiles true

# Use list view in Finder.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv
```
5. [Set an integer scaling factor for your display(s) in System Preferences](https://tonsky.me/blog/monitors/)
